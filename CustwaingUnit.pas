unit CustwaingUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxRibbonForm, cxClasses, dxRibbon, AdvGlowButton, ImgList,
  StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, OleServer, cxGraphics,
  dxSkinsDefaultPainters, ExtCtrls, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, AdvUtil;

type
  TCustwaingForm = class(TdxRibbonForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBAdvGrid1: TDBAdvGrid;
    Edit1: TEdit;
    Label1: TLabel;
    ImageList3: TImageList;
    AdvGlowButton2: TAdvGlowButton;
    Label3: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    sSaveDialog1: TSaveDialog;
    Label8: TLabel;
    DBComboBox1: TComboBox;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    ComboBox3: TComboBox;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustwaingForm: TCustwaingForm;

implementation

uses
  DbUnit;   //DateTimeToStr(  IncDay(Now,-30))

{$R *.dfm}


procedure TCustwaingForm.AdvGlowButton1Click(Sender: TObject);
begin
//  if data1.cc5.RecordCount > 0 then
//  begin
//    Data1.cc5.DisableControls;
//    AcRptEngine1.Init;
//    AcRptEngine1.AddVariable('us', usname);
//    AddCommonDatasetToAcReport(Data1.cc5, AcRptEngine1, 'sse');
//    AcRptEngine1.SetReportFile(ExtractFilePath(ParamStr(0)) + '\report\wre.apt');
//      //  AcRptEngine1.ShowDesigner;
//    AcRptEngine1.Preview;
//    Data1.cc5.EnableControls;
//  end;
  if data1.cc5.RecordCount > 0 then
  begin
    if sSaveDialog1.Execute then
    begin
       try
          if  pos('.', ssavedialog1.FileName)>0 then  dbadvgrid1.SaveToXLS(ssavedialog1.FileName)
          else   dbadvgrid1.SaveToXLS(ssavedialog1.FileName+'.xls');
          ShowMessage('导出成功！');
       except
         ShowMessage('导出失败！');
       end;
    end;
  end;
end;

procedure TCustwaingForm.AdvGlowButton2Click(Sender: TObject);
var
  ssql: string;
begin
  if Edit1.Text = '' then  Exit;
  ssql := 'select e.shopname as 所属门店,a.corpid as 客户编号,b.Namec as 客户名称,d.type_name as 客户类型,b.hynumber as 会员卡号,b.tel as 手机号码,b.sqg as 送气工,'+
  ' b.Contact as 电话号码,b.address as 客户地址,a.optdate as 最后订气时间,c.d as 未订气天数 from tbisent a left join '+
  ' tbCustomer_Info b on a.corpid=b.BarCode right join (select max(a.id) as e,datediff(day,max(a.optdate),GETDATE()) as d '+
  ' from tbisent a left join tbCustomer_Info b on a.corpid=b.BarCode where b.BarCode<>'''' group by a.corpid) c  on(a.id= c.e) '+
  ' left join tbCustomer_type d on b.typec=d.type_id left join tshop e on b.psid=e.shopid where c.d>'''+Edit1.Text+'''';
  if DBComboBox1.Text<>'' then  ssql := ssql+' and d.type_name='''+DBComboBox1.Text+'''';
  if ComboBox1.Text<>'' then  ssql := ssql+' and e.shopname='''+ComboBox1.Text+''' ';
  if ComboBox2.Text<>'' then  ssql := ssql+' and b.sqg='''+ComboBox2.Text+''' ';
  Data1.cc5.Close;
  Data1.cc5.SQL.Text := ssql+' order by c.d desc';
  Data1.cc5.Open;
  DBAdvGrid1.AutoSizeColumns(False, 10); //根据内容调节列宽
  Panel2.Caption := '记录数：' + inttostr(Data1.cc5.RecordCount) + '条';
    //edit2.Text:=DateTimeToStr(IncDay(Now,-strtoint(Edit1.Text)));
  AdvGlowButton1.Enabled := True;
end;

procedure TCustwaingForm.ComboBox1Click(Sender: TObject);
begin
  ComboBox3.ItemIndex :=ComboBox1.ItemIndex;
    ComboBox2.Clear;
    Data1.ClientDataSet1.Close;
    Data1.ClientDataSet1.SQL.Text:='select EmpName from tAchEmployee where shopid='''+ComboBox3.Text+''' ';
    Data1.ClientDataSet1.Open;
    if not Data1.ClientDataSet1.IsEmpty then
    begin
        while not Data1.ClientDataSet1.Eof do
        begin
          ComboBox2.Items.Add(Data1.ClientDataSet1.FieldByName('EmpName').AsString);
          Data1.ClientDataSet1.Next;
        end;
    end;
    Data1.ClientDataSet1.Close;
end;

procedure TCustwaingForm.DBAdvGrid1Resize(Sender: TObject);
begin
//  DBAdvGrid1.AutoSizeColumns(False, 10); //根据内容调节列宽
end;

procedure TCustwaingForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then  key:=#0;
end;

procedure TCustwaingForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.cc5.Close;
end;

procedure TCustwaingForm.FormCreate(Sender: TObject);
begin
  DBAdvGrid1.SetStyle(gsOffice2007Luna);
end;

procedure TCustwaingForm.FormShow(Sender: TObject);
begin
  AdvGlowButton1.Enabled := False;
end;

end.


