unit SelKhUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvPanel, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, DB, MemDS, DBAccess, Uni, AdvUtil;

type
  TSelKhForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    advpnl1: TAdvPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    lbl1: TLabel;
    SelPageBox: TComboBox;
    cbbPageSizebox: TComboBox;
    Button2: TButton;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    DBAdvGrid2: TDBAdvGrid;
    UniStoredProc1: TUniStoredProc;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbbPageSizeboxChange(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure SelPageBoxChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Getdate(pages:Integer);
  public
    { Public declarations }
    seltype:Integer;
  end;

var
  SelKhForm: TSelKhForm;

implementation

uses
  DbUnit, TsYhUnit, GsKhYhUnit,CustBillUnit,CustBlendUnit,EditCustMoneyUnit,EditLetterUnit;

{$R *.dfm}
var
 Pagecurrent:Integer=1;  // 当前页
Pagecount:Integer=0;    //总页数
wherestr, orderbystr, fromstr, selectstr,
fdname: string;


procedure TSelKhForm.Button1Click(Sender: TObject);
begin
   if (Edit1.Text='') and (Edit2.Text='') and (Edit3.Text='') then
   begin
     ShowMessage('请输入查询条件进行查询');
     exit;
   end;
   wherestr:='(1=1)';
   if Edit1.Text<>'' then
   wherestr:=wherestr+' and (a.namec like ''%'+edit1.text+'%'')';
   if Edit2.Text<>'' then
   wherestr:=wherestr+' and (a.barcode like ''%'+edit2.text+'%'')';
   if Edit3.Text<>'' then
   wherestr:=wherestr+' and (a.tel like ''%'+edit3.text+'%'')';
   Getdate(1);
end;

procedure TSelKhForm.Button2Click(Sender: TObject);
begin
   if not UniStoredProc1.Active then   Exit;
   if UniStoredProc1.RecordCount=0 then Exit;
   if seltype=0 then
   begin
     TsYhFrame.Edit2.Text:=UniStoredProc1.FieldByName('cname').AsString;
     TsYhFrame.Edit9.Text:=UniStoredProc1.FieldByName('cid').AsString;
     TsYhFrame.Edit10.Text:=UniStoredProc1.FieldByName('ctel').AsString;
   end;
   if seltype=1 then
   begin
     GsKhYhFrame.Edit2.Text:=UniStoredProc1.FieldByName('cname').AsString;
     GsKhYhFrame.Edit9.Text:=UniStoredProc1.FieldByName('cid').AsString;
     GsKhYhFrame.Edit10.Text:=UniStoredProc1.FieldByName('ctel').AsString;
     GsKhYhFrame.Edit11.Text:=UniStoredProc1.FieldByName('khtype').AsString;
   end;
   if seltype=2 then
   begin
     CustBillForm.Edit10.Text:=UniStoredProc1.FieldByName('cname').AsString;
     CustBillForm.Edit9.Text:=UniStoredProc1.FieldByName('cid').AsString;
   end;
   if seltype=3 then
   begin
     CustBlendForm.Edit2.Text:=UniStoredProc1.FieldByName('cname').AsString;
     CustBlendForm.Edit1.Text:=UniStoredProc1.FieldByName('cid').AsString;
   end;
   if seltype=4 then
   begin
     EditCustMoneyForm.Edit2.Text:=UniStoredProc1.FieldByName('cname').AsString;
     EditCustMoneyForm.Edit1.Text:=UniStoredProc1.FieldByName('cid').AsString;
   end;
   if seltype=5 then
   begin
     EditLetterForm.Edit2.Text:=UniStoredProc1.FieldByName('cname').AsString;
     EditLetterForm.Edit1.Text:=UniStoredProc1.FieldByName('cid').AsString;
   end;
   Close;
end;

procedure TSelKhForm.cbbPageSizeboxChange(Sender: TObject);
begin
    if cbbPageSizebox.ItemIndex=-1 then  Exit;
   Getdate(1);
end;

procedure TSelKhForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   UniStoredProc1.Close;
end;

procedure TSelKhForm.FormShow(Sender: TObject);
begin
     fdname:='a.id';                                                       //a.grade as 押金,
    selectstr:='b.comname as shopname,a.barcode as cid,a.namec as cname,A.tel as ctel,a.yhdjname as yhdj,c.type_name as khtype'; //,a.qyid as 区域id,a.jdid as 街道id
    fromstr:='tbCustomer_Info a left join tCompany b on a.psid=b.id left join tbCustomer_type c on a.typec=c.type_id ';
    orderbystr:='a.barcode';
end;

procedure TSelKhForm.Getdate(pages: Integer);
var
  i:Integer;
begin
 try
   with  UniStoredProc1 do
   begin
     Close;
     Params.ParamByName('PageSize').Value :=StrToInt((cbbPageSizebox.Text));   // 每页记录数
     Params.ParamByName('PageCurrent').Value :=pages; //当前页
     Params.ParamByName('FdName').Value := FdName;       //主键
     Params.ParamByName('Selectstr').Value:= SelectStr;
     Params.ParamByName('Fromstr').Value:=FromStr  ;
     Params.ParamByName('WhereStr').Value:=wherestr;
     Params.ParamByName('OrderbyStr').Value:=OrderbyStr;
     Open;
     i:=Params.ParamValues['CountRows'];
     Pagecount:=Params.ParamValues['CountPage'];
   end;
   except

   end;
 Pagecurrent:=pages;
 Label23.Caption:=Format('共 %D 条记录',[i]);
 Label24.Caption:=Format('/ %D页 ',[pagecount]);
 label25.Caption:=Format('%D',[pages]);
 SelPageBox.Items.Clear;
 for I := 1 to Pagecount do
   SelPageBox.Items.Add('第'+IntToStr(i)+'页');

end;

procedure TSelKhForm.Label26Click(Sender: TObject);
begin
 if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   Getdate(1);
end;

procedure TSelKhForm.Label27Click(Sender: TObject);
begin
  if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    Getdate(Pagecurrent-1);
end;

procedure TSelKhForm.Label28Click(Sender: TObject);
begin
 if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   Getdate(Pagecurrent+1);
end;

procedure TSelKhForm.Label29Click(Sender: TObject);
begin
if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    Getdate(Pagecount);
end;

procedure TSelKhForm.SelPageBoxChange(Sender: TObject);
begin
   if SelPageBox.ItemIndex=-1 then Exit;
   if Pagecurrent=SelPageBox.ItemIndex+1 then Exit;
   Getdate(SelPageBox.ItemIndex+1);
end;

end.
