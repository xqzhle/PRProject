unit XstypeUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,DateUtils,
  cxGridTableView, cxGridDBTableView, cxGrid, W7Classes, W7Panels, Grids,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, ImgList, AdvGlowButton, ComCtrls,
  StdCtrls,cxGridExportLink, frxClass, frxDBSet, ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, tmsAdvGridExcel, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, AdvUtil;

type
  TXstypeForm = class(TForm)
    W7Panel1: TW7Panel;
    W7Panel2: TW7Panel;
    DBAdvGrid1: TDBAdvGrid;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    AdvGlowButton4: TAdvGlowButton;
    ImageList3: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column18: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    cxGrid1DBTableView1Column12: TcxGridDBColumn;
    cxGrid1DBTableView1Column13: TcxGridDBColumn;
    cxGrid1DBTableView1Column15: TcxGridDBColumn;
    cxGrid1DBTableView1Column14: TcxGridDBColumn;
    cxGrid1DBTableView1Column16: TcxGridDBColumn;
    cxGrid1DBTableView1Column17: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RadioButton3: TRadioButton;
    AdvGlowButton11: TAdvGlowButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Panel1: TPanel;
    DBAdvGrid2: TDBAdvGrid;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    frxDBDataset2: TfrxDBDataset;
    SaveDialog1: TSaveDialog;
    AdvGlowButton6: TAdvGlowButton;
    AdvGridExcelIO1: TAdvGridExcelIO;
    CheckBox1: TCheckBox;
    cxGrid1DBTableView1Column19: TcxGridDBColumn;
    Label7: TLabel;
    ComboBox1: TComboBox;
    AdvGlowButton7: TAdvGlowButton;
    AdvGridExcelIO2: TAdvGridExcelIO;
    AdvGlowButton8: TAdvGlowButton;
    frxDBDataset3: TfrxDBDataset;
    CheckBox2: TCheckBox;
    Label3: TLabel;
    RadioButton4: TRadioButton;
    cxGrid1DBTableView1Column20: TcxGridDBColumn;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Getxsbb(order:Integer);
  public
    { Public declarations }
  end;

var
  XstypeForm: TXstypeForm;

implementation
uses DbUnit;
{$R *.dfm}
var
  stype:Integer;
  wstr :string;

procedure TXstypeForm.AdvGlowButton11Click(Sender: TObject);
begin
  if  not Data1.UniQuery4.IsEmpty then
  begin
    try
      if SaveDialog1.Execute then  ExportGridToEXCEL(SaveDialog1.FileName,cxGrid1,True,True);
      ShowMessage('导出成功！');
    except
      ShowMessage('导出失败！');
    end;
  end
  else ShowMessage('没有数据不能导出！');
end;

procedure TXstypeForm.AdvGlowButton1Click(Sender: TObject);
begin
  if not Data1.UniQuery5.IsEmpty then
  begin
    frxReport1.DataSet:=frxDBDataset2;
    frxReport1.LoadFromFile('report/order.fr3'); //Picture1
    frxReport1.ShowReport;
  end;
end;

procedure TXstypeForm.AdvGlowButton2Click(Sender: TObject);
begin
  if RadioButton1.Checked then stype:=1;
  if RadioButton2.Checked then stype:=2;
  if RadioButton3.Checked then stype:=3;
  if RadioButton4.Checked then stype:=4;
  Getxsbb(2);
end;

procedure TXstypeForm.AdvGlowButton3Click(Sender: TObject);
begin
   if RadioButton1.Checked then stype:=1;
   if RadioButton2.Checked then stype:=2;
   if RadioButton3.Checked then stype:=3;
   if RadioButton4.Checked then stype:=4;
   Getxsbb(3);
end;

procedure TXstypeForm.AdvGlowButton4Click(Sender: TObject);
begin
   if RadioButton1.Checked then stype:=1;
   if RadioButton2.Checked then stype:=2;
   if RadioButton3.Checked then stype:=3;
   if RadioButton4.Checked then stype:=4;
   Getxsbb(1);
end;

