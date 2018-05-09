unit CustBillUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, AdvObj,
  AdvGrid, DBAdvGrid, RzButton, BaseGrid, Buttons, AdvUtil;

type
  TCustBillForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
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
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Label10: TLabel;
    Edit7: TEdit;
    Label12: TLabel;
    RzToolButton4: TRzToolButton;
    Edit8: TEdit;
    RzToolButton5: TRzToolButton;
    Label2: TLabel;
    Label6: TLabel;
    Edit9: TEdit;
    Label8: TLabel;
    Edit10: TEdit;
    SpeedButton1: TSpeedButton;
    RzToolButton6: TRzToolButton;
    RzToolButton7: TRzToolButton;
    procedure RzToolButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure DBAdvGrid1Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
  private
    procedure ClearEdit;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustBillForm: TCustBillForm;

implementation
uses DbUnit,SelKhUnit,MainUnit;
{$R *.dfm}
procedure TCustBillForm.ClearEdit;
var
 i:Integer;
begin

  Label1.Caption := '';
  for I := 2 to 10 do
  begin
      TEdit(FindComponent('Edit' + IntToStr(I))).Text := '';
  end;
  SpeedButton1.Enabled := False;
  RzToolButton3.Enabled := False;
  RzToolButton5.Enabled := False;
end;

procedure TCustBillForm.DBAdvGrid1Click(Sender: TObject);
begin
  if Data1.UniBill.IsEmpty then  Exit;
  Label1.Caption := '编辑';
  Edit2.Text := Data1.UniBill.FieldByName('公司名称').AsString;
  Edit3.Text := Data1.UniBill.FieldByName('税号').AsString;
  Edit4.Text := Data1.UniBill.FieldByName('开户行').AsString;
  Edit5.Text := Data1.UniBill.FieldByName('帐号').AsString;
  Edit6.Text := Data1.UniBill.FieldByName('联系人').AsString;
  Edit7.Text := Data1.UniBill.FieldByName('电话').AsString;
  Edit8.Text := Data1.UniBill.FieldByName('地址').AsString;
  Edit9.Text := Data1.UniBill.FieldByName('客户编号').AsString;
  Edit10.Text := Data1.UniBill.FieldByName('客户姓名').AsString;
  RzToolButton3.Enabled := True;
  RzToolButton5.Enabled := True;
  SpeedButton1.Enabled := False;
end;

procedure TCustBillForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False,20); //根据内容调节列宽
end;

procedure TCustBillForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.UniBill.Close;
end;

