unit Unit49;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxRibbonForm, cxClasses, dxRibbon, DateUtils, AdvGlowButton, ImgList,
  StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, OleServer, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TForm49 = class(TdxRibbonForm)
    DBAdvGrid1: TDBAdvGrid;
    Edit1: TEdit;
    Label1: TLabel;
    ImageList3: TImageList;
    Label2: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    Label3: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    sSaveDialog1: TSaveDialog;
    Label8: TLabel;
    DBComboBox1: TComboBox;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form49: TForm49;

implementation

uses
  DbUnit, MainUnit, zcomm;   //DateTimeToStr(  IncDay(Now,-30))

{$R *.dfm}


procedure TForm49.AdvGlowButton1Click(Sender: TObject);
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

procedure TForm49.AdvGlowButton2Click(Sender: TObject);
var
  ssql: string;
begin
  if Edit1.Text = '' then  Exit;
  ssql := 'select a.corpid as 客户编号,b.Namec as 客户名称,d.type_name as 客户类型,b.hynumber as 会员卡号,b.tel as 手机号码,'+
  ' b.Contact as 电话号码,b.address as 客户地址,a.optdate as 最后订气时间,c.d as 未订气天数 from tbisent a left join '+
  ' tbCustomer_Info b on a.corpid=b.BarCode right join (select max(a.id) as e,datediff(day,max(a.optdate),GETDATE()) as d '+
  ' from tbisent a left join tbCustomer_Info b on a.corpid=b.BarCode where b.BarCode<>'''' group by a.corpid) c  on(a.id= c.e) '+
  ' left join tbCustomer_type d on b.typec=d.type_id where c.d>'''+Edit1.Text+'''';
  if DBComboBox1.Text<>'' then  ssql := ssql+' and d.type_name='''+DBComboBox1.Text+'''';
  Data1.cc5.Close;
  Data1.cc5.SQL.Text := ssql;
  Data1.cc5.Open;
  Label2.Caption := '记录数：' + inttostr(Data1.cc5.RecordCount) + '条';
    //edit2.Text:=DateTimeToStr(IncDay(Now,-strtoint(Edit1.Text)));
  AdvGlowButton1.Enabled := True;
end;

procedure TForm49.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False, 2); //根据内容调节列宽
end;

procedure TForm49.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then  key:=#0;
end;

procedure TForm49.FormCreate(Sender: TObject);
begin
  DBAdvGrid1.SetStyle(gsOffice2007Luna);
end;

procedure TForm49.FormShow(Sender: TObject);
begin
  AdvGlowButton1.Enabled := False;
end;

end.


