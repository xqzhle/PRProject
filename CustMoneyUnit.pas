unit CustMoneyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzButton, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ComCtrls, AdvUtil;

type
  TCustMoneyForm = class(TForm)
    Panel1: TPanel;
    RzToolButton1: TRzToolButton;
    Label12: TLabel;
    Edit1: TEdit;
    DBAdvGrid2: TDBAdvGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    DateTimePicker2: TDateTimePicker;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    DBAdvGrid1: TDBAdvGrid;
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure DBAdvGrid2Resize(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure DBAdvGrid1Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
  private
    procedure selectmx;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustMoneyForm: TCustMoneyForm;

implementation
uses DbUnit,EditCustMoneyUnit,CustBlendUnit,MainUnit;
{$R *.dfm}

procedure TCustMoneyForm.DBAdvGrid1Click(Sender: TObject);
begin
  selectmx;
end;

procedure TCustMoneyForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False,20); //根据内容调节列宽
end;

procedure TCustMoneyForm.DBAdvGrid2Resize(Sender: TObject);
begin
  DBAdvGrid2.AutoSizeColumns(False,20); //根据内容调节列宽
end;

procedure TCustMoneyForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.CustMoney_list.Close;
end;

procedure TCustMoneyForm.FormShow(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  DateTimePicker2.Date := Now;
  DateTimePicker2.Checked := False;
  if not Data1.CustMoney.IsQuery then
  begin
    with Data1.CustMoney do
    begin
      Close;
      SQL.Text := 'SELECT barcode 客户编号,namec 客户姓名,money 帐号金额,cdate 上次变动时间,cmoney 上次变动金额,memo 备注 FROM tbCustomer_money';
      Open;
    end;
  end;
end;

procedure TCustMoneyForm.RzToolButton1Click(Sender: TObject);
var
  sqlstr:string;
begin
  if Edit1.Text='' then sqlstr:=''
  else sqlstr := ' where barcode like ''%'+Edit1.text+'%'' or namec like ''%'+Edit1.text+'%'' ';
  with Data1.CustMoney do
  begin
    Close;
    SQL.Text := 'SELECT barcode 客户编号,namec 客户姓名,money 帐号金额,cdate 上次变动时间,cmoney 上次变动金额,memo 备注 FROM tbCustomer_money '+sqlstr;
    Open;
  end;
  selectmx;

end;

procedure TCustMoneyForm.RzToolButton2Click(Sender: TObject);
begin
  if Data1.CustMoney.IsEmpty then
  begin
     EditCustMoneyForm.Edit1.Clear;
     EditCustMoneyForm.Edit2.Clear;
  end
  else
  begin
     EditCustMoneyForm.Edit1.Text := Data1.CustMoney.FieldByName('客户编号').AsString;
     EditCustMoneyForm.Edit2.Text := Data1.CustMoney.FieldByName('客户姓名').AsString;
  end;
  EditCustMoneyForm.ShowModal;
end;

procedure TCustMoneyForm.RzToolButton3Click(Sender: TObject);
begin
  if Data1.CustMoney.IsEmpty then
  begin
     CustBlendForm.Edit1.Clear;
     CustBlendForm.Edit2.Clear;
  end
  else
  begin
     CustBlendForm.Edit1.Text := Data1.CustMoney.FieldByName('客户编号').AsString;
     CustBlendForm.Edit2.Text := Data1.CustMoney.FieldByName('客户姓名').AsString;
  end;
  CustBlendForm.ShowModal;
end;

procedure TCustMoneyForm.RzToolButton4Click(Sender: TObject);
begin
   if Data1.CustMoney.IsEmpty then Exit;
   Data1.AdvGridExcelIO1.AdvStringGrid:=DBAdvGrid1;
   if Data1.savedialog1.Execute then
   begin
     if  pos('.', Data1.savedialog1.FileName)>0 then  Data1.AdvGridExcelIO1.XLSExport(Data1.savedialog1.FileName)
     else   Data1.AdvGridExcelIO1.XLSExport(Data1.savedialog1.FileName+'.xls');
   end;
end;

procedure TCustMoneyForm.RzToolButton5Click(Sender: TObject);
begin
   if Data1.CustMoney_list.IsEmpty then Exit;
   Data1.AdvGridExcelIO1.AdvStringGrid:=DBAdvGrid2;
   if Data1.savedialog1.Execute then
   begin
     if  pos('.', Data1.savedialog1.FileName)>0 then  Data1.AdvGridExcelIO1.XLSExport(Data1.savedialog1.FileName)
     else   Data1.AdvGridExcelIO1.XLSExport(Data1.savedialog1.FileName+'.xls');
   end;
end;

procedure TCustMoneyForm.selectmx;
var
  sqlstr :string;
begin
  if Data1.CustMoney.IsEmpty then Exit;
  sqlstr :=' where barcode='''+Data1.CustMoney.FieldByName('客户编号').AsString+''' ';
  if DateTimePicker1.Checked then  sqlstr:=sqlstr+' and cdate>'''+datetimetostr(DateTimePicker1.DateTime)+''' ';
  if DateTimePicker2.Checked then  sqlstr:=sqlstr+' and cdate<='''+datetimetostr(DateTimePicker2.DateTime)+''' ';
  if Data1.CustMoney.IsEmpty then Exit;
  with Data1.CustMoney_list do
  begin
    Close;                                                                                                                             //+ ' order by id desc'
    SQL.Text := 'SELECT barcode 客户编号,namec 客户姓名,type 业务类型,cdate 业务时间,money 业务金额,cuser 操作人,memo 备注 FROM tbCustomer_money_list '+sqlstr;
    Open;
  end;
  //查询客户应收金额
  Edit2.Text :='0';
  Edit3.Text := IntToStr(Data1.CustMoney.FieldByName('帐号金额').AsInteger-strtoint(Edit2.Text));
end;

end.
