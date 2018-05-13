unit Sqgbb;

interface

uses
  Windows, Messages, dxRibbonForm, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbon, StdCtrls, Grids, DateUtils,
  AdvObj, AdvGrid, DBAdvGrid, ImgList, AdvGlowButton, ExtCtrls,
  AdvPanel, ComCtrls, AdvGroupBox, AdvOfficeButtons, OleServer, AcReport_TLB,
  AcRptUtils, AdvStyleIF, AdvSmoothMessageDialog, dxSkinsCore, dxSkinsDefaultPainters,
  BaseGrid, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, AdvUtil;

type
  TSqgbbForm = class(TdxRibbonForm)
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
    AdvGlowButton5: TAdvGlowButton;
    sSaveDialog1: TSaveDialog;
    AdvGlowButton7: TAdvGlowButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure DBAdvGrid3Resize(Sender: TObject);
    procedure DBAdvGrid3DblClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
  private
    { Private declarations }
    procedure opendata;
    procedure opendatas;
  public
    { Public declarations }
    //function   GetData(ADataSet:TDataSet):OleVariant;
  end;

var
  SqgbbForm: TSqgbbForm;

implementation

uses
  DbUnit, MainUnit;

{$R *.dfm}
var
  sqlstr, sqlstr1, sqlstr2, sqlstr3, sqlstr4, rpt_path: string;
  begindate, enddate: string;
  sqfbool :Boolean=True;

procedure TSqgbbForm.opendata;
begin
  Data1.cd12.Close;
  if sqfbool then
  begin
    if CheckBox1.Checked then  Data1.cd12.sql.Text := 'select a.pddate as 日期,a.shopname as 门店,a.empname as 送气工,a.bisentid as 订单号,b.pricename as 商品,a.sl as 数量,a.smoney as 送气费,a.corpname as 客户,case when a.status=3 then ''是'' else ''否'' end as 报错单,a.bcmemo as 报错内容' +
     ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid ' + sqlstr1 + sqlstr2 + ' and (a.empname=''' + data1.UniQuery5.FieldByName('送气工').AsString + ''') order by a.pddate '
    else
     Data1.cd12.sql.Text := 'select a.pddate as 日期,a.shopname as 门店,a.empname as 送气工,a.bisentid as 订单号,b.pricename as 商品,a.sl as 数量,a.smoney as 送气费,a.corpname as 客户,case when a.status=3 then ''是'' else ''否'' end as 报错单,a.bcmemo as 报错内容' +
     ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid ' + sqlstr1 + sqlstr2 + ' and (a.shopname=''' + data1.UniQuery5.FieldByName('门店名称').AsString + ''') order by a.pddate ';
  end
  else
  begin
    if CheckBox1.Checked then  Data1.cd12.sql.Text := 'select a.pddate as 日期,a.shopname as 门店,a.empname as 送气工,a.bisentid as 订单号,b.pricename as 商品,a.sl as 数量,c.sqf*a.sl as 送气费,a.corpname as 客户,case when a.status=3 then ''是'' else ''否'' end as 报错单,a.bcmemo as 报错内容' +
    ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ' + sqlstr1 + sqlstr2 + ' and (a.empname=''' + data1.UniQuery5.FieldByName('送气工').AsString + ''')  order by a.pddate '
    else  Data1.cd12.sql.Text := 'select a.pddate as 日期,a.shopname as 门店,a.empname as 送气工,a.bisentid as 订单号,b.pricename as 商品,a.sl as 数量,c.sqf*a.sl as 送气费,a.corpname as 客户,case when a.status=3 then ''是'' else ''否'' end as 报错单,a.bcmemo as 报错内容' +
    ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ' + sqlstr1 + sqlstr2 + ' and (a.shopname=''' + data1.UniQuery5.FieldByName('门店名称').AsString + ''') order by a.pddate ';
  end;
  Data1.cd12.Open;
end;

procedure TSqgbbForm.opendatas;
var
  unstr,orderstr:string;
