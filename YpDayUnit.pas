unit YpDayUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, DB, MemDS, DBAccess, Uni, ImgList, AdvUtil,
  tmsAdvGridExcel;

type
  TYpDaycFrame = class(TUniFrame)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    ImageList3: TImageList;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    DBAdvGrid1: TDBAdvGrid;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;
var
 YpDaycFrame:TYpDaycFrame;
implementation

uses
  DbUnit, MainUnit,zcomm, SelKhUnit;

{$R *.dfm}




procedure TYpDaycFrame.Button1Click(Sender: TObject);
var
 sqlstr,str:string;
begin
    str:=DateTimeToStr(Now-30);
    sqlstr:='SELECT d.BottleBar as ��ƿ��ǩ,d.Bottleid as ��ƿ���,d.gptm as ��ƿ����,a.khbh as �ͻ����,b.namec as �ͻ�����,e.bisentid as ������,c.shopname as �����ŵ�,a.cuser as ������, '+
         ' a.cdate as ���� from tb_khgp a LEft join tbCustomer_Info b on a.khbh=b.barcode left join tshop c on a.shopid=c.shopid left join tbBottle_Dossier d on a.gptm=d.Bottleid left join tbisent e on a.bistid=e.id where a.cdate<='''+str+''' ';
    UniQuery1.Close;
    UniQuery1.SQL.Text:= sqlstr;
    UniQuery1.Open;

end;

procedure TYpDaycFrame.Button2Click(Sender: TObject);
var
 sqlstr,str:string;
begin
    str:=DateTimeToStr(Now-60);
    sqlstr:='SELECT d.BottleBar as ��ƿ��ǩ,d.Bottleid as ��ƿ���,d.gptm as ��ƿ����,a.khbh as �ͻ����,b.namec as �ͻ�����,e.bisentid as ������,c.shopname as �����ŵ�,a.cuser as ������, '+
         ' a.cdate as ���� from tb_khgp a LEft join tbCustomer_Info b on a.khbh=b.barcode left join tshop c on a.shopid=c.shopid left join tbBottle_Dossier d on a.gptm=d.Bottleid left join tbisent e on a.bistid=e.id where a.cdate<='''+str+''' ';
    UniQuery1.Close;
    UniQuery1.SQL.Text:= sqlstr;
    UniQuery1.Open;

end;

procedure TYpDaycFrame.Button3Click(Sender: TObject);
var
 sqlstr,str:string;
begin
    str:=DateTimeToStr(Now-90);
    sqlstr:='SELECT d.BottleBar as ��ƿ��ǩ,d.Bottleid as ��ƿ���,d.gptm as ��ƿ����,a.khbh as �ͻ����,b.namec as �ͻ�����,e.bisentid as ������,c.shopname as �����ŵ�,a.cuser as ������, '+
         ' a.cdate as ���� from tb_khgp a LEft join tbCustomer_Info b on a.khbh=b.barcode left join tshop c on a.shopid=c.shopid left join tbBottle_Dossier d on a.gptm=d.Bottleid left join tbisent e on a.bistid=e.id where a.cdate<='''+str+''' ';
    UniQuery1.Close;
    UniQuery1.SQL.Text:= sqlstr;
    UniQuery1.Open;

end;

procedure TYpDaycFrame.Button4Click(Sender: TObject);
begin
  if not UniQuery1.Active then exit;
   if not UniQuery1.RecordCount=0 then Exit;
   if savedialog1.Execute then
   begin
     if  pos('.', savedialog1.FileName)>0 then  advgridexcelio1.XLSExport(savedialog1.FileName)
       else   advgridexcelio1.XLSExport(savedialog1.FileName+'.xls');
   end;
end;

procedure TYpDaycFrame.DBAdvGrid1Resize(Sender: TObject);
begin
    DBAdvGrid1.AutoSizeColumns(False,10);
end;

procedure TYpDaycFrame.UniFrameCreate(Sender: TObject);
var
 sqlstr,str:string;
begin
    str:=DateTimeToStr(Now-30);
    sqlstr:='SELECT d.BottleBar as ��ƿ��ǩ,d.Bottleid as ��ƿ���,d.gptm as ��ƿ����,a.khbh as �ͻ����,b.namec as �ͻ�����,e.bisentid as ������,c.shopname as �����ŵ�,a.cuser as ������, '+
         ' a.cdate as ���� from tb_khgp a LEft join tbCustomer_Info b on a.khbh=b.barcode left join tshop c on a.shopid=c.shopid left join tbBottle_Dossier d on a.gptm=d.Bottleid left join tbisent e on a.bistid=e.id where a.cdate<='''+str+''' ';
    UniQuery1.Close;
    UniQuery1.SQL.Text:= sqlstr;
    UniQuery1.Open;

end;

procedure TYpDaycFrame.UniFrameDestroy(Sender: TObject);
begin
    UniQuery1.Close;
end;

end.
