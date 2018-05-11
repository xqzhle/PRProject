unit khgpUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, StdCtrls, ComCtrls,
  RzButton, ExtCtrls, AdvUtil;

type
  TkhgpForm = class(TForm)
    Panel1: TPanel;
    RzToolButton1: TRzToolButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzToolButton2: TRzToolButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    StatusBar1: TStatusBar;
    RzToolButton3: TRzToolButton;
    sSaveDialog1: TSaveDialog;
    DBAdvGrid2: TDBAdvGrid;
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBAdvGrid2Resize(Sender: TObject);
  private
    { Private declarations }
    procedure select(stype:Boolean);
  public
    { Public declarations }
  end;

var
  khgpForm: TkhgpForm;

implementation
uses DbUnit;
{$R *.dfm}

{ TkhgpForm }

procedure TkhgpForm.DBAdvGrid2Resize(Sender: TObject);
begin
  DBAdvGrid2.AutoSizeColumns(False,20); //�������ݵ����п�
end;

procedure TkhgpForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.ss1.Close;
end;

procedure TkhgpForm.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := Now;
  DateTimePicker3.Date := Now;
end;

procedure TkhgpForm.RzToolButton1Click(Sender: TObject);
begin
  select(True);
end;

procedure TkhgpForm.RzToolButton2Click(Sender: TObject);
begin
  select(False);
end;

procedure TkhgpForm.RzToolButton3Click(Sender: TObject);
begin
  if Data1.ss1.IsEmpty then  Exit;
  if sSaveDialog1.Execute then
  begin
    try
      if pos('.', ssavedialog1.FileName) > 0 then
        dbadvgrid2.SaveToXLS(ssavedialog1.FileName)
      else
        dbadvgrid2.SaveToXLS(ssavedialog1.FileName + '.xls');
      ShowMessage('�����ɹ���');
    except
      ShowMessage('����ʧ�ܣ�');
    end;
  end;
end;

procedure TkhgpForm.select(stype: Boolean);
var
  wherestr,sstr:string;
begin
  sstr := 'count(a.id) as ��ʷѺƿ����,';
  if stype then
  begin
    wherestr :=' where a.cdate>='''+DateToStr(DateTimePicker1.Date)+''' and a.cdate<='''+DateTimeToStr(DateTimePicker3.DateTime)+''' ';
    sstr := 'count(a.id) as ����Ѻƿ����,';
  end;
  with Data1.ss1 do
  begin
    close;
    SQL.Text := 'select khbh as �ͻ����,b.Namec as �ͻ�����,b.tel as �ͻ��绰,'+sstr+'cast((select gptm+'' '' from tb_khgp where khbh=a.khbh for xml path('''')) as varchar(255)) as �ͻ�ƿ��,b.Address as �ͻ���ַ '+
    ' from tb_khgp a left join tbCustomer_Info b on a.khbh=b.BarCode '+wherestr+' group by khbh,b.Address,b.namec,b.tel ';
    Open;
    if not IsEmpty then
    begin
      Data1.sds1.Close;
      Data1.sds1.SQL.Text := 'select count(a.id) as id from tb_khgp a '+wherestr;
      Data1.sds1.Open;
      StatusBar1.Panels[1].Text := '����'+inttostr(Data1.ss1.RecordCount)+'������';
      StatusBar1.Panels[3].Text := '����'+Data1.sds1.FieldByName('id').AsString+'������';
    end
    else
    begin
      StatusBar1.Panels[1].Text := '����0������';
      StatusBar1.Panels[3].Text := '����0������';
    end;
  end;
end;

end.
