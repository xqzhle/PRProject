unit YwybbUnit;

interface

uses
  Windows, Messages,dxRibbonForm, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxRibbon, StdCtrls, Grids, DateUtils,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, ImgList, AdvGlowButton, ExtCtrls,
  AdvPanel, ComCtrls, AdvGroupBox, AdvOfficeButtons,
   OleServer, AcReport_TLB,AcRptUtils,AdvStyleIF, AdvSmoothMessageDialog,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, AdvUtil;

type
  TYwybbForm = class(TdxRibbonForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ImageList3: TImageList;
    AdvPanel2: TAdvPanel;
    DBAdvGrid1: TDBAdvGrid;
    AdvPanel3: TAdvPanel;
    DBAdvGrid2: TDBAdvGrid;
    AcRptEngine1: TAcRptEngine;
    AdvPanel6: TAdvPanel;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGroupBox1: TAdvGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    AdvGlowButton4: TAdvGlowButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBAdvGrid3: TDBAdvGrid;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    sSaveDialog1: TSaveDialog;
    ComboBox1: TComboBox;
    Label3: TLabel;
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure DBAdvGrid3Resize(Sender: TObject);
    procedure DBAdvGrid3DblClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure opendata;
    procedure opendatas;
  public
    { Public declarations }
    //function   GetData(ADataSet:TDataSet):OleVariant;
  end;

var
  YwybbForm: TYwybbForm;

implementation

uses DbUnit, MainUnit;

{$R *.dfm}
var
sqlstr,sqlstr1,sqlstr2,sqlstr3,sqlstr4,rpt_path:string;
begindate,enddate:string;

procedure TYwybbForm.opendata;
begin
      Data1.cd12.Close;
      Data1.cd12.SQL.Text:='select a.pddate as 派单日期,a.shopname as 门店,a.ywy as 业务员,a.bisentid as 订单号,b.pricename as 商品,b.sl as 数量,a.corpname as 客户 ,d.ywytc as 业务员提成 '+
      ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tshop c on a.shopid=c.shopid left join tpriceinfo d on (b.pricename=d.name)  '+sqlstr1+sqlstr2+' and (a.ywy='''+data1.UniQuery2.FieldByName('业务员').AsString+''') order by a.pddate ';
      Data1.cd12.Open;
end;

procedure TYwybbForm.opendatas;
var
  sstr:string;
begin
      if ComboBox1.Text='' then
      begin
//        ShowSmoothMessage('请先选择门店');
//        ComboBox1.SetFocus;
//        exit;
        sstr:='';
      end
      else  sstr:='and (c.shopname='''+combobox1.Text+''')';
      Data1.UniQuery2.Close;
      sqlstr:='select a.ywy as 业务员 ,sum(a.sl) as 客户订气数量,sum(b.ywytc) as 业务员提成 '+
      ' from tbisent a left join tbisentprice d on (a.bisentid=d.bisentid) left join tpriceinfo b on (d.pricename=b.name) left join tshop c on a.shopid=c.shopid';    //left join tbisentprice b on a.bisentid=b.bisentid
      sqlstr1:=' where (a.status=1 or a.status=3) '+sstr+' and (a.ywy is not null) and (a.ywy <> '''' )';
      sqlstr3:=' group by a.ywy order by a.ywy ';
      Data1.UniQuery2.sql.Text:=sqlstr+sqlstr1+sqlstr2+sqlstr3;
      Data1.UniQuery2.Open;
       Data1.cd12.Close;                                                                                                                                               //,case when a.status=3 then ''是'' else ''否'' end as 报错单,a.bcmemo as 报错内容
      Data1.cd12.SQL.Text:='select a.pddate as 派单日期,a.shopname as 门店,a.ywy as 业务员,a.bisentid as 订单号,b.pricename as 商品,b.sl as 数量,a.corpid as 客户编号,a.corpname as 客户名称 ,d.ywytc as 业务费'+
      ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tshop c on a.shopid=c.shopid left join tpriceinfo d on (b.pricename=d.name) '+sqlstr1+sqlstr2+' and (a.ywy='''+data1.UniQuery2.FieldByName('业务员').AsString+''') order by a.pddate ';
      Data1.cd12.Open;
//        Data1.cd13.Close;
//      Data1.cd13.SQL.Text:='select a.bisentid as 订单号,a.ywy as 业务员,a.pddate as 派单日期,b.pricename as 商品,a.corpid as 客户编号,a.corpname as 客户,a.address as 地址,b.sl as 数量,b.dj as 单价,b.yfmoney as 优惠,b.money as 总金额,b.smoney as 送气费'+
//      ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tshop c on a.shopid=c.shopid '+sqlstr1+sqlstr2+' and a.type<>''3''';
//      Data1.cd13.Open;
end;


procedure TYwybbForm.AdvGlowButton1Click(Sender: TObject);
var
sl,hj:string;
begin
   if Data1.cd12.RecordCount>0 then
   begin
//     Data1.sqlcmd11.Close;
//      Data1.sqlcmd11.sql.Text:='select sum(a.sl) as 数量合计,sum(a.yhmoney) as 优惠合计,sum(a.smoney) as 送气费合计,sum(a.money) as 合计金额'+
//      ' from tbisent a left join tshop c on a.shopid=c.shopid '+sqlstr1+sqlstr2+'';
//      Data1.sqlcmd11.Open;
//      sl:=Data1.sqlcmd11.FieldByName('数量合计').AsString;
//      yh:=Data1.sqlcmd11.FieldByName('优惠合计').AsString;
//      sq:=Data1.sqlcmd11.FieldByName('送气费合计').AsString;
//      hj:=Data1.sqlcmd11.FieldByName('合计金额').AsString;
//      Data1.sqlcmd11.Close;
//     sl:=Data1.UniQuery2.FieldByName('客户订气数量').AsString;
//     hj:=Data1.UniQuery2.FieldByName('业务员提成').AsString;
     sl:='0';
     hj:='0';
     try
       Data1.UniQuery2.First;
       while not Data1.UniQuery2.Eof do
       begin
         sl:=IntToStr(StrToInt(sl)+strtoint(Data1.UniQuery2.FieldByName('客户订气数量').AsString));
         hj:=IntToStr(StrToInt(hj)+strtoint(Data1.UniQuery2.FieldByName('业务员提成').AsString));
         Data1.UniQuery2.Next;
       end;
     except

     end;
     AddCommonDatasetToAcReport(Data1.cd12, AcRptEngine1, '销售明细');
     AcRptEngine1.AddVariable('sl',sl);
     AcRptEngine1.AddVariable('hj',hj);
     AcRptEngine1.AddVariable('user',usName);
     AcRptEngine1.AddVariable('bdate',begindate);
     AcRptEngine1.AddVariable('enddate',enddate);
     AcRptEngine1.AddVariable('shopname','');
     ACRptEngine1.SetReportFile(rpt_path+'ywyxiaos.apt');
     //AcRptEngine1.ShowDesigner;
     AcRptEngine1.Preview;
   end
   else ShowSmoothMessage('没有数据不能生成报表！',tsOffice2007Luna);

end;

procedure TYwybbForm.AdvGlowButton2Click(Sender: TObject);
begin
     begindate:=datetostr(Now);
      enddate:=datetostr(Now);
     sqlstr2:=' and  (a.hddate>='''+datetostr(Now)+''') and  (a.hddate<='''+datetimetostr(Now)+''')';
     opendatas;
end;

procedure TYwybbForm.AdvGlowButton3Click(Sender: TObject);

begin
      begindate:=IntToStr(YearOf(Now))+'-'+inttostr(MonthOf(Now))+'-1';
      enddate:=datetostr(Now);
       sqlstr2:=' and  (a.hddate>='''+begindate+''') and  (a.hddate<='''+datetimetostr(Now)+''') ';

     opendatas;
end;

procedure TYwybbForm.AdvGlowButton4Click(Sender: TObject);
begin

      sqlstr2:=' and ((a.hddate>='''+datetimetostr(DateTimePicker1.Datetime)+''') and (a.hddate<='''+datetimetostr(DateTimePicker2.Datetime)+'''))' ;
      opendatas;
end;

procedure TYwybbForm.AdvGlowButton5Click(Sender: TObject);
begin
     if sSaveDialog1.Execute then
      begin
       try
        if  pos('.', ssavedialog1.FileName)>0 then  dbadvgrid1.SaveToXLS(ssavedialog1.FileName)
       else   dbadvgrid1.SaveToXLS(ssavedialog1.FileName+'.xls');
       ShowSmoothMessage('导出成功！');
       except
         ShowSmoothMessage('导出失败！');
       end;
      end;
end;

procedure TYwybbForm.AdvGlowButton6Click(Sender: TObject);
begin
    Close;
end;

procedure TYwybbForm.AdvGlowButton9Click(Sender: TObject);
begin
    if sSaveDialog1.Execute then
      begin
       try
        if  pos('.', ssavedialog1.FileName)>0 then  dbadvgrid3.SaveToXLS(ssavedialog1.FileName)
       else   dbadvgrid3.SaveToXLS(ssavedialog1.FileName+'.xls');
       ShowSmoothMessage('导出成功！');
       except
         ShowSmoothMessage('导出失败！');
       end;
      end;
end;

procedure TYwybbForm.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    // if (DBAdvGrid1.Cells[17,arow]=trim('预约订单')) then AFont.Color:=clgreen;
    // if (DBAdvGrid1.Cells[17,ARow]=trim('作废订单')) then AFont.Color:=clred;
     if (DBAdvGrid1.Cells[8,ARow]=trim('是')) then ABrush.Color:=clred;
end;

procedure TYwybbForm.DBAdvGrid1Resize(Sender: TObject);
begin
      DBAdvGrid1.AutoSizeColumns(False,10); //根据内容调节列宽
end;

procedure TYwybbForm.DBAdvGrid3DblClick(Sender: TObject);
begin
      opendata;
end;

procedure TYwybbForm.DBAdvGrid3Resize(Sender: TObject);
begin
      DBAdvGrid3.AutoSizeColumns(False,2); //根据内容调节列宽
end;

procedure TYwybbForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Data1.UniQuery2.Close;
    Data1.cd13.Close;
    Data1.cd12.Close;
end;

procedure TYwybbForm.FormCreate(Sender: TObject);
begin
         DBAdvGrid1.SetStyle(gsOffice2007Luna);
     rpt_path := ExtractFilePath(ParamStr(0)) + '\report\';
     DateTimePicker1.Date:=Now;//StrToDate(IntToStr(YearOf(sdatetime))+'-'+inttostr(MonthOf(sdatetime))+'-01');
     DateTimePicker2.Date:=DateTimePicker1.Date;
//      begindate:=datetostr(sdatetime);//IntToStr(YearOf(sdatetime))+'-'+inttostr(MonthOf(sdatetime))+'-01';
//      enddate:=begindate;
//       sqlstr2:=' and  (a.pddate>='''+begindate+''') and  (a.pddate<='''+datetimetostr(sdatetime)+''') ';
     // opendatas;
     ComboBox1.ItemIndex:=-1;
end;

end.