procedure TCustBillForm.FormShow(Sender: TObject);
begin
  ClearEdit;
  Data1.UniBill.sql.Text :='SELECT barcode 客户编号,namec 客户姓名,gsname 公司名称,snumber 税号,bank 开户行,anumber 帐号,linkman 联系人,tel 电话,address 地址,cdate 操作日期 FROM tbcustomer_bill where CDate>='''+FormatDateTime('yyyy-mm-dd',Now)+'''';
end;


procedure TCustBillForm.RzToolButton1Click(Sender: TObject);
var
  sqlstr:string;
begin
   if Edit1.Text='' then Exit;
   sqlstr := ' where barcode like ''%'+Edit1.text+'%'' or namec like ''%'+Edit1.text+'%'' or tel like ''%'+Edit1.text+'%'' ';
   with Data1.UniBill do
   begin
     Close;
     sql.Text :='SELECT barcode 客户编号,namec 客户姓名,gsname 公司名称,snumber 税号,bank 开户行,anumber 帐号,linkman 联系人,tel 电话,address 地址,cdate 操作日期 FROM tbcustomer_bill '+sqlstr;
     Open;
   end;
   ClearEdit;
end;

procedure TCustBillForm.RzToolButton2Click(Sender: TObject);
begin
  ClearEdit;
  Label1.Caption := '新增';
  RzToolButton3.Enabled := True;
  SpeedButton1.Enabled := True;
end;

procedure TCustBillForm.RzToolButton3Click(Sender: TObject);
var
  sqlstr:string;
begin
  if (Label1.Caption <>'新增') and (Label1.Caption <>'编辑') then  Exit;
  if (Edit9.Text='') or (Edit10.Text='') then
  begin
    ShowMessage('请选择客户');
    Exit;
  end;
  if Edit3.Text='' then
  begin
    ShowMessage('请输入税号');
    Exit;
  end;
  if Edit2.Text='' then
  begin
    ShowMessage('请输入公司名称');
    Exit;
  end;
  if Label1.Caption ='新增' then
  begin
    Data1.work.Close;
    Data1.work.sql.Text :='select id from tbcustomer_bill where barcode='''+edit9.Text+''' ';
    Data1.work.Open;
    if not Data1.work.IsEmpty then
    begin
      ShowMessage('已存在该客户的开发票信息');
      Exit;
    end;
  end;
  if Label1.Caption ='新增' then
  begin
    sqlstr :='insert into tbcustomer_bill (barcode,namec,gsname,snumber,bank,anumber,linkman,tel,address,cdate) values ('''+Edit9.Text+''','''+Edit10.Text+''', '+
    ' '''+Edit2.Text+''','''+Edit3.Text+''','''+Edit4.Text+''','''+Edit5.Text+''','''+Edit6.Text+''','''+Edit7.Text+''','''+Edit8.Text+''',GETDATE())';
  end
  else sqlstr := 'update tbcustomer_bill set gsname='''+Edit2.Text+''',snumber='''+Edit3.Text+''',bank='''+Edit4.Text+''',anumber='''+Edit5.Text+''',linkman='''+Edit6.Text+''',tel='''+Edit7.Text+''',address='''+Edit8.Text+''',cdate=GETDATE() where barcode='''+Edit9.Text+''' ';
  try
    Data1.work.Close;
    Data1.work.sql.Text :=sqlstr;
    Data1.work.ExecSQL;
    Data1.work.Close;
    sqlstr := '客户编号：'+edit9.Text;
    Data1.WriteLog('新增/编辑发票管理',sqlstr,UsName); //写日志
    ShowMessage('操作成功');
    ClearEdit;
    Data1.UniBill.Close;
    Data1.UniBill.Open;
  except
    on E:Exception do
    begin
      ShowMessage('失败:'+e.Message);
    end;
  end;

end;

procedure TCustBillForm.RzToolButton4Click(Sender: TObject);
begin
  close;
end;

procedure TCustBillForm.RzToolButton5Click(Sender: TObject);
begin
  if (Label1.Caption <>'编辑') then  Exit;
  if (IDYES = Application.MessageBox('是否删除该条信息？', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
  begin
    try
      Data1.work.Close;
      Data1.work.sql.Text :='delete from tbcustomer_bill where barcode='''+Edit9.Text+''' ';
      Data1.work.ExecSQL;
      Data1.work.Close;
      Data1.WriteLog('删除发票管理','客户编号：'+edit9.Text,UsName); //写日志
      ShowMessage('删除成功');
      ClearEdit;
      Data1.UniBill.Close;
      Data1.UniBill.Open;
    except
      on E:Exception do
      begin
        ShowMessage('删除失败:'+e.Message);
      end;
    end;
  end
end;

procedure TCustBillForm.RzToolButton6Click(Sender: TObject);
begin
   with Data1.UniBill do
   begin
     Close;
     sql.Text :='SELECT barcode 客户编号,namec 客户姓名,gsname 公司名称,snumber 税号,bank 开户行,anumber 帐号,linkman 联系人,tel 电话,address 地址,cdate 操作日期 FROM tbcustomer_bill ';
     Open;
   end;
   ClearEdit;
end;

procedure TCustBillForm.RzToolButton7Click(Sender: TObject);
begin
   if Data1.UniBill.IsEmpty then Exit;
   Data1.AdvGridExcelIO1.AdvStringGrid:=DBAdvGrid1;
   if Data1.savedialog1.Execute then
   begin
     if  pos('.', Data1.savedialog1.FileName)>0 then  Data1.AdvGridExcelIO1.XLSExport(Data1.savedialog1.FileName)
     else   Data1.AdvGridExcelIO1.XLSExport(Data1.savedialog1.FileName+'.xls');
   end;
end;

procedure TCustBillForm.SpeedButton1Click(Sender: TObject);
begin
  SelKhForm.seltype :=2;
  SelKhForm.ShowModal;
end;

end.
