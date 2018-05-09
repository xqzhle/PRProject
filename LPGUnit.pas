unit LPGUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RzButton, StdCtrls, ExtCtrls, Grids, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, AdvUtil;

type
  TLPGForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    RzToolButton1: TRzToolButton;
    Label12: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBAdvGrid1: TDBAdvGrid;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    RzToolButton3: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox2: TComboBox;
    Label13: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    Label11: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Exit(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure DBAdvGrid1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ClearEdit;
  public
    { Public declarations }
  end;

var
  LPGForm: TLPGForm;

implementation
uses DbUnit;
{$R *.dfm}

procedure TLPGForm.DBAdvGrid1Click(Sender: TObject);
begin
  if Data1.UniLGP.IsEmpty then Exit;
  Label1.Caption := '编辑采购';
  Edit1.Text := Data1.UniLGP.FieldByName('车牌号').AsString;
  Edit2.Text := Data1.UniLGP.FieldByName('单价').AsString;
  Edit3.Text := Data1.UniLGP.FieldByName('采购金额').AsString;
  Edit4.Text := Data1.UniLGP.FieldByName('采购日期').AsString;
  Edit5.Text := Data1.UniLGP.FieldByName('驾驶员').AsString;
  Edit6.Text := Data1.UniLGP.FieldByName('采购数量').AsString;
  Edit7.Text := Data1.UniLGP.FieldByName('操作人').AsString;
  Edit8.Text := Data1.UniLGP.FieldByName('备注').AsString;
  Edit9.Text := Data1.UniLGP.FieldByName('ID').AsString;
  ComboBox1.Text := Data1.UniLGP.FieldByName('气站名称').AsString;
  ComboBox2.Text := Data1.UniLGP.FieldByName('供应商').AsString;
  RzToolButton3.Enabled := True;
  RzToolButton5.Enabled := True;
end;

procedure TLPGForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False,10); //根据内容调节列宽
end;

procedure TLPGForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9','.',#8,#13]) then   Key:=#0;
end;

procedure TLPGForm.Edit6Exit(Sender: TObject);
begin
   if (Edit2.Text<>'') and (Edit2.Text<>'0') and (Edit6.Text<>'') and (Edit6.Text<>'0') then
   begin
     Edit3.Text:=FloatToStr(StrToFloat(Edit2.Text)*StrToFloat(Edit6.Text));
   end;
end;

procedure TLPGForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.UniLGP.Close;
end;

procedure TLPGForm.FormShow(Sender: TObject);
begin
  ClearEdit;
  DateTimePicker1.Date := now-7;
  DateTimePicker2.Date := now;
  with Data1.UniLGP do
  begin
    Close;
    sql.Text := 'SELECT id ID,gasname as 气站名称,buyname 供应商,car 车牌号,carname 驾驶员,dj 单价,sl 采购数量, '+
    ' money 采购金额,buydate 采购日期,memo 备注,cuser 操作人,cdate 操作日期 FROM tbLpgBuy where buydate>'''+datetimetostr(DateTimePicker1.DateTime)+'''';
    Open;
  end;
end;

procedure TLPGForm.ClearEdit;
var
 i:Integer;
begin
  for I := 1 to 9 do
  begin
    TEdit(FindComponent('Edit' + IntToStr(I))).Text := '';
  end;
  Label1.Caption := '';
  ComboBox1.Text := '';
  ComboBox2.Text := '';
  RzToolButton3.Enabled := False;
  RzToolButton5.Enabled := False;
end;

procedure TLPGForm.RzToolButton1Click(Sender: TObject);
begin
  with Data1.UniLGP do
  begin
    Close;
    sql.Text := 'SELECT id ID,gasname as 气站名称,buyname 供应商,car 车牌号,carname 驾驶员,dj 单价,sl 采购数量, '+
    ' money 采购金额,buydate 采购日期,memo 备注,cuser 操作人,cdate 操作日期 FROM tbLpgBuy where buydate>'''+datetimetostr(DateTimePicker1.DateTime)+''' and cdate<='''+datetimetostr(DateTimePicker2.DateTime)+'''';
    Open;
  end;
  ClearEdit;
end;

procedure TLPGForm.RzToolButton2Click(Sender: TObject);
begin
  ClearEdit;
  Label1.Caption := '新增采购';
  Edit4.Text :=FormatDateTime('yyyy-mm-dd HH:mm:ss' ,Now);
  RzToolButton3.Enabled := True;
end;

procedure TLPGForm.RzToolButton3Click(Sender: TObject);
var
  sqlstr:string;
  date1:TDateTime;
begin
  if (Label1.Caption <>'新增采购') and (Label1.Caption <>'编辑采购') then  Exit;
  if (Edit2.Text='') or (Edit3.Text='') or (Edit6.Text='') then
  begin
    ShowMessage('请输入单价、数量、金额');
    Exit;
  end;
  if (Edit1.Text='') or (Edit5.Text='') then
  begin
    ShowMessage('请输入驾驶员、车牌号');
    Exit;
  end;
  if Edit4.Text='' then
  begin
    ShowMessage('请输入采购日期');
    Exit;
  end;
  if not TryStrToDateTime(Edit4.Text,date1) then
  begin
    ShowMessage('请输入有效日期');
    Exit;
  end;
  if (Label1.Caption ='新增采购') then
  begin
    sqlstr :='insert into tbLpgBuy (car,carname,dj,sl,money,gasname,buyname,memo,cuser,buydate,cdate) values ('''+Edit1.Text+''','+
    ' '''+Edit5.Text+''','''+Edit2.Text+''','''+Edit6.Text+''','''+Edit3.Text+''','''+ComboBox1.Text+''','''+ComboBox2.Text+''', '+
    ' '''+Edit8.Text+''','''+Edit7.Text+''','''+Edit4.Text+''',GETDATE())';
  end
  else
  begin
    sqlstr := 'update tbLpgBuy set car='''+Edit1.Text+''',carname='''+Edit5.Text+''',dj='''+Edit2.Text+''', '+
    ' sl='''+Edit6.Text+''',money='''+Edit3.Text+''',gasname='''+ComboBox1.Text+''',buyname='''+ComboBox2.Text+''', '+
    ' memo='''+Edit8.Text+''',cuser='''+Edit7.Text+''',buydate='''+Edit4.Text+''',cdate=GETDATE() where id='''+Edit9.Text+''' ';
  end;
  try
    Data1.work.Close;
    Data1.work.sql.Text :=sqlstr;
    Data1.work.ExecSQL;
    Data1.work.Close;
    ShowMessage('操作成功');
    ClearEdit;
    Data1.UniLGP.Close;
    Data1.UniLGP.Open;

  except
    on E:Exception do
    begin
      ShowMessage('失败:'+e.Message);
    end;
  end;

end;

procedure TLPGForm.RzToolButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TLPGForm.RzToolButton5Click(Sender: TObject);
begin
  if (Label1.Caption <>'编辑采购') and (Edit9.Text <>'') then  Exit;
  if (IDYES = Application.MessageBox('是否删除该条信息？', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
  begin
    try
      Data1.work.Close;
      Data1.work.sql.Text :='delete from tbLpgBuy where id='''+Edit9.Text+''' ';
      Data1.work.ExecSQL;
      Data1.work.Close;
      ShowMessage('删除成功');
      ClearEdit;
      Data1.UniLGP.Close;
      Data1.UniLGP.Open;
    except
      on E:Exception do
      begin
        ShowMessage('删除失败:'+e.Message);
      end;
    end;
  end;
end;

end.
