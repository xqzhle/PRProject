unit lzUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, AdvObj, DBAdvGrid, AdvGrid,
  W7Labels, ExtCtrls, W7Bars, W7Classes, W7Panels, W7Buttons, BaseGrid,
  RzButton, ImgList, AdvUtil;

type
  TlzForm = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    W7Panel1: TPanel;
    W7ToolBar1: TW7ToolBar;
    W7ActiveLabel1: TW7ActiveLabel;
    W7Panel2: TPanel;
    DBAdvGrid1: TDBAdvGrid;
    ImageList1: TImageList;
    RzToolButton1: TRzToolButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1DblClick(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Selectgp(gpbh:string);
  end;

var
  lzForm: TlzForm;

implementation
uses DbUnit;
{$R *.dfm}


procedure TlzForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False,20); //根据内容调节列宽
end;

procedure TlzForm.Edit1DblClick(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TlzForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  RzToolButton1.Click;
  if Not (key in ['0'..'9', #8,'a'..'z' ,'A'..'Z']) then  key:=#0;
end;

procedure TlzForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.lzcx.Close;
  Edit1.Clear;
  W7ActiveLabel1.Caption:='';
end;

procedure TlzForm.FormCreate(Sender: TObject);
begin
  Edit1.Clear;
  W7ActiveLabel1.Caption:='';
  ComboBox1.ItemIndex := 0;
end;

procedure TlzForm.RzToolButton1Click(Sender: TObject);
begin
  if Length(Edit1.Text)<6 then  Exit;
  Selectgp(Edit1.Text);
end;

procedure TlzForm.Selectgp(gpbh: string);
var
  date2 :string;
  StartTime, EndTime: cardinal;
begin

  if ComboBox1.Text <>'' then
  begin
    date2 := FormatDateTime('yyyy-mm-dd',Now-strtoint(ComboBox1.Text));
  end
  else  date2 := FormatDateTime('yyyy-mm-dd',Now-60);
  StartTime := GetTickCount;
  Edit1.Text := gpbh;
  Data1.sqlcmd1.Close;
  Data1.sqlcmd1.sql.Text:='select b.bottleid from tbBottle_Dossier b where (b.bottlebar='''+edit1.text+''' or b.bottleid='''+edit1.text+''' or b.gptm='''+edit1.text+''') ';
  Data1.sqlcmd1.Open;
  if Data1.sqlcmd1.IsEmpty  then
  begin
//    ShowMessage('没有找到钢瓶信息');
    EndTime := GetTickCount;
    W7ActiveLabel1.Caption:='没有找到钢瓶信息，共耗时：'+(IntToStr(EndTime - StartTime) + ' ms');
    exit;
  end;
  gpbh := Data1.sqlcmd1.FieldByName('bottleid').AsString;
  with Data1.lzcx do
  begin
    Close;
    sql.Text:='select a.bottlebar as tiaoma,a.cdate as date,''站台空瓶入库'' as name,''气站'' as shop,a.cuser as namec,'''' as memo from tbZTKPINtj a where a.bottlebar='''+gpbh+''' and a.cdate>='''+date2+''' '+
    ' union select a.bottlebar as tiaoma,a.cdate as date,''站台充装扫描'' as name,''气站'' as shop,''工号:''+a.cz+'' 台称:''+a.CTsn as namec,'''' as memo from tbZTQPCZTJ A  where a.bottlebar='''+gpbh+''' and a.cdate>='''+date2+''' '+
    ' union select a.bottlebar as tiaoma,a.cdate as date,''站台重瓶出库'' as name,''气站'' as shop,a.cuser as namec,'''' as memo from tbZTZPOUTTJ A where a.bottlebar='''+gpbh+''' and a.cdate>='''+date2+''' '+
    ' union select a.bottlebar as tiaoma,a.createdate as date,''门店重瓶下车'' as name,b.shopname as shop,a.createuser as namec,'''' as memo from tbMDZPXCTJ as a left join tshop as b on(a.shopcode=b.shopid) '+
    ' where a.bottlebar='''+gpbh+''' and a.createdate>='''+date2+''' and a.shopcode<>''anyType{}''  '+
    ' union select a.bottlebar as tiaoma,a.createdate as date,''门店空瓶装车'' as name,b.shopname as shop,a.createuser as namec,'''' as memo from tbMDKPZCTJ as a left join tshop as b on(a.shopcode=b.shopid) '+
    ' where a.bottlebar='''+gpbh+''' and a.createdate>='''+date2+''' and a.shopcode<>''anyType{}'' '+
    ' union select a.bottlebar as tiaoma,a.createdate as date,''门店空瓶回收'' as name,b.shopname as shop,a.createuser as namec,d.corpid as memo '+
    ' from tbStock_Intj as a left join tshop as b on(a.shopcode=b.shopid) '+
    ' left join tbisent d on (a.bistid=d.id) where a.bottlebar='''+gpbh+''' and a.createdate>='''+date2+''' and a.shopcode<>''anyType{}'' '+
    ' union select a.gptm as tiaoma,a.cdate as date,''门店重瓶配送'' as name,c.address as shop,a.cuser as namec,a.khbh   as memo from tb_khgpTJ A '+
    ' left join tbCustomer_Info c on a.khbh=c.BarCode where a.gptm='''+gpbh+''' and a.cdate>='''+date2+''' order by date desc';
    try
      Open;
      EndTime := GetTickCount;
      W7ActiveLabel1.Caption:='记录总数：'+inttostr(recordcount)+'条，共耗时：'+(IntToStr(EndTime - StartTime) + ' ms');

    except
      on E: Exception do
      begin
        ShowMessage('查询失败:'+e.Message);
      end;
    end;
  end;
end;

end.
