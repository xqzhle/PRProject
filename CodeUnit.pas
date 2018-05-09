unit CodeUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, AdvObj,
  AdvGrid, DBAdvGrid, RzButton, BaseGrid, AdvUtil;

type
  TCodeForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    DBAdvGrid1: TDBAdvGrid;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    Panel2: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Label10: TLabel;
    Edit7: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    RzToolButton4: TRzToolButton;
    Memo1: TMemo;
    ComboBox2: TComboBox;
    Label13: TLabel;
    Edit8: TEdit;
    RzToolButton5: TRzToolButton;
    procedure RzToolButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure DBAdvGrid1Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function Getrand:string;
    procedure ClearEdit;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CodeForm: TCodeForm;

implementation
uses DbUnit,MainUnit;
{$R *.dfm}

procedure TCodeForm.ClearEdit;
begin
  Label1.Caption := '';
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Memo1.Clear;
  ComboBox1.ItemIndex := -1;
  RzToolButton3.Enabled := False;
  RzToolButton5.Enabled := False;
end;

procedure TCodeForm.DBAdvGrid1Click(Sender: TObject);
begin
  if Data1.Code.IsEmpty then  Exit;
  Label1.Caption := '编辑授权码';
  Edit1.Text := Data1.Code.FieldByName('cdate').AsString;
  Edit2.Text := Data1.Code.FieldByName('edate').AsString;
  Edit3.Text := Data1.Code.FieldByName('code').AsString;
  Edit4.Text := Data1.Code.FieldByName('cuser').AsString;
  Edit5.Text := Data1.Code.FieldByName('username').AsString;
  Edit6.Text := Data1.Code.FieldByName('userdate').AsString;
  Edit7.Text := Data1.Code.FieldByName('state').AsString;
  Edit8.Text := Data1.Code.FieldByName('id').AsString;
  Memo1.Text := Data1.Code.FieldByName('memo').AsString;
  ComboBox1.ItemIndex := StrToInt(Data1.Code.FieldByName('type').AsString);
  RzToolButton3.Enabled := True;
  RzToolButton5.Enabled := True;
end;

procedure TCodeForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False,20); //根据内容调节列宽
end;

procedure TCodeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.Code.Close;
end;

procedure TCodeForm.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Now-7;
  DateTimePicker2.Date := Now;
  ComboBox1.ItemIndex := -1;
  ClearEdit;
  with Data1.Code do
  begin
    Close;  //id,code,type,cuser,cdate,edate,userdate,username,memo,state
    sql.Text :='Select *,case when type=0 then ''下单授权'' else ''价格授权'' end as stype from tbCode where cdate>'''+datetimetostr(DateTimePicker1.DateTime)+''' ';
    Open;
  end;
end;

function TCodeForm.Getrand: string;
var
    SourceStr,str:string;
    i:integer;
begin
//   SourceStr:='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
   SourceStr:='abcdefghijklmnopqrstuvwxyz';
   randomize;
   for i:=1 to 2 do
      str:=str+sourcestr[Random(26)+1];
   Result := IntToStr(Random(10))+IntToStr(Random(10))+IntToStr(Random(10))+IntToStr(Random(10))+str;
end;

procedure TCodeForm.RzToolButton1Click(Sender: TObject);
var
  sqlstr:string;
begin
   if (ComboBox2.ItemIndex =-1) or (ComboBox2.ItemIndex =0) then  sqlstr :=''
   else sqlstr := ' and type='''+Inttostr(ComboBox2.ItemIndex)+'''';
   with Data1.Code do
   begin
     Close;
     sql.Text :='Select *,case when type=0 then ''下单授权'' else ''价格授权'' end as stype from tbCode where cdate>'''+datetimetostr(DateTimePicker1.DateTime)+''' and cdate<='''+datetimetostr(DateTimePicker2.DateTime)+''' '+sqlstr;
     Open;
   end;
   ClearEdit;
end;

procedure TCodeForm.RzToolButton2Click(Sender: TObject);
begin

  Label1.Caption := '新增授权码';
  Edit1.Text :=FormatDateTime('yyyy-mm-dd HH:mm:ss' ,Now);
  Edit2.Text :=FormatDateTime('yyyy-mm-dd' ,Now+365);
  Edit3.Text := Getrand;
  Edit4.Text := 'user';
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Memo1.Clear;
  ComboBox1.ItemIndex := -1;
  RzToolButton3.Enabled := True;
  RzToolButton5.Enabled := False;
end;

procedure TCodeForm.RzToolButton3Click(Sender: TObject);
var
  sqlstr:string;
  date1:TDateTime;
begin
  if (Label1.Caption <>'新增授权码') and (Label1.Caption <>'编辑授权码') then  Exit;
  if Edit2.Text='' then
  begin
    ShowMessage('请输入过期日期');
    Exit;
  end;
  if Edit3.Text='' then
  begin
    ShowMessage('请输入授权号码');
    Exit;
  end;
  if ComboBox1.ItemIndex=-1 then
  begin
    ShowMessage('请选择使用目的');
    Exit;
  end;
  if Edit2.Text='' then
  begin
    ShowMessage('请输入采购日期');
    Exit;
  end;
  if not TryStrToDate(Edit2.Text,date1) then
  begin
    ShowMessage('请输入有效日期');
    Exit;
  end;
  if Label1.Caption ='新增授权码' then sqlstr :='insert into tbCode (code,type,cuser,cdate,edate,state) values ('''+Edit3.Text+''','''+Inttostr(ComboBox1.ItemIndex)+''','''+Edit4.Text+''','''+Edit1.Text+''','''+Edit2.Text+''',''0'')'
  else sqlstr := 'update tbCode set edate='''+Edit2.Text+''',memo='''+Memo1.Text+''',code='''+Edit3.Text+''',type='''+Inttostr(ComboBox1.ItemIndex)+''',cuser='''+Edit4.Text+''' where id='''+Edit8.Text+''' ';
  try
    Data1.work.Close;
    Data1.work.sql.Text :=sqlstr;
    Data1.work.ExecSQL;
    Data1.work.Close;
    sqlstr := '授权码：'+edit3.Text+'  使用目的:'+Combobox1.Text;
    Data1.WriteLog('新增/编辑授权码',sqlstr,UsName); //写日志
    ShowMessage('操作成功');
    ClearEdit;
    Data1.Code.Close;
    Data1.Code.Open;
  except
    on E:Exception do
    begin
      ShowMessage('失败:'+e.Message);
    end;
  end;

end;

procedure TCodeForm.RzToolButton4Click(Sender: TObject);
begin
  close;
end;

procedure TCodeForm.RzToolButton5Click(Sender: TObject);
begin
  if (Label1.Caption <>'编辑授权码') then  Exit;
  if (IDYES = Application.MessageBox('是否删除该条信息？', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
  begin
    try
      Data1.work.Close;
      Data1.work.sql.Text :='delete from tbCode where id='''+Edit8.Text+''' ';
      Data1.work.ExecSQL;
      Data1.work.Close;
      Data1.WriteLog('删除授权码','授权码：'+edit3.Text,UsName); //写日志
      ShowMessage('删除成功');
      ClearEdit;
      Data1.Code.Close;
      Data1.Code.Open;
    except
      on E:Exception do
      begin
        ShowMessage('删除失败:'+e.Message);
      end;
    end;
  end
end;

end.