procedure TXstypeForm.AdvGlowButton5Click(Sender: TObject);
begin
  if not Data1.UniQuery4.IsEmpty then
  begin
    frxReport1.DataSet:=frxDBDataset1;
    frxReport1.LoadFromFile('report/xiaoshuo.fr3'); //Picture1
    (frxReport1.FindObject('Memo1') as TfrxMemoView).Text := FormatDateTime('yyyy年mm月dd日', DateTimePicker1.Date)+'--'+FormatDateTime('yyyy年mm月dd日', DateTimePicker2.Date)+'销售明细表';
    frxReport1.ShowReport;
  end;
end;

procedure TXstypeForm.AdvGlowButton6Click(Sender: TObject);
begin
  if Data1.UniQuery5.IsEmpty then
  begin
    ShowMessage('没有数据不能导出');
    Exit;
  end;
  if SaveDialog1.Execute then
  begin
    try
      if pos('.', savedialog1.FileName) > 0 then
        AdvGridExcelIO1.XLSExport(savedialog1.FileName)
      else
        AdvGridExcelIO1.XLSExport(savedialog1.FileName + '.xls');
      ShowMessage('导出成功！');
    except
      on E: Exception do
      begin
        ShowMessage('导出失败？');
      end;
    end;
  end;
end;

procedure TXstypeForm.AdvGlowButton7Click(Sender: TObject);
begin
  if Data1.UniQuery6.IsEmpty then
  begin
    ShowMessage('没有数据不能导出');
    Exit;
  end;
  if SaveDialog1.Execute then
  begin
    try
      if pos('.', savedialog1.FileName) > 0 then
        AdvGridExcelIO2.XLSExport(savedialog1.FileName)
      else  AdvGridExcelIO2.XLSExport(savedialog1.FileName + '.xls');
      ShowMessage('导出成功！');
    except
      on E: Exception do
      begin
        ShowMessage('导出失败？');
      end;
    end;
  end;
end;

procedure TXstypeForm.AdvGlowButton8Click(Sender: TObject);
begin
  if not Data1.UniQuery6.IsEmpty then
  begin
    frxReport1.DataSet:=frxDBDataset3;
    frxReport1.LoadFromFile('report/xstj.fr3'); //Picture1
    (frxReport1.FindObject('Memo1') as TfrxMemoView).Text := FormatDateTime('yyyy年mm月dd日', DateTimePicker1.Date)+'--'+FormatDateTime('yyyy年mm月dd日', DateTimePicker2.Date)+'销售统计表';
    frxReport1.ShowReport;
  end;
end;

