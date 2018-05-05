unit WxUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RzDBGrid, RzTabs, W7Classes, W7Panels, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, ComCtrls;

type
  TWxForm = class(TForm)
    W7Panel1: TW7Panel;
    DBAdvGrid1: TDBAdvGrid;
    DBAdvGrid2: TDBAdvGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure FormShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure DBAdvGrid1DblClick(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WxForm: TWxForm;
  wxstype:Integer;
implementation
uses DbUnit,UpwxUnit;
{$R *.dfm}


procedure TWxForm.DBAdvGrid1DblClick(Sender: TObject);
begin
  if not Data1.UniQuery2.IsEmpty then
  begin
    UpwxForm.Edit2.Text:=data1.UniQuery2.FieldByName('客户编号').AsString;
    UpwxForm.GroupBox2.Visible:=False;
    UpwxForm.ShowModal;
  end;
end;

procedure TWxForm.DBAdvGrid2DblClick(Sender: TObject);
begin
  if not Data1.UniQuery2.IsEmpty then
  begin
    UpwxForm.Edit2.Text:=data1.UniQuery2.FieldByName('客户编号').AsString;
    UpwxForm.GroupBox2.Visible:=True;
    UpwxForm.Edit8.Text:=Data1.UniQuery2.FieldByName('商品名称').AsString;
    UpwxForm.Edit9.Text:=Data1.UniQuery2.FieldByName('数量').AsString;
    UpwxForm.Edit10.Text:=Data1.UniQuery2.FieldByName('单价').AsString;
    UpwxForm.Edit14.Text:=Data1.UniQuery2.FieldByName('实收金额').AsString;
    UpwxForm.Edit15.Text:=Data1.UniQuery2.FieldByName('单号').AsString;
    UpwxForm.ShowModal;
  end;
end;

procedure TWxForm.FormShow(Sender: TObject);
begin
  if wxstype=1 then
  begin
    TabSheet1.Show;
    
  end
  else
  begin
    
  end;
end;

procedure TWxForm.TabSheet1Show(Sender: TObject);
begin
    with Data1.UniQuery2 do
    begin
      Close;                                                                                                              //a.CreateDate as CreateDate,
      SQL.Text:=' select top 50 a.barcode as 客户编号,a.namec as 客户名称,a.tel as 手机号码,a.Contact as 客户电话,a.SendPeriod as 楼层, '+
       ' b.type_name as 客户类型,d.namec as 区域名称,e.namec as 街道名称,a.address as 客户地址 '+
       ' from tbCustomer_info a left join tbCustomer_Type b on a.typec=b.type_id '  +
       ' left join tshop c on a.psid=c.shopid left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id) where a.Customer_ID=2';
      open;
    end;
    DBAdvGrid1.AutoSizeColumns(False,20); //根据内容调节列宽
end;

procedure TWxForm.TabSheet2Show(Sender: TObject);
begin
    with Data1.UniQuery2 do
    begin
      Close;                                                                                                              //a.CreateDate as CreateDate,
      SQL.Text:='select a.bisentid as 单号,a.optid as 下单方,case when a.Fsktype=0 then ''现金'' when a.Fsktype=1 then ''微信支付'' end as 收款方式,'+
       'a.corpid as 客户编号,a.empname as 送气工,a.corpname as 客户,a.tel as 联系电话,b.pricename as 商品名称,b.dj as 单价,b.sl as 数量,b.yfmoney as 优惠,b.smoney as 运费,b.money as 实收金额, '+
       ' a.address as 送气地址,a.yydate as 预约时间,a.optdate as 订气时间,case when a.type=''1'' then ''预约'' when a.type=''2'' then ''加急'' else ''正常'' end as 订单级别,a.memo as 备注 '+
       'from tbisent a right join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.barcode where (a.shopid='''') and (a.ddstype=1) and (a.status<>1) and (a.status<>3) and (a.type<>3) order by a.optdate';
      open;
    end;
    DBAdvGrid2.AutoSizeColumns(False,20); //根据内容调节列宽
end;

end.
