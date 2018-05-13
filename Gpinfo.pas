unit Gpinfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ComCtrls, RzButton, ExtCtrls;

type
  TGpinfoForm = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    RzToolButton1: TRzToolButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    RzToolButton2: TRzToolButton;
    Label1: TLabel;
    Edit1: TEdit;
    ListView1: TListView;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure select(stype:Boolean);
  public
    { Public declarations }
  end;

var
  GpinfoForm: TGpinfoForm;

implementation
uses DbUnit,uDBJson;
{$R *.dfm}

procedure TGpinfoForm.DBAdvGrid2DblClick(Sender: TObject);
begin
  if Data1.ss1.IsEmpty then Exit;
  if Data1.ss1.FieldByName('��ƿλ��').AsString='�ͻ�' then
  begin
    with data1.ds71 do
    begin
      Close;
      SQL.Text := 'select a.khbh as �ͻ����,b.Namec as �ͻ�����,b.tel as �ͻ��绰,a.gptm as ��ƿ���,b.Address as �ͻ���ַ '+
      ' from tb_khgp a left join tbCustomer_Info b on a.khbh=b.BarCode ';
      Open;
      ShowMessage(IntToStr(RecordCount));
    end;
  end;

end;

procedure TGpinfoForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then  key:=#0;
end;

procedure TGpinfoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.ss1.Close;
  Data1.ds71.Close;
end;

procedure TGpinfoForm.FormCreate(Sender: TObject);
begin
  webbrowser1.Navigate(ExtractFilePath(application.ExeName)+'Html/gpinfo.html');
  DateTimePicker1.Date := Now;
  DateTimePicker3.Date := Now;
  with listview1 do
  begin
     Items.Clear;
     Columns.Add;
     Columns.Add;
     ViewStyle:=vsreport;
     GridLines:=true;
     columns.items[0].caption:='��ƿλ��';
     columns.items[1].caption:='��ƿ����';
     Columns.Items[0].Width:= 300;
     Columns.Items[1].Width:=300;
  end;
end;

procedure TGpinfoForm.FormResize(Sender: TObject);
begin
  if ListView1.Visible then
  begin
    listview1.Columns.Items[0].Width := ListView1.Width div 2 -20;
    listview1.Columns.Items[1].Width := ListView1.Width div 2 -20;
  end;
end;

procedure TGpinfoForm.RzToolButton1Click(Sender: TObject);
begin
   select(True);
end;

procedure TGpinfoForm.RzToolButton2Click(Sender: TObject);
begin
  select(False);
end;

procedure TGpinfoForm.select(stype: Boolean);
var
  str,wherestr :string;
  Titem:Tlistitem;       //�˴�һ��ҪԤ������ʱ��¼�洢����.
begin
  WebBrowser1.SetFocus ;
  WebBrowser1.OleObject.document.parentWindow.execScript('clearAll()','JavaScript'); //������и�����
  if stype then
  begin
    wherestr :=' and b.cdate>='''+DateTimeToStr(DateTimePicker1.DateTime)+''' and b.cdate<='''+DateTimeToStr(DateTimePicker3.DateTime)+''' ';
    if Edit1.Text<>'' then   wherestr := wherestr +' and datediff( dd, b.cdate, GETDATE())>='''+Edit1.Text+''' ';
  end
  else wherestr :='';
  with Data1.sds1 do
  begin
    close;
    SQL.Text:='SELECT b.gptm as gptm,REPLACE(REPLACE(REPLACE(a.Namec,CHAR(9),''''),CHAR(10),''''),CHAR(13),'''') as namec,wd=cast(left(a.Fdw,charindex('','',a.Fdw+'','')-1) as nvarchar(100)),jd = CAST(STUFF(a.Fdw, 1, CHARINDEX('','', a.Fdw), '''') AS NVARCHAR(100)), '+
      ' b.cuser as cuser,datediff( dd, b.cdate, GETDATE()) as sl FROM tb_khgp b left join tbCustomer_Info a on b.khbh=a.BarCode where a.Fdw<>'''' '+wherestr;
    Open;
    if not IsEmpty then
    begin
      str :=  JSonFromDataSet(data1.sds1);
      Label4.Caption := '����'+inttostr(RecordCount)+'������';
      WebBrowser1.OleObject.document.parentWindow.execScript('doLocate('''+str+''')','JavaScript'); //���ظ��������

      if CheckBox1.Checked then
      begin
        close;
        SQL.Text := 'Select case when a.type=0 then ''δ���'' when a.type=1 then ''��վ'' when a.type=2 then ''�ŵ�'' when a.type=3 then ''�ͻ�'' when a.type=4 then ''��;''  when a.type=9 then ''������'' else ''�ͼ�'' end as ��ƿλ��,count(*) as ��ƿ���� from tbBottle_Dossier a group by a.type';
        Open;
        if not IsEmpty then
        begin
          ListView1.Items.Clear;
          ListView1.Visible := True;
          while not eof do
          begin
            Titem:=ListView1.Items.add;
            Titem.Caption :=FieldByName('��ƿλ��').Value;
            Titem.SubItems.Add(FieldByName('��ƿ����').Value);
            next;
          end;
        end;
      end
      else ListView1.Visible := False;
    end
    else Label4.Caption := '����0������';
    close;
  end;
end;

end.