procedure TXstypeForm.ComboBox1Click(Sender: TObject);
begin
  if ComboBox1.Text<>'' then
  begin
    with Data1.sds1 do
    begin
      close;
      SQL.Text := 'select shopid from tshop where shopname='''+combobox1.Text+''' ';
      Open;
      if not IsEmpty then
      begin
        Edit1.Text := Data1.sds1.FieldByName('shopid').AsString;
      end;
      Close;
      ComboBox2.Clear;
      SQL.Text:='select EmpName from tAchEmployee where shopid='''+Edit1.Text+''' ';
      Open;
      if not IsEmpty then
      begin
        while not Eof do
        begin
          ComboBox2.Items.Add(Data1.sds1.FieldByName('EmpName').AsString);
          Data1.sds1.Next;
        end;
      end;
      Close;
    end;
  end
  else Edit1.Text :='';
end;

procedure TXstypeForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False,5); //根据内容调节列宽
end;

procedure TXstypeForm.DBAdvGrid2DblClick(Sender: TObject);
var
  sqlstr,sqlstr2,sstr:string; //,date1,date2
  mdtc:Real;
  i:Integer;
begin
  if not Data1.UniQuery6.IsEmpty then
  begin
    sstr:='';
//    date1:=datetostr(DateTimePicker1.Date)+' 00:00:00';
//    date2:=datetostr(DateTimePicker2.Date)+' 23:59:59';
//    if CheckBox1.Checked then
//    begin
//      wstr := ' and (a.optdate>='''+date1+''') and  (a.optdate<='''+date2+''') ';
//    end
//    else wstr := ' and (a.hddate>='''+date1+''') and  (a.hddate<='''+date2+''')';
    mdtc:=0;
    case DBAdvGrid2.Col of
      5:  sstr := ' and a.Fsktype=0 ';
      6:  sstr := ' and a.Fsktype=1 ';
      7:  sstr := ' and a.Fsktype=2 ';
    end;
    if stype=1 then
    begin
      if Data1.UniQuery6.FieldByName('aa').AsString<>'999' then sstr := sstr+' and c.TypeC ='''+Data1.UniQuery6.FieldByName('aa').AsString+''' ';
      sqlstr:='select a.empname as 送气工,a.bisentid as 订单号,a.shopname  as 门店名称,a.optdate as 订气时间,a.hddate as 完成时间,b.pricename as 商品,a.corpid as 客户编号,a.corpname as 客户,'+
      ' d.Type_Name as 客户类型,c.hynumber as 会员卡号,a.address as 地址,b.sl as 数量,b.dj as 单价,b.yfmoney as 优惠,b.glmoney as 租瓶费,b.smoney as 送气费,b.money as 总金额'+
      ' ,case when a.Fsktype=0 then ''现金'' when a.Fsktype=1 then ''微信支付'' when a.Fsktype=2 then ''刷卡支付'' end as 收款方式,e.mdf*a.sl as 门店提成,a.memo as 备注 from tbisent a left join '+
      ' tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.BarCode left join tbCustomer_Type d on c.TypeC=d.Type_ID left join tpriceinfo e on (b.pricename=e.name) where (a.status=1) and (a.type<>''3'') '+sstr+wstr+' Order By a.shopid,a.id desc';
      sqlstr2:= 'select  b.pricename as 商品名称,b.dj as 商品价格 ,count(a.bisentid) as 订单数量,sum(b.sl) as 销售瓶数,sum(b.glmoney) as 租瓶费,sum(b.yfmoney) as 优惠金额, '+
       ' SUM(b.smoney) as 送气费,sum(b.money) as 合计金额 from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.BarCode'+
       ' where (a.status=1) and (a.type<>''3'') '+sstr+wstr+' group by b.dj,b.pricename order by b.dj ';
    end
    else if stype=2 then
    begin
      if Data1.UniQuery6.FieldByName('shopid').AsString<>'999' then sstr := sstr+' and a.shopid ='''+Data1.UniQuery6.FieldByName('shopid').AsString+''' ';
      sqlstr:='select a.empname as 送气工,a.bisentid as 订单号,a.shopname  as 门店名称,a.optdate as 订气时间,a.hddate as 完成时间,b.pricename as 商品,a.corpid as 客户编号,a.corpname as 客户,'+
      ' d.Type_Name as 客户类型,c.hynumber as 会员卡号,a.address as 地址,b.sl as 数量,b.dj as 单价,b.yfmoney as 优惠,b.glmoney as 租瓶费,b.smoney as 送气费,b.money as 总金额'+
      ' ,case when a.Fsktype=0 then ''现金'' when a.Fsktype=1 then ''微信支付'' when a.Fsktype=2 then ''刷卡支付'' end as 收款方式,e.mdf*a.sl as 门店提成,a.memo as 备注 from tbisent a left join '+
      ' tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.BarCode left join tbCustomer_Type d on c.TypeC=d.Type_ID left join tpriceinfo e on (b.pricename=e.name) where (a.status=1) and (a.type<>''3'') '+sstr+wstr+' Order By a.shopid,a.id desc';
      sqlstr2:= 'select  b.pricename as 商品名称,b.dj as 商品价格 ,count(a.bisentid) as 订单数量,sum(b.sl) as 销售瓶数,sum(b.glmoney) as 租瓶费,sum(b.yfmoney) as 优惠金额, '+
       ' SUM(b.smoney) as 送气费,sum(b.money) as 合计金额 from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.BarCode'+
       ' where (a.status=1) and (a.type<>''3'') '+sstr+wstr+' group by b.dj,b.pricename order by b.dj ';
    end
    else if stype=3 then
    begin
      if Data1.UniQuery6.FieldByName('dd').AsString<>'合计' then sstr := sstr+' and b.pricename ='''+Data1.UniQuery6.FieldByName('dd').AsString+''' ';
      sqlstr:='select a.empname as 送气工,a.bisentid as 订单号,a.shopname  as 门店名称,a.optdate as 订气时间,a.hddate as 完成时间,b.pricename as 商品,a.corpid as 客户编号,a.corpname as 客户,'+
      ' d.Type_Name as 客户类型,c.hynumber as 会员卡号,a.address as 地址,b.sl as 数量,b.dj as 单价,b.yfmoney as 优惠,b.glmoney as 租瓶费,b.smoney as 送气费,b.money as 总金额'+
      ' ,case when a.Fsktype=0 then ''现金'' when a.Fsktype=1 then ''微信支付'' when a.Fsktype=2 then ''刷卡支付'' end as 收款方式,e.mdf*a.sl as 门店提成,a.memo as 备注 from tbisent a left join '+
      ' tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.BarCode left join tbCustomer_Type d on c.TypeC=d.Type_ID left join tpriceinfo e on (b.pricename=e.name) where (a.status=1) and (a.type<>''3'') '+sstr+wstr+' Order By a.shopid,a.id desc';
      sqlstr2:= 'select  b.pricename as 商品名称,b.dj as 商品价格 ,count(a.bisentid) as 订单数量,sum(b.sl) as 销售瓶数,sum(b.glmoney) as 租瓶费,sum(b.yfmoney) as 优惠金额, '+
       ' SUM(b.smoney) as 送气费,sum(b.money) as 合计金额 from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.BarCode'+
       ' where (a.status=1) and (a.type<>''3'') '+sstr+wstr+' group by b.dj,b.pricename order by b.dj ';
    end
    else if stype=4 then
    begin
      if Data1.UniQuery6.FieldByName('dd').AsString<>'合计' then
      begin
        if Data1.UniQuery6.FieldByName('dd').AsString ='' then  sstr := sstr+' and a.empname is null '
        else sstr := sstr+' and a.empname ='''+Data1.UniQuery6.FieldByName('dd').AsString+''' ';
      end;
      sqlstr:='select a.empname as 送气工,a.bisentid as 订单号,a.shopname  as 门店名称,a.optdate as 订气时间,a.hddate as 完成时间,b.pricename as 商品,a.corpid as 客户编号,a.corpname as 客户,'+
      ' d.Type_Name as 客户类型,c.hynumber as 会员卡号,a.address as 地址,b.sl as 数量,b.dj as 单价,b.yfmoney as 优惠,b.glmoney as 租瓶费,b.smoney as 送气费,b.money as 总金额'+
      ' ,case when a.Fsktype=0 then ''现金'' when a.Fsktype=1 then ''微信支付'' when a.Fsktype=2 then ''刷卡支付'' end as 收款方式,e.mdf*a.sl as 门店提成,a.memo as 备注 from tbisent a left join '+
      ' tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.BarCode left join tbCustomer_Type d on c.TypeC=d.Type_ID left join tpriceinfo e on (b.pricename=e.name) where (a.status=1) and (a.type<>''3'') '+sstr+wstr+' Order By a.shopid,a.id desc';
      sqlstr2:= 'select  b.pricename as 商品名称,b.dj as 商品价格 ,count(a.bisentid) as 订单数量,sum(b.sl) as 销售瓶数,sum(b.glmoney) as 租瓶费,sum(b.yfmoney) as 优惠金额, '+
       ' SUM(b.smoney) as 送气费,sum(b.money) as 合计金额 from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.BarCode'+
       ' where (a.status=1) and (a.type<>''3'') '+sstr+wstr+' group by b.dj,b.pricename order by b.dj ';
    end;
    with Data1.UniQuery4 do
    begin
      close;
      SQL.Text:=sqlstr;
      Open;
//      if not IsEmpty then
//      begin
//        try
//          for I := 0 to RecordCount-1 do
//          begin
//            if Data1.UniQuery4.FieldByName('门店提成').AsString<>'' then  mdtc := mdtc+Data1.UniQuery4.FieldByName('门店提成').AsFloat;
//            Data1.UniQuery4.Next;
//          end;
//        except
//
//        end;
//        Data1.UniQuery4.First;
//      end;
      Label3.Caption:='订单数量:'+inttostr(Data1.UniQuery4.RecordCount);  //  +'，门店提成:'+FloatToStr(mdtc)
    end;
    with Data1.UniQuery5 do
    begin
      close;
      SQL.Text:=sqlstr2;
      Open;
//      Label6.Caption:='订单数量:'+inttostr(Data1.UniQuery4.RecordCount);
    end;
  end;
end;

procedure TXstypeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  data1.UniQuery4.Close;
  Data1.UniQuery6.Close;
  Data1.UniQuery5.Close;
  Label3.Caption := '';
end;

procedure TXstypeForm.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date:=now;
  DateTimePicker2.Date:=Now;
  Label3.Caption := '';
  ComboBox2.Clear;
  Edit1.Clear;
end;

procedure TXstypeForm.Getxsbb(order:Integer);
var
  sqlstr,date1,date2:string; //wstr
  i:Integer;
begin
  if order=1 then
  begin
    date1:=datetostr(DateTimePicker1.Date)+' 00:00:00';
    date2:=datetostr(DateTimePicker2.Date)+' 23:59:59';
  end
  else if order=2 then
  begin
    DateTimePicker1.Date:=Now;
    DateTimePicker2.Date:=Now;
    date1:=datetostr(Now)+' 00:00:00';
    date2:=datetostr(Now)+' 23:59:59';
  end
  else
  begin
    date1:=datetostr(strtodate(IntToStr(YearOf(Now))+'-'+inttostr(MonthOf(Now))+'-01'));
    date2:=datetostr(Now);
    DateTimePicker1.Date:=StrToDate(date1);
    DateTimePicker2.Date:=StrToDate(date2);
    date1:=date1+' 00:00:00';
    date2:=date2+' 23:59:59';
  end;
  if CheckBox1.Checked then
  begin
    wstr := ' and (a.optdate>='''+date1+''') and  (a.optdate<='''+date2+''') ';
  end
  else wstr := ' and (a.hddate>='''+date1+''') and  (a.hddate<='''+date2+''')';
  if (ComboBox1.Text<>'') and (Edit1.Text<>'') then
  begin
    wstr := wstr+' and a.shopid='''+Edit1.Text+''' ';
  end;
  if (ComboBox2.Text<>'') then
  begin
    wstr := wstr+' and a.empname='''+ComboBox2.Text+''' ';
  end;
  if stype=1 then
  begin                                // or a.status=3
    sqlstr:='select case when c.Type_Name is null then ''未知客户类型'' else c.Type_Name end as dd,c.Type_ID as aa,count(a.id) as ee,sum(a.sl) as ff,'+
     ' SUM(a.money) as cc,SUM(case when a.Fsktype=0 then a.money else 0 end) as gg,SUM(case when a.Fsktype=1 then a.money else 0 end) as bb, '+
     ' sum(case when A.Fsktype=2 then a.money else 0 end) as sk from tbisent a left join tbCustomer_Info b on a.corpid=b.BarCode left join '+
     ' tbCustomer_Type c on b.TypeC=c.Type_ID  where (a.status=1) and (a.type<>''3'') '+wstr+'  group by c.Type_Name,c.Type_ID union all  select ''合计'' as dd,''999'' as aa,count(*) as ee,sum(b.sl) as ff,sum(b.money) as cc,sum(case when A.Fsktype=0 then a.money else 0 end) as gg, '+
      ' sum(case when A.Fsktype=1 then a.money else 0 end) as bb,sum(case when A.Fsktype=2 then a.money else 0 end) as sk from tbisent a left join tbisentprice b on a.bisentid=b.bisentid  where (a.status=1)  and (a.type<>''3'')'+wstr;
    if CheckBox2.Checked then  sqlstr := sqlstr+' order by cc desc'
    else   sqlstr := sqlstr+' order by c.Type_ID';
  end
  else if stype=2 then
  begin                                                                                                                        //b.dj as 单价,sum(b.yfmoney) as 优惠,sum(b.glmoney) as 租瓶费,  ,sum(b.smoney) as 送气费
    sqlstr:='select  case when c.shopname='''' then ''自带瓶充装'' else c.shopname end  as dd, CAST(case when a.shopid='''' then ''0'' else a.shopid end AS DECIMAL) as shopid, '+
      ' count(a.bisentid) as ee,sum(b.sl) as ff,sum(b.money) as cc,sum(case when A.Fsktype=0 then a.money else 0 end) as gg,'+
      ' sum(case when A.Fsktype=1 then a.money else 0 end) as bb,sum(case when A.Fsktype=2 then a.money else 0 end) as sk'+
      ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tshop c on (a.shopid=c.shopid) where (a.status=1)  and (a.type<>''3'') '+   //and (b.pricename<>''送气不成功收送气费'')
      ' '+wstr+' group by c.shopname,a.shopid union all  select ''合计'' as dd,''999'' as shopid,count(*) as ee,sum(b.sl) as ff,sum(b.money) as cc,sum(case when A.Fsktype=0 then a.money else 0 end) as gg, '+
      ' sum(case when A.Fsktype=1 then a.money else 0 end) as bb,sum(case when A.Fsktype=2 then a.money else 0 end) as sk from tbisent a left join tbisentprice b on a.bisentid=b.bisentid  where (a.status=1)  and (a.type<>''3'')'+wstr;
    if CheckBox2.Checked then  sqlstr := sqlstr+' order by cc desc'
    else   sqlstr := sqlstr+' order by a.shopid';
  end
  else if stype=3 then
  begin                                                                                                                        //b.dj as 单价,sum(b.yfmoney) as 优惠,sum(b.glmoney) as 租瓶费,  ,sum(b.smoney) as 送气费
    sqlstr:='select  b.pricename as dd,count(a.bisentid) as ee,sum(b.sl) as ff,sum(b.money) as cc,sum(case when A.Fsktype=0 then a.money else 0 end) as gg,sum(case when A.Fsktype=1 then a.money else 0 end) as bb, '+
     ' sum(case when A.Fsktype=2 then a.money else 0 end) as sk '+
     ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid where (a.status=1) and (a.type<>''3'') '+wstr+' group by b.pricename union all  select ''合计'' as dd,count(*) as ee,sum(b.sl) as ff,sum(b.money) as cc,sum(case when A.Fsktype=0 then a.money else 0 end) as gg, '+
     ' sum(case when A.Fsktype=1 then a.money else 0 end) as bb,sum(case when A.Fsktype=2 then a.money else 0 end) as sk from tbisent a left join tbisentprice b on a.bisentid=b.bisentid  where (a.status=1)  and (a.type<>''3'')'+wstr;
    if CheckBox2.Checked then  sqlstr := sqlstr+' order by cc desc'
    else   sqlstr := sqlstr+' order by ff';
  end
  else if stype=4 then
  begin                                                                                                                        //b.dj as 单价,sum(b.yfmoney) as 优惠,sum(b.glmoney) as 租瓶费,  ,sum(b.smoney) as 送气费
    sqlstr:='select  a.empname as dd,count(a.bisentid) as ee,sum(b.sl) as ff,sum(b.money) as cc,sum(case when A.Fsktype=0 then a.money else 0 end) as gg,sum(case when A.Fsktype=1 then a.money else 0 end) as bb, '+
     ' sum(case when A.Fsktype=2 then a.money else 0 end) as sk '+
     ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid where (a.status=1) and (a.type<>''3'') '+wstr+' group by a.empname union all  select ''合计'' as dd,count(*) as ee,sum(b.sl) as ff,sum(b.money) as cc,sum(case when A.Fsktype=0 then a.money else 0 end) as gg, '+
     ' sum(case when A.Fsktype=1 then a.money else 0 end) as bb,sum(case when A.Fsktype=2 then a.money else 0 end) as sk from tbisent a left join tbisentprice b on a.bisentid=b.bisentid  where (a.status=1)  and (a.type<>''3'')'+wstr;
    if CheckBox2.Checked then  sqlstr := sqlstr+' order by cc desc'
    else   sqlstr := sqlstr+' order by ff';
  end;
  i:=0;
  Data1.UniQuery6.Close;
  Data1.UniQuery6.SQL.Text:=sqlstr;
  Data1.UniQuery6.Open;
  Data1.UniQuery4.Close;
  Data1.UniQuery5.Close;
end;

end.
