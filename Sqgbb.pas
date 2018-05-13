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
    if CheckBox1.Checked then  Data1.cd12.sql.Text := 'select a.pddate as ����,a.shopname as �ŵ�,a.empname as ������,a.bisentid as ������,b.pricename as ��Ʒ,a.sl as ����,a.smoney as ������,a.corpname as �ͻ�,case when a.status=3 then ''��'' else ''��'' end as ����,a.bcmemo as ��������' +
     ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid ' + sqlstr1 + sqlstr2 + ' and (a.empname=''' + data1.UniQuery5.FieldByName('������').AsString + ''') order by a.pddate '
    else
     Data1.cd12.sql.Text := 'select a.pddate as ����,a.shopname as �ŵ�,a.empname as ������,a.bisentid as ������,b.pricename as ��Ʒ,a.sl as ����,a.smoney as ������,a.corpname as �ͻ�,case when a.status=3 then ''��'' else ''��'' end as ����,a.bcmemo as ��������' +
     ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid ' + sqlstr1 + sqlstr2 + ' and (a.shopname=''' + data1.UniQuery5.FieldByName('�ŵ�����').AsString + ''') order by a.pddate ';
  end
  else
  begin
    if CheckBox1.Checked then  Data1.cd12.sql.Text := 'select a.pddate as ����,a.shopname as �ŵ�,a.empname as ������,a.bisentid as ������,b.pricename as ��Ʒ,a.sl as ����,c.sqf*a.sl as ������,a.corpname as �ͻ�,case when a.status=3 then ''��'' else ''��'' end as ����,a.bcmemo as ��������' +
    ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ' + sqlstr1 + sqlstr2 + ' and (a.empname=''' + data1.UniQuery5.FieldByName('������').AsString + ''')  order by a.pddate '
    else  Data1.cd12.sql.Text := 'select a.pddate as ����,a.shopname as �ŵ�,a.empname as ������,a.bisentid as ������,b.pricename as ��Ʒ,a.sl as ����,c.sqf*a.sl as ������,a.corpname as �ͻ�,case when a.status=3 then ''��'' else ''��'' end as ����,a.bcmemo as ��������' +
    ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ' + sqlstr1 + sqlstr2 + ' and (a.shopname=''' + data1.UniQuery5.FieldByName('�ŵ�����').AsString + ''') order by a.pddate ';
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
    begin                                                 //,sum(a.sl) as ���۽��
      sqlstr :='select a.empname as ������,sum(a.sl) as ��������,sum(a.smoney) as ������   from tbisent a  ';
      unstr := 'union all  select ''�ϼ�'' as ������,sum(a.sl) as ��������,sum(a.smoney) as ������ from tbisent a ';
    end
    else
    begin
     sqlstr := 'select a.shopid as �ŵ�ID,a.shopname as �ŵ�����,sum(a.sl) as ��������,sum(a.smoney) as ������   from tbisent a ';
      unstr := 'union all  select ''�ϼ�'' as �ŵ�ID,'''' as �ŵ�����,sum(a.sl) as ��������,sum(a.smoney) as ������ from tbisent a ';
    end;
  end
  else
  begin
    if CheckBox1.Checked then
    begin
      sqlstr := 'select a.empname as ������,sum(a.sl) as ��������,sum(c.sqf*a.sl) as ������   from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ';
      unstr := 'union all  select ''�ϼ�'' as ������,sum(a.sl) as ��������,sum(c.sqf*a.sl) as ������ from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name)';
    end
    else
    begin
     sqlstr := 'select a.shopid as �ŵ�ID,a.shopname as �ŵ�����,sum(a.sl) as ��������,sum(c.sqf*a.sl) as ������   from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ';
     unstr := 'union all  select ''�ϼ�'' as �ŵ�ID,'''' as �ŵ�����,sum(a.sl) as ��������,sum(c.sqf*a.sl) as ������ from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name)';
    end;

  end;
  sqlstr1 := ' where (a.status=1) and (a.type<>''3'') and (a.empname<>''����'') and (a.empname<>'''')  ';     //and (a.smoney<>0)
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
    Data1.cd13.sql.Text := 'select a.shopname as �ŵ�����, a.bisentid as ������,a.empname as ������,a.pddate as �ɵ�����,b.pricename as ��Ʒ,a.corpid as �ͻ�����,a.corpname as �ͻ�,a.address as ��ַ,a.sl as ����,a.smoney as ������,case when a.status=3 then ''��'' else ''��'' end as ����,a.bcmemo as ��������' +
    ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid ' + sqlstr1 + sqlstr2 + ' order by a.pddate '
  else Data1.cd13.sql.Text := 'select a.shopname as �ŵ�����, a.bisentid as ������,a.empname as ������,a.pddate as �ɵ�����,b.pricename as ��Ʒ,a.corpid as �ͻ�����,a.corpname as �ͻ�,a.address as ��ַ,a.sl as ����,c.sqf*a.sl as ������,case when a.status=3 then ''��'' else ''��'' end as ����,a.bcmemo as ��������' +
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
      Data1.sqlcmd11.sql.Text := 'select sum(a.sl) as �����ϼ�,sum(a.smoney) as �����Ѻϼ�' +
     ' from tbisent a  ' + sqlstr1 + sqlstr2 + '';
    end
    else
    begin
      Data1.sqlcmd11.sql.Text := 'select sum(a.sl) as �����ϼ�,sum(c.sqf*a.sl) as �����Ѻϼ�' +
     ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tpriceinfo c on (b.pricename=c.name) ' + sqlstr1 + sqlstr2 + '';
    end;
    Data1.sqlcmd11.Open;
    sl := Data1.sqlcmd11.FieldByName('�����ϼ�').AsString;
    sq := Data1.sqlcmd11.FieldByName('�����Ѻϼ�').AsString;
    Data1.sqlcmd11.Close;
    AddCommonDatasetToAcReport(Data1.cd13, AcRptEngine1, '������ϸ');
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
    ShowSmoothMessage('û�����ݲ������ɱ���', tsOffice2007Luna);

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
      ShowSmoothMessage('�����ɹ���');
    except
      ShowSmoothMessage('����ʧ�ܣ�');
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
      ShowSmoothMessage('�����ɹ���');
    except
      ShowSmoothMessage('����ʧ�ܣ�');
    end;
  end;
end;

procedure TSqgbbForm.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if (DBAdvGrid1.Cells[9, ARow] = trim('��')) then
    ABrush.Color := clRed;
end;

procedure TSqgbbForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False, 2); //�������ݵ����п�
end;

procedure TSqgbbForm.DBAdvGrid3DblClick(Sender: TObject);
begin
  opendata;
end;

procedure TSqgbbForm.DBAdvGrid3Resize(Sender: TObject);
begin
  DBAdvGrid3.AutoSizeColumns(False, 2); //�������ݵ����п�
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


