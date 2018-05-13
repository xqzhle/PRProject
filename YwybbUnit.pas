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
      Data1.cd12.SQL.Text:='select a.pddate as �ɵ�����,a.shopname as �ŵ�,a.ywy as ҵ��Ա,a.bisentid as ������,b.pricename as ��Ʒ,b.sl as ����,a.corpname as �ͻ� ,d.ywytc as ҵ��Ա��� '+
      ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tshop c on a.shopid=c.shopid left join tpriceinfo d on (b.pricename=d.name)  '+sqlstr1+sqlstr2+' and (a.ywy='''+data1.UniQuery2.FieldByName('ҵ��Ա').AsString+''') order by a.pddate ';
      Data1.cd12.Open;
end;

procedure TYwybbForm.opendatas;
var
  sstr:string;
begin
      if ComboBox1.Text='' then
      begin
//        ShowSmoothMessage('����ѡ���ŵ�');
//        ComboBox1.SetFocus;
//        exit;
        sstr:='';
      end
      else  sstr:='and (c.shopname='''+combobox1.Text+''')';
      Data1.UniQuery2.Close;
      sqlstr:='select a.ywy as ҵ��Ա ,sum(a.sl) as �ͻ���������,sum(b.ywytc) as ҵ��Ա��� '+
      ' from tbisent a left join tbisentprice d on (a.bisentid=d.bisentid) left join tpriceinfo b on (d.pricename=b.name) left join tshop c on a.shopid=c.shopid';    //left join tbisentprice b on a.bisentid=b.bisentid
      sqlstr1:=' where (a.status=1 or a.status=3) '+sstr+' and (a.ywy is not null) and (a.ywy <> '''' )';
      sqlstr3:=' group by a.ywy order by a.ywy ';
      Data1.UniQuery2.sql.Text:=sqlstr+sqlstr1+sqlstr2+sqlstr3;
      Data1.UniQuery2.Open;
       Data1.cd12.Close;                                                                                                                                               //,case when a.status=3 then ''��'' else ''��'' end as ����,a.bcmemo as ��������
      Data1.cd12.SQL.Text:='select a.pddate as �ɵ�����,a.shopname as �ŵ�,a.ywy as ҵ��Ա,a.bisentid as ������,b.pricename as ��Ʒ,b.sl as ����,a.corpid as �ͻ����,a.corpname as �ͻ����� ,d.ywytc as ҵ���'+
      ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tshop c on a.shopid=c.shopid left join tpriceinfo d on (b.pricename=d.name) '+sqlstr1+sqlstr2+' and (a.ywy='''+data1.UniQuery2.FieldByName('ҵ��Ա').AsString+''') order by a.pddate ';
      Data1.cd12.Open;
//        Data1.cd13.Close;
//      Data1.cd13.SQL.Text:='select a.bisentid as ������,a.ywy as ҵ��Ա,a.pddate as �ɵ�����,b.pricename as ��Ʒ,a.corpid as �ͻ����,a.corpname as �ͻ�,a.address as ��ַ,b.sl as ����,b.dj as ����,b.yfmoney as �Ż�,b.money as �ܽ��,b.smoney as ������'+
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
//      Data1.sqlcmd11.sql.Text:='select sum(a.sl) as �����ϼ�,sum(a.yhmoney) as �Żݺϼ�,sum(a.smoney) as �����Ѻϼ�,sum(a.money) as �ϼƽ��'+
//      ' from tbisent a left join tshop c on a.shopid=c.shopid '+sqlstr1+sqlstr2+'';
//      Data1.sqlcmd11.Open;
//      sl:=Data1.sqlcmd11.FieldByName('�����ϼ�').AsString;
//      yh:=Data1.sqlcmd11.FieldByName('�Żݺϼ�').AsString;
//      sq:=Data1.sqlcmd11.FieldByName('�����Ѻϼ�').AsString;
//      hj:=Data1.sqlcmd11.FieldByName('�ϼƽ��').AsString;
//      Data1.sqlcmd11.Close;
//     sl:=Data1.UniQuery2.FieldByName('�ͻ���������').AsString;
//     hj:=Data1.UniQuery2.FieldByName('ҵ��Ա���').AsString;
     sl:='0';
     hj:='0';
     try
       Data1.UniQuery2.First;
       while not Data1.UniQuery2.Eof do
       begin
         sl:=IntToStr(StrToInt(sl)+strtoint(Data1.UniQuery2.FieldByName('�ͻ���������').AsString));
         hj:=IntToStr(StrToInt(hj)+strtoint(Data1.UniQuery2.FieldByName('ҵ��Ա���').AsString));
         Data1.UniQuery2.Next;
       end;
     except

     end;
     AddCommonDatasetToAcReport(Data1.cd12, AcRptEngine1, '������ϸ');
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
   else ShowSmoothMessage('û�����ݲ������ɱ���',tsOffice2007Luna);

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
       ShowSmoothMessage('�����ɹ���');
       except
         ShowSmoothMessage('����ʧ�ܣ�');
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
       ShowSmoothMessage('�����ɹ���');
       except
         ShowSmoothMessage('����ʧ�ܣ�');
       end;
      end;
end;

procedure TYwybbForm.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    // if (DBAdvGrid1.Cells[17,arow]=trim('ԤԼ����')) then AFont.Color:=clgreen;
    // if (DBAdvGrid1.Cells[17,ARow]=trim('���϶���')) then AFont.Color:=clred;
     if (DBAdvGrid1.Cells[8,ARow]=trim('��')) then ABrush.Color:=clred;
end;

procedure TYwybbForm.DBAdvGrid1Resize(Sender: TObject);
begin
      DBAdvGrid1.AutoSizeColumns(False,10); //�������ݵ����п�
end;

procedure TYwybbForm.DBAdvGrid3DblClick(Sender: TObject);
begin
      opendata;
end;

procedure TYwybbForm.DBAdvGrid3Resize(Sender: TObject);
begin
      DBAdvGrid3.AutoSizeColumns(False,2); //�������ݵ����п�
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


