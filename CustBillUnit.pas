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
  Label1.Caption := '�༭';
  Edit2.Text := Data1.UniBill.FieldByName('��˾����').AsString;
  Edit3.Text := Data1.UniBill.FieldByName('˰��').AsString;
  Edit4.Text := Data1.UniBill.FieldByName('������').AsString;
  Edit5.Text := Data1.UniBill.FieldByName('�ʺ�').AsString;
  Edit6.Text := Data1.UniBill.FieldByName('��ϵ��').AsString;
  Edit7.Text := Data1.UniBill.FieldByName('�绰').AsString;
  Edit8.Text := Data1.UniBill.FieldByName('��ַ').AsString;
  Edit9.Text := Data1.UniBill.FieldByName('�ͻ����').AsString;
  Edit10.Text := Data1.UniBill.FieldByName('�ͻ�����').AsString;
  RzToolButton3.Enabled := True;
  RzToolButton5.Enabled := True;
  SpeedButton1.Enabled := False;
end;

procedure TCustBillForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False,20); //�������ݵ����п�
end;

procedure TCustBillForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.UniBill.Close;
end;

procedure TCustBillForm.FormShow(Sender: TObject);
begin
  ClearEdit;
  Data1.UniBill.sql.Text :='SELECT barcode �ͻ����,namec �ͻ�����,gsname ��˾����,snumber ˰��,bank ������,anumber �ʺ�,linkman ��ϵ��,tel �绰,address ��ַ,cdate �������� FROM tbcustomer_bill where CDate>='''+FormatDateTime('yyyy-mm-dd',Now)+'''';
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
     sql.Text :='SELECT barcode �ͻ����,namec �ͻ�����,gsname ��˾����,snumber ˰��,bank ������,anumber �ʺ�,linkman ��ϵ��,tel �绰,address ��ַ,cdate �������� FROM tbcustomer_bill '+sqlstr;
     Open;
   end;
   ClearEdit;
end;

procedure TCustBillForm.RzToolButton2Click(Sender: TObject);
begin
  ClearEdit;
  Label1.Caption := '����';
  RzToolButton3.Enabled := True;
  SpeedButton1.Enabled := True;
end;

procedure TCustBillForm.RzToolButton3Click(Sender: TObject);
var
  sqlstr:string;
begin
  if (Label1.Caption <>'����') and (Label1.Caption <>'�༭') then  Exit;
  if (Edit9.Text='') or (Edit10.Text='') then
  begin
    ShowMessage('��ѡ��ͻ�');
    Exit;
  end;
  if Edit3.Text='' then
  begin
    ShowMessage('������˰��');
    Exit;
  end;
  if Edit2.Text='' then
  begin
    ShowMessage('�����빫˾����');
    Exit;
  end;
  if Label1.Caption ='����' then
  begin
    Data1.work.Close;
    Data1.work.sql.Text :='select id from tbcustomer_bill where barcode='''+edit9.Text+''' ';
    Data1.work.Open;
    if not Data1.work.IsEmpty then
    begin
      ShowMessage('�Ѵ��ڸÿͻ��Ŀ���Ʊ��Ϣ');
      Exit;
    end;
  end;
  if Label1.Caption ='����' then
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
    sqlstr := '�ͻ���ţ�'+edit9.Text;
    Data1.WriteLog('����/�༭��Ʊ����',sqlstr,UsName); //д��־
    ShowMessage('�����ɹ�');
    ClearEdit;
    Data1.UniBill.Close;
    Data1.UniBill.Open;
  except
    on E:Exception do
    begin
      ShowMessage('ʧ��:'+e.Message);
    end;
  end;

end;

procedure TCustBillForm.RzToolButton4Click(Sender: TObject);
begin
  close;
end;

procedure TCustBillForm.RzToolButton5Click(Sender: TObject);
begin
  if (Label1.Caption <>'�༭') then  Exit;
  if (IDYES = Application.MessageBox('�Ƿ�ɾ��������Ϣ��', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
  begin
    try
      Data1.work.Close;
      Data1.work.sql.Text :='delete from tbcustomer_bill where barcode='''+Edit9.Text+''' ';
      Data1.work.ExecSQL;
      Data1.work.Close;
      Data1.WriteLog('ɾ����Ʊ����','�ͻ���ţ�'+edit9.Text,UsName); //д��־
      ShowMessage('ɾ���ɹ�');
      ClearEdit;
      Data1.UniBill.Close;
      Data1.UniBill.Open;
    except
      on E:Exception do
      begin
        ShowMessage('ɾ��ʧ��:'+e.Message);
      end;
    end;
  end
end;

procedure TCustBillForm.RzToolButton6Click(Sender: TObject);
begin
   with Data1.UniBill do
   begin
     Close;
     sql.Text :='SELECT barcode �ͻ����,namec �ͻ�����,gsname ��˾����,snumber ˰��,bank ������,anumber �ʺ�,linkman ��ϵ��,tel �绰,address ��ַ,cdate �������� FROM tbcustomer_bill ';
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
