unit BaseInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ImgList, ComCtrls, RzButton, ExtCtrls,
  Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, AdvUtil;

type
  TBaseInfoForm = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker3: TDateTimePicker;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    RzToolButton2: TRzToolButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    RzToolButton3: TRzToolButton;
    DBAdvGrid2: TDBAdvGrid;
    RzToolButton4: TRzToolButton;
    sSaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure DBAdvGrid2Resize(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure SelectBase(stype:Boolean);
  public
    { Public declarations }
  end;

var
  BaseInfoForm: TBaseInfoForm;

implementation
uses DbUnit,uDBJson;
{$R *.dfm}

procedure TBaseInfoForm.ComboBox1Change(Sender: TObject);
begin
  ComboBox2.ItemIndex := ComboBox1.ItemIndex;
end;

procedure TBaseInfoForm.DBAdvGrid2Resize(Sender: TObject);
begin
  DBAdvGrid2.AutoSizeColumns(False,20); //根据内容调节列宽
end;

procedure TBaseInfoForm.Edit1Enter(Sender: TObject);
begin
  Edit2.Clear;
end;

procedure TBaseInfoForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
//  if not (Key in['0'..'9',#8,#13]) then  key:=#0;
end;

procedure TBaseInfoForm.Edit2Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TBaseInfoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WebBrowser1.OleObject.document.parentWindow.execScript('clearAll()','JavaScript'); //清空所有覆盖物
  if DBAdvGrid2.Visible then Data1.ds71.close;
end;

procedure TBaseInfoForm.FormCreate(Sender: TObject);
begin
   webbrowser1.Navigate(ExtractFilePath(application.ExeName)+'Html/baseinfo.html');
   ComboBox1.Clear;
   ComboBox2.Clear;
   ComboBox3.Clear;
   Edit1.Clear;
   Edit2.Clear;
   DateTimePicker1.Date := Now;
   DateTimePicker3.Date := Now;
   DBAdvGrid2.Visible := False;
end;

procedure TBaseInfoForm.RzToolButton1Click(Sender: TObject);
begin
  if (Edit1.Text='') and (Edit2.Text='') then Exit;
  SelectBase(False);
end;

procedure TBaseInfoForm.RzToolButton2Click(Sender: TObject);
begin
  SelectBase(True);
end;

procedure TBaseInfoForm.RzToolButton3Click(Sender: TObject);
var
   wherestr:string;
begin
  WebBrowser1.Visible := False;
  DBAdvGrid2.Visible := True;
  wherestr := ' and a.pddate>='''+DateToStr(DateTimePicker1.Date)+''' and a.pddate<='''+DateTimeToStr(DateTimePicker3.DateTime)+''' ';
  if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') then  wherestr := wherestr+' and a.shopid='''+combobox2.Text+''' ';
  if (ComboBox3.Text<>'') then  wherestr := wherestr+' and a.empname='''+combobox3.Text+''' ';
  Data1.ds71.close;
  Data1.ds71.SQL.Text := 'SELECT a.bisentid as 订单号,a.optid as 下单方,a.shopname as 受理店面,case when a.type=''2'' then ''加急订单'' when a.type=''3'' then ''作废订单'' when a.type=''1'' then ''预约订单'' else ''普通订单'' end as 订单类型,'+
  ' b.pricename as 商品名称,b.sl as 数量,case when a.status=''0'' then ''未派工'' when a.status=''2'' then ''未回单'' when a.status=''3'' then ''报错'' else ''已完成'' end as 状态,' +
  ' a.corpid as 客户编号,a.corpname as 客户名称,a.tel as 客户电话,a.empname as 送气工,a.address as 地址,' +    //开户人
  ' Char(39)+a.zpbar as 重瓶条码,Char(39)+a.kpbar as 空瓶条码,a.optdate as 订气时间,a.pddate as 派工时间,a.hddate as 回单时间' +
  ' FROM tbisent a left join tbisentprice b on a.bisentid=b.bisentid where (a.status=''2'' or a.status=''1'') and (a.type<>''3'') and a.Fdw is null '+wherestr;
  Data1.ds71.Open;
  StatusBar1.Panels[1].Text := '共：'+Inttostr(Data1.ds71.RecordCount)+'条记录';
  StatusBar1.Panels[3].Text := '共：0条数据';

end;

procedure TBaseInfoForm.RzToolButton4Click(Sender: TObject);
begin
  if Data1.ds71.IsEmpty then  Exit;
  if sSaveDialog1.Execute then
  begin
    try
      if pos('.', ssavedialog1.FileName) > 0 then
        dbadvgrid2.SaveToXLS(ssavedialog1.FileName)
      else
        dbadvgrid2.SaveToXLS(ssavedialog1.FileName + '.xls');
      ShowMessage('导出成功！');
    except
      ShowMessage('导出失败！');
    end;
  end;
end;

procedure TBaseInfoForm.SelectBase(stype: Boolean);
var
 str,wherestr:string;
begin
  WebBrowser1.Visible := True;
  DBAdvGrid2.Visible := False;
  wherestr := ' and a.pddate>='''+DateToStr(DateTimePicker1.Date)+''' and a.pddate<='''+DateTimeToStr(DateTimePicker3.DateTime)+''' ';
  if stype then
  begin
    if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') then  wherestr := wherestr+' and a.shopid='''+combobox2.Text+''' ';
    if (ComboBox3.Text<>'') then  wherestr := wherestr+' and a.empname='''+combobox3.Text+''' ';
  end
  else
  begin
    if Edit1.Text<>'' then  wherestr := wherestr+' and (a.corpid='''+Edit1.Text+''' or a.corpname='''+Edit1.Text+''' or a.tel='''+Edit1.Text+''') ';
    if Edit2.Text<>'' then  wherestr := wherestr+' and (a.bisentid='''+Edit2.Text+''') ';
  end;
  WebBrowser1.SetFocus ;
  WebBrowser1.OleObject.document.parentWindow.execScript('clearAll()','JavaScript'); //清空所有覆盖物
  with Data1.sds1 do
  begin
    Close;
    SQL.Text:='SELECT count(a.id) as sl FROM tbisent a  where (a.status=''2'' or a.status=''1'') and (a.type<>''3'') '+wherestr;
    Open;
    if not IsEmpty then
    begin
      StatusBar1.Panels[1].Text := '共：'+data1.sds1.FieldByName('sl').AsString+'条数据';
    end
    else StatusBar1.Panels[1].Text := '共：0条数据';
    close;
    SQL.Text:='SELECT bisentid,a.corpid as bh,REPLACE(REPLACE(REPLACE(a.corpname,CHAR(9),''''),CHAR(10),''''),CHAR(13),'''') as namec,a.empname as sqg,wd=cast(left(Fdw,charindex('','',Fdw+'','')-1) as nvarchar(100)), '+
    ' jd = CAST(STUFF(Fdw, 1, CHARINDEX('','', Fdw), '''') AS NVARCHAR(100)), '+
    ' CONVERT(VARCHAR(24), a.pddate,120) as pddate,REPLACE(REPLACE(REPLACE(a.Address,CHAR(9),''''),CHAR(10),''''),CHAR(13),'''') as address FROM tbisent a  where a.Fdw<>'''' and (a.status=''2'' or a.status=''1'') and (a.type<>''3'') '+wherestr;
    Open;
    if not IsEmpty then
    begin
      str :=  JSonFromDataSet(data1.sds1);
      StatusBar1.Panels[3].Text := '共：'+inttostr(RecordCount)+'条定位数据';
      WebBrowser1.OleObject.document.parentWindow.execScript('doLocate('''+str+''')','JavaScript'); //返回覆盖物个数
    end
    else StatusBar1.Panels[3].Text := '共：0条数据';
    close;
  end;
end;

end.
