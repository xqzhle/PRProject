unit YpTjUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, ComCtrls, StdCtrls, Buttons, ExtCtrls, AdvUtil,
  Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, DB, MemDS, DBAccess, Uni, ADODB,
  Menus, AdvMenus, tmsAdvGridExcel, frxBarcode, frxClass, AdvPanel;

type
  TYpTjFrame = class(TUniFrame)
    Panel12: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    PageSizebox: TComboBox;
    SelPageBox: TComboBox;
    DBAdvGrid1: TDBAdvGrid;
    ADOQuery1: TUniQuery;
    AdvPopupMenu1: TAdvPopupMenu;
    N62: TMenuItem;
    N63: TMenuItem;
    N11: TMenuItem;
    N22: TMenuItem;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    SP: TADOStoredProc;
    BottlelistDataSource: TDataSource;
    AdvPanel1: TAdvPanel;
    Button5: TButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure PageSizeboxChange(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure SelPageBoxChange(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    procedure selectbottle(const pages:Integer);
  public
    { Public declarations }
  end;
 var
  YpTjFrame :TYpTjFrame;
implementation

uses
  DbUnit, BottleinfoUnit, MainUnit,zcomm;

{$R *.dfm}
var
  Pagecurrent:Integer=0;  // 当前页
  Pagecount:Integer=0;    //总页数
  seltypes:string='0';
  whereallstr:string;
  selectallstr,orderbyallstr,fromallstr:string;


procedure TYpTjFrame.Button5Click(Sender: TObject);
begin
   if not SP.Active then exit;
   if not SP.RecordCount=0 then Exit;
   if savedialog1.Execute then
   begin
     if  pos('.', savedialog1.FileName)>0 then  advgridexcelio1.XLSExport(savedialog1.FileName)
       else   advgridexcelio1.XLSExport(savedialog1.FileName+'.xls');
   end;
end;

procedure TYpTjFrame.DBAdvGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     if (DBAdvGrid1.Cells[25,arow]=trim('检验')) then AFont.Color:=clgreen;
     if (DBAdvGrid1.Cells[25,ARow]=trim('报废')) then AFont.Color:=clred;
     if (DBAdvGrid1.Cells[25,ARow]=trim('丢失')) then AFont.Color:=clblue;
end;

procedure TYpTjFrame.DBAdvGrid1Resize(Sender: TObject);
begin
    DBAdvGrid1.AutoSizeColumns(False,10);
end;

procedure TYpTjFrame.Label26Click(Sender: TObject);
begin
    if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   selectbottle(1);
end;

procedure TYpTjFrame.Label27Click(Sender: TObject);
begin
if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    selectbottle(Pagecurrent-1);
end;

procedure TYpTjFrame.Label28Click(Sender: TObject);
begin
  if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    selectbottle(Pagecurrent+1);
end;

procedure TYpTjFrame.Label29Click(Sender: TObject);
begin
 if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   selectbottle(Pagecount);
end;

procedure TYpTjFrame.PageSizeboxChange(Sender: TObject);
begin
    if PageSizebox.ItemIndex=-1 then  Exit;
    Selectbottle(1);
end;

procedure TYpTjFrame.selectbottle(const pages: Integer);
var
 wherestr,orderbystr,fromstr,selectstr,fdname:string;
 rows:Integer;
begin
   selectstr:=selectallstr;
   fromstr:=fromallstr;

   wherestr:=whereallstr;
   orderbystr:=orderbyallstr;
   fdname:='a.ID';
   Sp.Close;
   sp.ProcedureName:='PageShowOneshang;1';
   sp.Parameters.Refresh;
   sp.Parameters.ParamByName('@PageSize').Value:=StrToInt(PageSizebox.Text);
   sp.Parameters.ParamByName('@PageCurrent').Value:=pages;
   sp.Parameters.ParamByName('@FdName').Value:=fdname;
   sp.Parameters.ParamByName('@fromstr').Value:=fromstr;
   sp.Parameters.ParamByName('@selectstr').Value:=selectstr;
   sp.Parameters.ParamByName('@orderbystr').Value:=orderbystr;
   sp.Parameters.ParamByName('@wherestr').Value:=wherestr;
   sp.Open;
   rows:=Sp.Parameters.ParamValues['@CountRows']  ;
   Pagecount:=Sp.Parameters. ParamValues['@CountPage'];
//    ADODataSet1.DataSetField:=Sp.DataSetField;
   // ADODataSet1.DataSource:=DataSource1;
   // ShowMessage(IntToStr(rows)+'/'+inttostr(Pagecount));
    Pagecurrent:=pages;
   Label23.Caption:=Format('共 %D 条记录',[rows]);
   Label24.Caption:=Format('/ %D页 ',[pagecount]);
   label25.Caption:=Format('%D',[pages]);
   SelPageBox.Items.Clear;
   for rows := 1 to Pagecount do
   SelPageBox.Items.Add('第'+IntToStr(rows)+'页');

end;

procedure TYpTjFrame.SelPageBoxChange(Sender: TObject);
begin
    if SelPageBox.ItemIndex=-1 then Exit;
   if Pagecurrent=SelPageBox.ItemIndex+1 then Exit;
   Selectbottle(SelPageBox.ItemIndex+1);
end;

procedure TYpTjFrame.UniFrameCreate(Sender: TObject);
var
 i:Integer;
begin
   selectallstr:='a.khbh as 客户编号,b.namec as 客户名称,d.BottleBar as 钢瓶标签,d.Bottleid as 钢瓶编号,d.gptm as 钢瓶条码,c.shopname as 配送门店,a.cuser as 操作人,a.cdate as 日期';
   whereallstr:='';
   fromallstr:='tb_khgp a LEft join tbCustomer_Info b on a.khbh=b.barcode left join tshop c on a.shopid=c.shopid left join tbBottle_Dossier d on a.gptm=d.Bottleid ';
   orderbyallstr:='a.cdate desc';
   selectbottle(1);
end;

procedure TYpTjFrame.UniFrameDestroy(Sender: TObject);
begin
    SP.Close;
end;

end.