begin
  Data1.UniQuery5.Close;
  if sqfbool then
  begin
    if CheckBox1.Checked then
    begin                                                 //,sum(a.sl) as 销售金额
      sqlstr :='select a.empname as 送气工,sum(a.sl) as 送气数量,sum(a.smoney) as 送气费   from tbisent a  ';
      unstr := 'union all  select ''合计'' as 送气工,sum(a.sl) as 送气数量,sum(a.smoney) as 送气费 from tbisent a ';
    end
    else
    begin
     sqlstr := 'select a.shopid as 门店ID,a.shopname as 门店名称,sum(a.sl) as 送气数量,sum(a.smoney) as 送气费   from tbisent a ';
      unstr := 'union all  select ''合计'' as 门店ID,'''' as 门店名称,sum(a.sl) as 送气数量,sum(a.smoney) as 送气费 from tbisent a ';
    end;
  end
  else
  begin
    if CheckBox1.Checked then
    begin
      sqlstr := 'select a.empname as 送气工,sum(a.sl) as 送气数量,sum(c.sqf*a.sl) as 送气费   from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ';
      unstr := 'union all  select ''合计'' as 送气工,sum(a.sl) as 送气数量,sum(c.sqf*a.sl) as 送气费 from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name)';
    end
    else
    begin
     sqlstr := 'select a.shopid as 门店ID,a.shopname as 门店名称,sum(a.sl) as 送气数量,sum(c.sqf*a.sl) as 送气费   from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ';
     unstr := 'union all  select ''合计'' as 门店ID,'''' as 门店名称,sum(a.sl) as 送气数量,sum(c.sqf*a.sl) as 送气费 from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name)';
    end;

  end;
  sqlstr1 := ' where (a.status=1) and (a.type<>''3'') and (a.empname<>''自提'') and (a.empname<>'''')  ';     //and (a.smoney<>0)
  if ComboBox1.Text<>'' then
  begin
    with Data1.sds1 do
    begin
      close;
      SQL.Text := 'select shopid from tshop where shopname='''+combobox1.Text+''' ';
      Open;
      if not IsEmpty then
      begin
        sqlstr1 := sqlstr1+' and a.shopid='''+Data1.sds1.FieldByName('shopid').AsString+''' ';
      end;
    end;
  end;
  if CheckBox1.Checked then
  begin
    sqlstr3 := ' group by a.empname ';
  end
  else
  begin
    sqlstr3 := ' group by a.shopid,a.shopname ';
  end;
  orderstr :=' order by sum(a.sl)';
  Data1.UniQuery5.SQL.Text := sqlstr + sqlstr1 + sqlstr2 + sqlstr3+unstr+ sqlstr1 + sqlstr2+orderstr;
  Data1.UniQuery5.Open;
  opendata;
  Data1.cd13.Close;
  if sqfbool then
    Data1.cd13.sql.Text := 'select a.shopname as 门店名称, a.bisentid as 订单号,a.empname as 送气工,a.pddate as 派单日期,b.pricename as 商品,a.corpid as 客户条码,a.corpname as 客户,a.address as 地址,a.sl as 数量,a.smoney as 送气费,case when a.status=3 then ''是'' else ''否'' end as 报错单,a.bcmemo as 报错内容' +
    ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid ' + sqlstr1 + sqlstr2 + ' order by a.pddate '
  else Data1.cd13.sql.Text := 'select a.shopname as 门店名称, a.bisentid as 订单号,a.empname as 送气工,a.pddate as 派单日期,b.pricename as 商品,a.corpid as 客户条码,a.corpname as 客户,a.address as 地址,a.sl as 数量,c.sqf*a.sl as 送气费,case when a.status=3 then ''是'' else ''否'' end as 报错单,a.bcmemo as 报错内容' +
    ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ' + sqlstr1 + sqlstr2 + ' order by a.pddate ';
  Data1.cd13.Open;

end;

procedure TSqgbbForm.AdvGlowButton1Click(Sender: TObject);
var
  sl, Sq: string;
begin
  if Data1.cd13.RecordCount > 0 then
  begin
    Data1.sqlcmd11.Close;
    if sqfbool then
    begin
      Data1.sqlcmd11.sql.Text := 'select sum(a.sl) as 数量合计,sum(a.smoney) as 送气费合计' +
     ' from tbisent a  ' + sqlstr1 + sqlstr2 + '';
    end
    else
    begin
      Data1.sqlcmd11.sql.Text := 'select sum(a.sl) as 数量合计,sum(c.sqf*a.sl) as 送气费合计' +
     ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ' + sqlstr1 + sqlstr2 + '';
    end;
    Data1.sqlcmd11.Open;
    sl := Data1.sqlcmd11.FieldByName('数量合计').AsString;
    sq := Data1.sqlcmd11.FieldByName('送气费合计').AsString;
    Data1.sqlcmd11.Close;
    AddCommonDatasetToAcReport(Data1.cd13, AcRptEngine1, '送气明细');
    AcRptEngine1.AddVariable('sl', sl);
    AcRptEngine1.AddVariable('sq', sq);
    AcRptEngine1.AddVariable('user', usName);
    AcRptEngine1.AddVariable('bdate', begindate);
    AcRptEngine1.AddVariable('enddate', enddate);
    ACRptEngine1.SetReportFile(rpt_path + 'mainsqgrb.apt');
     //AcRptEngine1.ShowDesigner;
    AcRptEngine1.Preview;
  end
  else
    ShowSmoothMessage('没有数据不能生成报表！', tsOffice2007Luna);

end;

procedure TSqgbbForm.AdvGlowButton2Click(Sender: TObject);
begin
  begindate := datetostr(Now);
  enddate := datetostr(Now);
  sqlstr2 := ' and  (a.hddate>=''' + datetostr(Now) + ''') and  (a.hddate<=''' + datetimetostr(Now) + ''')';
  opendatas;
end;

procedure TSqgbbForm.AdvGlowButton3Click(Sender: TObject);
begin
  begindate := datetostr(strtodate(IntToStr(YearOf(Now)) + '-' + inttostr(MonthOf(Now)) + '-01'));
  enddate := datetostr(Now);
  sqlstr2 := ' and  (a.hddate>=''' + begindate + ''') and  (a.hddate<=''' + datetimetostr(Now) + ''') ';

  opendatas;
end;

procedure TSqgbbForm.AdvGlowButton4Click(Sender: TObject);
begin
  sqlstr2 := ' and ((a.hddate>=''' + datetimetostr(DateTimePicker1.Datetime) + ''') and (a.hddate<=''' + datetimetostr(DateTimePicker2.Datetime) + '''))';
  opendatas;
end;

procedure TSqgbbForm.AdvGlowButton5Click(Sender: TObject);
begin
  if sSaveDialog1.Execute then
  begin
    try
      if pos('.', ssavedialog1.FileName) > 0 then
        dbadvgrid3.SaveToXLS(ssavedialog1.FileName)
      else
        dbadvgrid3.SaveToXLS(ssavedialog1.FileName + '.xls');
      ShowSmoothMessage('导出成功！');
    except
      ShowSmoothMessage('导出失败！');
    end;
  end;
end;

procedure TSqgbbForm.AdvGlowButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TSqgbbForm.AdvGlowButton7Click(Sender: TObject);
begin
  if sSaveDialog1.Execute then
  begin
    try
      if pos('.', ssavedialog1.FileName) > 0 then
        dbadvgrid1.SaveToXLS(ssavedialog1.FileName)
      else   dbadvgrid1.SaveToXLS(ssavedialog1.FileName + '.xls');
      ShowSmoothMessage('导出成功！');
    except
      ShowSmoothMessage('导出失败！');
    end;
  end;
end;

procedure TSqgbbForm.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if (DBAdvGrid1.Cells[9, ARow] = trim('是')) then
    ABrush.Color := clRed;
end;

procedure TSqgbbForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False, 2); //根据内容调节列宽
end;

procedure TSqgbbForm.DBAdvGrid3DblClick(Sender: TObject);
begin
  opendata;
end;

procedure TSqgbbForm.DBAdvGrid3Resize(Sender: TObject);
begin
  DBAdvGrid3.AutoSizeColumns(False, 2); //根据内容调节列宽
end;

procedure TSqgbbForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.UniQuery5.Close;
  Data1.cd12.Close;
  Data1.cd13.Close;
end;

procedure TSqgbbForm.FormCreate(Sender: TObject);
begin
  DBAdvGrid1.SetStyle(gsOffice2007Luna);
  rpt_path := ExtractFilePath(ParamStr(0)) + '\report\';
  DateTimePicker1.Date := Now; //StrToDate(IntToStr(YearOf(sdatetime))+'-'+inttostr(MonthOf(sdatetime))+'-01');
  DateTimePicker2.Date := DateTimePicker1.Date;
  Data1.ClientDataSet1.Close;
  Data1.ClientDataSet1.sql.Text:='select sqfbool from Info';
  Data1.ClientDataSet1.Open;
  if not Data1.ClientDataSet1.IsEmpty then
  begin
    sqfbool:= Data1.ClientDataSet1.FieldByName('sqfbool').AsBoolean;
  end;
end;

procedure TSqgbbForm.FormShow(Sender: TObject);
begin

//      begindate:=datetostr(sdatetime);//IntToStr(YearOf(sdatetime))+'-'+inttostr(MonthOf(sdatetime))+'-01';
//      enddate:=begindate;
//       sqlstr2:=' and  (a.hddate>='''+begindate+''') and  (a.hddate<='''+datetimetostr(sdatetime)+''') ';
//      opendatas;
end;

end.


