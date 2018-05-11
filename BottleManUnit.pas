unit BottleManUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvPanel, ComCtrls, AdvNavBar, AdvGlowButton, DB, ADODB,
  Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, StdCtrls, DBAdvNavigator, ImgList,
  cxGraphics, Menus, AdvMenus, PRRead_TLBUnit, AdvUtil;

type
  TBottleManForm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanel2: TAdvPanel;
    AdvNavBar1: TAdvNavBar;
    AdvNavBarPanel1: TAdvNavBarPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    AdvPanel3: TAdvPanel;
    DBAdvGrid1: TDBAdvGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Label15: TLabel;
    DateTimePicker3: TDateTimePicker;
    Label16: TLabel;
    DateTimePicker4: TDateTimePicker;
    AdvGlowButton15: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    cxImageList1: TcxImageList;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton18: TAdvGlowButton;
    sSaveDialog1: TSaveDialog;
    Label3: TLabel;
    Edit1: TEdit;
    AdvPopupMenu1: TAdvPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    AdvPopupMenu2: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    AdvPopupMenu3: TAdvPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    AdvPopupMenu4: TAdvPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    AdvPopupMenu5: TAdvPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    AdvPopupMenu6: TAdvPopupMenu;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    AdvPopupMenu7: TAdvPopupMenu;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    AdvStringGrid1: TAdvStringGrid;
    Query2: TADOQuery;
    AdvGlowButton19: TAdvGlowButton;
    AdvGlowButton20: TAdvGlowButton;
    AdvGlowButton21: TAdvGlowButton;
    AdvGlowButton22: TAdvGlowButton;
    AdvGlowButton23: TAdvGlowButton;
    Label4: TLabel;
    ComboBox1: TComboBox;
    AdvGlowButton24: TAdvGlowButton;
    AdvGlowButton25: TAdvGlowButton;
    AdvGlowButton26: TAdvGlowButton;
    Panel1: TPanel;
    Panel2: TPanel;
    DBAdvGrid2: TDBAdvGrid;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Query1: TADOQuery;
    ADOQuery3: TADOQuery;
    Label7: TLabel;
    Label8: TLabel;
    AdvPopupMenu8: TAdvPopupMenu;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    Panel3: TPanel;
    Label9: TLabel;
    ComboBox2: TComboBox;
    AdvGlowButton27: TAdvGlowButton;
    AdvGlowButton28: TAdvGlowButton;
    AdvGlowButton29: TAdvGlowButton;
    AdvGlowButton30: TAdvGlowButton;
    AdvGlowButton31: TAdvGlowButton;
    Sp: TADOStoredProc;
    Panel12: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    PageSizebox: TComboBox;
    SelPageBox: TComboBox;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton18Click(Sender: TObject);
    procedure AdvGlowButton17Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure AdvStringGrid1GetAlignment(Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton19Click(Sender: TObject);
    procedure AdvGlowButton20Click(Sender: TObject);
    procedure AdvGlowButton21Click(Sender: TObject);
    procedure AdvGlowButton22Click(Sender: TObject);
    procedure AdvGlowButton23Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure AdvGlowButton12Click(Sender: TObject);
    procedure AdvGlowButton13Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure AdvGlowButton24Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure AdvGlowButton15Click(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure AdvGlowButton27Click(Sender: TObject);
    procedure AdvGlowButton28Click(Sender: TObject);
    procedure AdvGlowButton29Click(Sender: TObject);
    procedure AdvGlowButton30Click(Sender: TObject);
    procedure AdvGlowButton31Click(Sender: TObject);
    procedure PageSizeboxChange(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure SelPageBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBAdvGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure selsql;
    procedure Getxx(str,qzstr:string);
    procedure selectbottle(const pages: Integer);
    var
      sqlstr, sqlstr1, sqlstr1add, sqlstr2, sqlstr2add,fromstr: string;
  public
    { Public declarations }

  end;

var
  BottleManForm: TBottleManForm;
 // shang_log_port,shang_log_compute,shang_log_sa,shang_log_password,shang_log_table:string;//记录数据库登陆数据

implementation

uses
  MainUnit,DbUnit,zcomm, IniFiles, BottleinfoUnit,unit22, ShellAPI,bottlesmUnit;

{$R *.dfm}
var
  shopid: string = '';
  shopname: string = '';
  cxbool:Boolean;
  Pagecurrent:Integer=0;  // 当前页
  Pagecount:Integer=0;    //总页数

procedure TBottleManForm.selectbottle(const pages: Integer);
var
 fdname:string;
 rows:Integer;
begin
   fdname:='a.ID';
   Sp.Close;
   sp.ProcedureName:='PageShowOne;1';
   sp.Parameters.Refresh;
   sp.Parameters.ParamByName('@PageSize').Value:=StrToInt(PageSizebox.Text);
   sp.Parameters.ParamByName('@PageCurrent').Value:=pages;
   sp.Parameters.ParamByName('@FdName').Value:=fdname;
   sp.Parameters.ParamByName('@fromstr').Value:=fromstr;
   sp.Parameters.ParamByName('@selectstr').Value:=sqlstr;
   sp.Parameters.ParamByName('@orderbystr').Value:= ' a.id desc';
   sp.Parameters.ParamByName('@wherestr').Value:=sqlstr1;
   sp.Open;
   rows:=Sp.Parameters.ParamValues['@CountRows']  ;
   Pagecount:=Sp.Parameters. ParamValues['@CountPage'];
    Pagecurrent:=pages;
   Label23.Caption:=Format('共 %D 条记录',[rows]);
   Label24.Caption:=Format('/ %D页 ',[pagecount]);
   label25.Caption:=Format('%D',[pages]);
   SelPageBox.Items.Clear;
   for rows := 1 to Pagecount do
   SelPageBox.Items.Add('第'+IntToStr(rows)+'页');
end;

procedure TBottleManForm.SelPageBoxChange(Sender: TObject);
begin
  if SelPageBox.ItemIndex=-1 then Exit;
   if Pagecurrent=SelPageBox.ItemIndex+1 then Exit;
   Selectbottle(SelPageBox.ItemIndex+1);
end;

procedure TBottleManForm.selsql;
var
  s,wherestr,date1,date2: string;
begin
  Panel12.Visible := True;
  if Edit1.Visible=False then
  begin
    Label3.Visible:=True;
    Label5.Visible:=True;
    Edit1.Visible:=True;
    Edit2.Visible:=True;
  end;
  s := StatusBar1.Panels[8].Text;
  AdvStringGrid1.Visible := False;
  DBAdvGrid1.Visible := True;
  panel2.visible := True;
  if s = '' then
  begin
    sqlstr := '';
    sqlstr1 := '';
    sqlstr2 := '';
    sqlstr2add := '';
  end;
  if cxbool then wherestr :=' and a.qzid='''+shopid+''' '
  else wherestr:='';
  date1 := DateToStr(DateTimePicker3.Datetime)+' 00:00:00';
  date2 := DateToStr(DateTimePicker4.Datetime)+' 23:59:59';
  if s = AdvGlowButton1.Caption then
  begin
    sqlstr := ' a.id as id,b.BottleBar as 钢瓶标签,a.BottleBar as 钢瓶编号,b.gptm as 钢瓶条码,c.namec as 气站名称,d.shopname as 装车门店,A.CDate as 入库时间, A.Carid as 入库车号, A.CUser as 入库用户工号,case when b.Instate=3 then ''待检'' when b.Instate=1 then ''报废''  else ''正常'' end as 钢瓶状态 ';
    fromstr :=' tbZTKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id left join tshop d on a.shopid=d.shopid ';
    if cxbool then  sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') and a.qzid='''+shopid+''' ' + sqlstr1add
    else sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') ' + sqlstr1add;
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbZTKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime)+' 23:59:59' + ''') '+wherestr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
  end;
  if s = AdvGlowButton29.Caption then
  begin
    sqlstr := ' d.shopname as 门店信息,b.BottleBar as 钢瓶标签,b.Bottleid as 钢瓶编号,b.gptm as 钢瓶条码,a.CarCode as 车牌号,A.CreateDate as 空瓶装车时间, A.CreateUser as 装车用户';
    fromstr :=' tbMDKPZC a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tshop d on a.ShopCode=d.shopid ';
    sqlstr1:='';
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbMDKPZC a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id  group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
  end;
  if s = AdvGlowButton31.Caption then
  begin
    sqlstr := ' c.namec as 气站名称,b.BottleBar as 钢瓶标签,b.Bottleid as 钢瓶编号,b.gptm as 钢瓶条码,a.Carid as 车牌号,A.CDate as 重瓶出库时间, A.cuser as 装车用户';
    fromstr :=' tbZTZPOUT a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id ';
    sqlstr1:='';
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbZTZPOUT a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id  group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
  end;
  if s = AdvGlowButton2.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;                                       //and (a.ctsn='''+Form1.log_czid+''')
    sqlstr := ' a.id as id,b.BottleBar as 钢瓶标签,a.BottleBar as 钢瓶编号,b.gptm as 钢瓶条码,c.namec as 气站名称,A.CDate as 充装时间,A.CUser as 充装用户,a.ctsn as 充装台秤,a.cz as 充装工号,a.czzl as 充装重量 ';
    fromstr := ' tbZTQPCZTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id  ';
    if cxbool then  sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') and a.qzid='''+shopid+''' ' + sqlstr1add
    else sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') ' + sqlstr1add;
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbZTQPCZTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime)+' 23:59:59' + ''') '+wherestr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
  end;
  if s = AdvGlowButton27.Caption then
  begin
    sqlstr := ' b.BottleBar as 钢瓶标签,a.BottleBar as 钢瓶编号,b.gptm as 钢瓶条码,c.namec as 气站名称,A.CDate as 入库时间, A.Carid as 入库车号, A.CUser as 入库用户工号,case when b.Instate=3 then ''待检'' when b.Instate=1 then ''报废''  else ''正常'' end as 钢瓶状态 ';
    fromstr := ' tbZTKPIN a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id ';
    if cxbool then  sqlstr1 := ' a.qzid='''+shopid+''' '
    else sqlstr1 := '';
    if cxbool then wherestr :=' where a.qzid='''+shopid+''' '
    else wherestr:='';
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbZTKPIN a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id '+wherestr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
  end;
  if s = AdvGlowButton28.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;                                       //and (a.ctsn='''+Form1.log_czid+''')
    sqlstr := ' b.BottleBar as 钢瓶标签,a.BottleBar 钢瓶编号,b.gptm as 钢瓶条码,c.namec as 气站名称,A.CDate as 充装时间,A.CUser as 充装用户,a.cz as 充装工号,a.czzl as 充装重量 ';
    fromstr := ' tbZTQPCZ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id  ';
    if cxbool then  sqlstr1 := ' a.qzid='''+shopid+''' '// + sqlstr1add
    else sqlstr1 := '';
    if cxbool then wherestr :=' where a.qzid='''+shopid+''' '
    else wherestr:='';
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbztqpcz a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id '+wherestr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
  end;
  if s = AdvGlowButton16.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;                                       //and (a.ctsn='''+Form1.log_czid+''')                                                              //,a.case when a.Instate=1 then ''合格'' else ''不合格'' end as 检查结果
    sqlstr := ' a.id as id,b.BottleBar as 钢瓶标签,a.BottleBar as 钢瓶编号,b.gptm as 钢瓶条码,c.namec as 气站名称, A.CDate as 入库时间,A.CUser as 充装用户,a.ctsn as 充装台秤,'+
    ' a.cz as 充装工号,a.czzl as 充装重量,a.fmstype as 阀门检查,a.wgstype as 外观检查,case when a.fmstype=''合格'' and a.wgstype=''合格'' then ''合格'' else ''不合格'' end as 检查结果 ';
    fromstr :=' tbZTQPCZTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id  ';
    if cxbool then  sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') and a.stype=1 and a.qzid='''+shopid+''' ' + sqlstr1add
    else  sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') and a.stype=1 ' + sqlstr1add;
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbZTQPCZTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and '+
       ' (A.CDate<=''' + datetostr(DateTimePicker4.Datetime)+' 23:59:59' + ''') and a.stype=1 '+wherestr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
//    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbZTQPCZTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' + ' from tbZTQPCZTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
//      ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' + ' from tbZTQPCZTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton3.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr :=' b.BottleBar as 钢瓶标签,a.BottleBar as 钢瓶编号,b.gptm as 钢瓶条码,c.namec as 气站名称, A.CDate as 入库时间, A.Carid as 入库车号, A.CUser as 入库用户工号 ';
    fromstr := ' tbZTZPIN a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id ';
    if cxbool then  sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') and a.qzid='''+shopid+''' ' + sqlstr1add
    else sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') ' + sqlstr1add;
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbZTZPIN a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and '+
       ' (A.CDate<=''' + datetostr(DateTimePicker4.Datetime)+' 23:59:59' + ''') '+wherestr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
//    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbZTZPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' + ' from tbZTZPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
//      ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' + ' from tbZTZPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton4.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;               // and (a.bottlebar<>:c)
    sqlstr := ' a.id as id,b.BottleBar as 钢瓶标签,a.BottleBar as 钢瓶编号,b.gptm as 钢瓶条码,c.namec as 气站名称, A.CDate as 出库时间, A.Carid as 出库车号, A.CUser as 出库用户工号 ';
    fromstr :=' tbZTZPoutTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id ';
    if cxbool then  sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') and a.qzid='''+shopid+''' ' + sqlstr1add
    else sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') ' + sqlstr1add;
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbZTZPoutTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and '+
       ' (A.CDate<=''' + datetostr(DateTimePicker4.Datetime)+' 23:59:59' + ''') '+wherestr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
//    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbZTZPout a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' + ' from tbZTZPout a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
//      ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' + ' from tbZTZPout a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton5.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;                                                    //,djsn as 调拨单号,pzr as 批准人
    sqlstr := ' b.BottleBar as 钢瓶标签,a.BottleBar as 钢瓶编号,b.gptm as 钢瓶条码,c.namec as 气站名称, A.CDate as 出库时间, A.Carid as 出库车号, A.CUser as 出库用户工号 ';
    fromstr :=' tbZTKPout a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id ';
    if cxbool then  sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') and a.qzid='''+shopid+''' ' + sqlstr1add
    else sqlstr1 := ' (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') ' + sqlstr1add;
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbZTKPout a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and '+
       ' (A.CDate<=''' + datetostr(DateTimePicker4.Datetime)+' 23:59:59' + ''') '+wherestr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
//    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbZTKPout a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' + ' from tbZTKPout a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
//      ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' + ' from tbZTKPout a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton7.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;                                           //a.bottleid as 气瓶编号,
    sqlstr := ' b.BottleBar as 钢瓶标签,a.BottleBar as 钢瓶编号,b.gptm as 钢瓶条码,c.namec as 气站名称,A.CUser as 送检用户工号,a.shopid as 车牌号,A.CDate as 送检时间 ';
    fromstr :=' tbZTQPJC a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id   ';
    if cxbool then  sqlstr1 := ' (a.ttype=''1'') and (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') and a.qzid='''+shopid+''' ' + sqlstr1add
    else sqlstr1 := ' (a.ttype=''1'') and (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') ' + sqlstr1add;
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbZTQPJC a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and '+
       ' (A.CDate<=''' + datetostr(DateTimePicker4.Datetime)+' 23:59:59' + ''') and (a.ttype=''1'') '+wherestr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
//    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbZTQPJC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopid=d.shopid where (a.ttype=''1'') and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' +
//      ' from tbZTQPJC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (a.ttype=''1'') and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' + ' from tbZTQPJC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
//      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (a.ttype=''1'') and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton8.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr := ' b.BottleBar as 钢瓶标签,a.BottleBar as 钢瓶编号,b.gptm as 钢瓶条码,c.namec as 气站名称,case when a.stype=''0'' then ''合格'' when a.stype=''1'' then ''报废'' else ''未知'' end as 送检结果, A.CUser as 送检用户工号,a.shopid as 车牌号码,A.CDate as 送检时间 ';
    fromstr :=' tbZTQPJC a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid left join tbQizhan_Info c on a.qzid=c.id  ';
    if cxbool then  sqlstr1 := ' (a.ttype=''0'') and (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') and a.qzid='''+shopid+''' ' + sqlstr1add
    else sqlstr1 := ' (a.ttype=''0'') and (A.CDate>='''+date1+''') and (A.CDate<='''+date2+''') ' + sqlstr1add;
    sqlstr2:='select c.Spec_Name as 钢瓶类型,COUNT(a.id) as 钢瓶数量 from tbZTQPJC a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id where (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and '+
       ' (A.CDate<=''' + datetostr(DateTimePicker4.Datetime)+' 23:59:59' + ''') and (a.ttype=''0'') '+wherestr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID';
//    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbZTQPJC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopid=d.shopid where (a.ttype=''0'') and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' +
//      ' from tbZTQPJC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (a.ttype=''0'') and  (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' + ' from tbZTQPJC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
//      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (a.ttype=''0'') and  (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton19.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr := 'select a.shopid as 门店编号,b.shopname as 门店名称,A.BottleBar as 气瓶条码,a.carid as 车牌号码,a.cdate as 装车时间,a.cuser as 装车用户 from tbczzpzctj a left join tshop b on a.shopid=b.shopid  ';
    sqlstr1 := 'where  (A.CDate>=:a) and (A.CDate<=:b) and (a.shopid=:c)' + sqlstr1add;
    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbczzpzctj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopid=d.shopid where   (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' +
      ' from tbczzpzctj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where   (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' +
      ' from tbczzpzctj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where   (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton20.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr := 'select a.shopid as 门店编号,b.shopname as 门店名称,A.BottleBar as 气瓶条码,a.carid as 车牌号码,a.cdate as 配送时间,a.cuser as 配送用户 from tbczzpps a left join tshop b on a.shopid=b.shopid  ';
    sqlstr1 := 'where  (A.CDate>=:a) and (A.CDate<=:b)  and (a.shopid=:c)' + sqlstr1add;
    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbczzpps a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopid=d.shopid where  (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' +
      ' from tbczzpps a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where   (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' +
      ' from tbczzpps a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where   (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton21.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr := 'select a.shopid as 门店编号,b.shopname as 门店名称,A.BottleBar as 气瓶条码,a.carid as 车牌号码,a.cdate as 上车时间,a.cuser as 上车用户 from tbCZKPINTJ a left join tshop b on a.shopid=b.shopid  ';
    sqlstr1 := 'where  (A.CDate>=:a) and (A.CDate<=:b)  and (a.shopid=:c)' + sqlstr1add;
    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbCZKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopid=d.shopid where  (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' +
      ' from tbCZKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where   (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' +
      ' from tbCZKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where   (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton22.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr := 'select a.shopid as 门店编号,b.shopname as 门店名称,A.BottleBar as 气瓶条码,a.carid as 车牌号码,a.cdate as 下车时间,a.cuser as 下车用户 from tbCZKPOUT a left join tshop b on a.shopid=b.shopid  ';
    sqlstr1 := 'where  (A.CDate>=:a) and (A.CDate<=:b)  and (a.shopid=:c)' + sqlstr1add;
    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbCZKPOUT a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopid=d.shopid where  (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' +
      ' from tbCZKPOUT a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where   (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' +
      ' from tbCZKPOUT a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where   (a.shopid=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton9.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr := 'Select A.ShopCode as 门店编号,c.shopname as 门店名称, A.BottleBar as 气瓶条码,A.CarCode as 车牌号码,A.CDate as 下车日期,' + 'A.Createuser as 操作用户  From tbMDZPXC A  left join tshop c on a.shopcode=c.shopid ';
    sqlstr1 := 'where  (A.CDate>=:a) and (A.CDate<=:b)  and (a.shopcode=:c)' + sqlstr1add;
    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbMDZPXC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopCode=d.shopid where  (a.shopCode=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' +
      ' from tbMDZPXC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopCode=d.shopid where   (a.shopCode=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' +
      ' from tbMDZPXC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopCode=d.shopid where   (a.shopCode=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton10.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr := 'Select a.shopcode as 门店编号,c.shopname as 门店名称,a.BottleBar as 气瓶条码,a.OutDate as 售出日期,a.CarCode as 装车车牌,a.outuser as 经手人  From tbSale_Out a left join tshop c on a.shopcode=c.shopid ';
    sqlstr1 := 'where  (A.outDate>=:a) and (A.outDate<=:b) and (a.shopcode=:c)' + sqlstr1add;
    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbSale_Out a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopCode=d.shopid where  (a.shopCode=''' + shopid + ''')  and (A.outDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.outDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' +
      ' from tbSale_Out a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopCode=d.shopid where   (a.shopCode=''' + shopid + ''')  and (A.outDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.outDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' +
      ' from tbSale_Out a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopCode=d.shopid where   (a.shopCode=''' + shopid + ''')  and (A.outDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.outDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton11.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr := 'Select   A.ShopCode as 门店编号,c.shopname as 门店名称,A.BottleBar as 气瓶条码, A.InDate as 回仓日期, A.CreateUser as 经手人' + '  From tbStock_In A left join tbuser_info b on b.userid=a.Createuser left join tshop c on a.shopcode=c.shopid ';
    sqlstr1 := 'where  (A.inDate>=:a) and (A.inDate<=:b) and (a.shopcode=:c)' + sqlstr1add;
    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbStock_In a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopCode=d.shopid where  (a.shopCode=''' + shopid + ''')  and (A.inDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.inDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' +
      ' from tbStock_In a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopCode=d.shopid where   (a.shopCode=''' + shopid + ''')  and (A.inDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.inDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' +
      ' from tbStock_In a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopCode=d.shopid where   (a.shopCode=''' + shopid + ''')  and (A.inDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.inDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton12.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr := 'Select A.ShopCode as 门店编号,c.shopname as 门店名称, A.BottleBar as 气瓶条码, A.CDate as 出租日期, A.CUser as 经手人 ' + ' From tbMDQPZC A  left join tshop c on a.shopcode=c.shopid  ';
    sqlstr1 := 'where  (A.CDate>=:a) and (A.CDate<=:b) and (a.shopcode=:c)' + sqlstr1add;
    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbMDQPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopCode=d.shopid where  (a.shopCode=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw ' +
      ' from tbMDQPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopCode=d.shopid where   (a.shopCode=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' +
      ' from tbMDQPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopCode=d.shopid where   (a.shopCode=''' + shopid + ''')  and (A.CDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
  if s = AdvGlowButton13.Caption then
  begin
    label7.Visible := False;
    Label8.Visible := False;
    sqlstr := 'Select A.ShopCode as 门店编号,c.shopname as 门店名称, A.BottleBar as 气瓶条码, A.CarCode as 车牌号码, a.Createuser as 经手人, ' + 'A.CreateDate as 装车日期 From tbMDKPZC A  left join tshop c on a.shopcode=c.shopid ';
    sqlstr1 := 'where  (A.CreateDate>=:a) and (A.CreateDate<=:b) and (a.shopcode=:c)' + sqlstr1add;
    sqlstr2 := 'select * from (select count(a.bottlebar) as ws ' + ' from tbMDKPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id  left join tshop d on a.shopCode=d.shopid where  (a.shopCode=''' + shopid + ''')  and (A.CreateDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CreateDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and  (c.spec_name=''YSP-50'') ' + sqlstr2add + ' ) as ws,' + '(select count(a.bottlebar) as sw '
      + ' from tbMDKPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopCode=d.shopid where   (a.shopCode=''' + shopid + ''')  and (A.CreateDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CreateDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-15'') ' + sqlstr2add + ' ) as sw ,' + ' (select count(a.bottlebar) as w ' +
      ' from tbMDKPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopCode=d.shopid where   (a.shopCode=''' + shopid + ''')  and (A.CreateDate>=''' + datetostr(DateTimePicker3.Datetime) + ''') and (A.CreateDate<=''' + datetostr(DateTimePicker4.Datetime) + ''')  and (c.spec_name=''YSP-5'') ' + sqlstr2add + ' ) as w';
  end;
end;

procedure TBottleManForm.AdvGlowButton10Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton10.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := sqlstr + SQLSTR1;
    ADOQuery1.Parameters.ParamByName('a').Value := DateTimePicker3.Datetime;
    ADOQuery1.Parameters.ParamByName('b').Value := DateTimePicker4.Datetime;
    ADOQuery1.Parameters.ParamByName('c').Value := shopid;
    ADOQuery1.Open;
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton11Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton11.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    sqlstr1add := '';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := sqlstr + SQLSTR1;
    ADOQuery1.Parameters.ParamByName('a').Value := DateTimePicker3.Datetime;
    ADOQuery1.Parameters.ParamByName('b').Value := DateTimePicker4.Datetime;
    ADOQuery1.Parameters.ParamByName('c').Value := shopid;
    ADOQuery1.Open;

    sqlstr2add := '';
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton12Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton12.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    sqlstr1add := '';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := sqlstr + SQLSTR1;
    ADOQuery1.Parameters.ParamByName('a').Value := DateTimePicker3.Datetime;
    ADOQuery1.Parameters.ParamByName('b').Value := DateTimePicker4.Datetime;
    ADOQuery1.Parameters.ParamByName('c').Value := shopid;
    ADOQuery1.Open;

    sqlstr2add := '';
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton13Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton13.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    sqlstr1add := '';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := sqlstr + SQLSTR1;
    ADOQuery1.Parameters.ParamByName('a').Value := DateTimePicker3.Datetime;
    ADOQuery1.Parameters.ParamByName('b').Value := DateTimePicker4.Datetime;
    ADOQuery1.Parameters.ParamByName('c').Value := shopid;
    ADOQuery1.Open;

    sqlstr2add := '';
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton14Click(Sender: TObject);
var
  sqltxt: string;
begin
  StatusBar1.Panels[8].Text := AdvGlowButton6.Caption;
  DBAdvGrid1.Visible := False;
  panel2.visible := False;
  AdvStringGrid1.ColCount := 4;
  AdvStringGrid1.ColWidths[1] := 161;
  AdvStringGrid1.ColWidths[2] := 161;
  AdvStringGrid1.ColWidths[3] := 161;
  AdvStringGrid1.RowCount := 9;
  AdvStringGrid1.ClearAll;
  AdvStringGrid1.Cells[0, 0] := shopname;
  AdvStringGrid1.Cells[0, 1] := '门店重瓶下车';
  AdvStringGrid1.Cells[0, 2] := '门店重瓶配送';
  AdvStringGrid1.Cells[0, 3] := '门店空瓶回收';
  AdvStringGrid1.Cells[0, 5] := '门店空瓶上车';
  // AdvStringGrid1.Cells[0,5]:='门店空瓶下车';
  AdvStringGrid1.Cells[0, 4] := '门店气瓶出租';
  AdvStringGrid1.Cells[0, 6] := '门店重瓶库存';
  AdvStringGrid1.Cells[0, 7] := '门店空瓶库存';
  // AdvStringGrid1.Cells[0,9]:='站台气瓶送检';
  // AdvStringGrid1.Cells[0,10]:='气瓶送检完成';
  AdvStringGrid1.Cells[1, 0] := '50公斤';
  AdvStringGrid1.Cells[2, 0] := '15公斤';
  AdvStringGrid1.Cells[3, 0] := '5公斤';
  AdvStringGrid1.Visible := true;
  sqltxt := 'select * from (select count(a.bottlebar) as ws ' + 'from tbmdzpxctj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-50'') and (shopid=''' + shopid + ''')) as ws ,' + '(select count(a.bottlebar) as sw ' + 'from tbmdzpxctj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-15'') and (shopid=''' + shopid + ''')) as sw ,' + '(select count(a.bottlebar) as w ' + 'from tbmdzpxctj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-5'') and (shopid=''' + shopid + ''')) as w';
  Query2.Close;
  Query2.SQL.Text := sqltxt;
  Query2.Open;
  AdvStringGrid1.Cells[1, 1] := Query2.FieldByName('ws').AsString;
  AdvStringGrid1.Cells[2, 1] := Query2.FieldByName('sw').AsString;
  AdvStringGrid1.Cells[3, 1] := Query2.FieldByName('w').AsString;
  sqltxt := 'select * from (select count(a.bottlebar) as ws ' + 'from tbSale_Out a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-50'') and (shopid=''' + shopid + ''')) as ws ,' + '(select count(a.bottlebar) as sw ' + 'from tbSale_Out a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-15'') and (shopid=''' + shopid + ''')) as sw ,' + '(select count(a.bottlebar) as w ' + 'from tbSale_Out a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-5'') and (shopid=''' + shopid + ''')) as w';
  Query2.Close;
  Query2.SQL.Text := sqltxt;
  Query2.Open;
  AdvStringGrid1.Cells[1, 2] := Query2.FieldByName('ws').AsString;
  AdvStringGrid1.Cells[2, 2] := Query2.FieldByName('sw').AsString;
  AdvStringGrid1.Cells[3, 2] := Query2.FieldByName('w').AsString;
  sqltxt := 'select * from (select count(a.bottlebar) as ws ' + 'from tbStock_Intj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-50'') and (shopid=''' + shopid + ''')) as ws ,' + '(select count(a.bottlebar) as sw ' + 'from tbStock_Intj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-15'') and (shopid=''' + shopid + ''')) as sw ,' + '(select count(a.bottlebar) as w ' + 'from tbStock_Intj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-5'') and (shopid=''' + shopid + ''')) as w';
  Query2.Close;
  Query2.SQL.Text := sqltxt;
  Query2.Open;
  AdvStringGrid1.Cells[1, 3] := Query2.FieldByName('ws').AsString;
  AdvStringGrid1.Cells[2, 3] := Query2.FieldByName('sw').AsString;
  AdvStringGrid1.Cells[3, 3] := Query2.FieldByName('w').AsString;
  sqltxt := 'select * from (select count(a.bottlebar) as ws ' + 'from tbMDQPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-50'') and (shopid=''' + shopid + ''')) as ws ,' + '(select count(a.bottlebar) as sw ' + 'from tbMDQPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-15'') and (shopid=''' + shopid + ''')) as sw ,' + '(select count(a.bottlebar) as w ' + 'from tbMDQPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-5'') and (shopid=''' + shopid + ''')) as w';
  Query2.Close;
  Query2.SQL.Text := sqltxt;
  Query2.Open;
  AdvStringGrid1.Cells[1, 4] := Query2.FieldByName('ws').AsString;
  AdvStringGrid1.Cells[2, 4] := Query2.FieldByName('sw').AsString;
  AdvStringGrid1.Cells[3, 4] := Query2.FieldByName('w').AsString;
  sqltxt := 'select * from (select count(a.bottlebar) as ws ' + 'from tbMDKPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-50'') and (shopid=''' + shopid + ''')) as ws ,' + '(select count(a.bottlebar) as sw ' + 'from tbMDKPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-15'') and (shopid=''' + shopid + ''')) as sw ,' + '(select count(a.bottlebar) as w ' + 'from tbMDKPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-5'') and (shopid=''' + shopid + ''')) as w';
  Query2.Close;
  Query2.SQL.Text := sqltxt;
  Query2.Open;
  AdvStringGrid1.Cells[1, 5] := Query2.FieldByName('ws').AsString;
  AdvStringGrid1.Cells[2, 5] := Query2.FieldByName('sw').AsString;
  AdvStringGrid1.Cells[3, 5] := Query2.FieldByName('w').AsString;
  sqltxt := 'select * from (select count(a.bottlebar) as ws ' + 'from tbmdzpxc a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-50'') and (shopid=''' + shopid + ''')) as ws ,' + '(select count(a.bottlebar) as sw ' + 'from tbmdzpxc a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-15'') and (shopid=''' + shopid + ''')) as sw ,' + '(select count(a.bottlebar) as w ' + 'from tbmdzpxc a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-5'') and (shopid=''' + shopid + ''')) as w';
  Query2.Close;
  Query2.SQL.Text := sqltxt;
  Query2.Open;
  AdvStringGrid1.Cells[1, 6] := Query2.FieldByName('ws').AsString;
  AdvStringGrid1.Cells[2, 6] := Query2.FieldByName('sw').AsString;
  AdvStringGrid1.Cells[3, 6] := Query2.FieldByName('w').AsString;
  sqltxt := 'select * from (select count(a.bottlebar) as ws ' + 'from tbStock_In a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-50'') and (shopid=''' + shopid + ''')) as ws ,' + '(select count(a.bottlebar) as sw ' + 'from tbStock_In a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-15'') and (shopid=''' + shopid + ''')) as sw ,' + '(select count(a.bottlebar) as w ' + 'from tbStock_In a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id where (c.spec_name=''YSP-5'') and (shopid=''' + shopid + ''')) as w';
  Query2.Close;
  Query2.SQL.Text := sqltxt;
  Query2.Open;
  AdvStringGrid1.Cells[1, 7] := Query2.FieldByName('ws').AsString;
  AdvStringGrid1.Cells[2, 7] := Query2.FieldByName('sw').AsString;
  AdvStringGrid1.Cells[3, 7] := Query2.FieldByName('w').AsString;
end;

procedure TBottleManForm.AdvGlowButton15Click(Sender: TObject);
var
  i: Integer;
begin

  query1.Close;
  query1.SQL.Clear;
  query1.SQL.Add('Select Factory_ID,NameC From tbWorks_Info Order By Factory_ID');
  query1.Open;
  if query1.RecordCount > 0 then
  begin
    BottleInfoForm.ComboBox2.Text := '';
    BottleInfoForm.ComboBox2.Items.Clear;
    for i := 1 to query1.RecordCount do
    begin
      query1.RecNo := i;
      BottleInfoForm.ComboBox2.Items.Append(query1.Fields.Fields[1].AsString);
    end;
  end;
          //查钢瓶规格
  query1.Close;
  query1.SQL.Clear;
  query1.SQL.Add('Select Spec_ID,Spec_Name From tbBottle_Spec Order By Spec_ID');
  query1.Open;
  if query1.RecordCount > 0 then
  begin
    query1.First;
    BottleInfoForm.ComboBox1.Text := '';
    BottleInfoForm.ComboBox1.Items.Clear;
    for i := 1 to query1.RecordCount do
    begin
      BottleInfoForm.ComboBox1.Items.Append(query1.Fields.Fields[1].AsString);
      query1.Next;
    end;
  end;
           //查充气介质
  query1.Close;
  query1.SQL.Clear;
  query1.SQL.Add('Select Type_ID,Type_Name From tbBottle_Class Order By Type_ID');
  query1.Open;
  if query1.RecordCount > 0 then
  begin
    query1.First;
    BottleInfoForm.ComboBox3.Text := '';
    BottleInfoForm.ComboBox3.Items.Clear;
    while not query1.Eof do
    begin
      BottleInfoForm.ComboBox3.Items.Append(query1.Fields.Fields[1].AsString);
      query1.Next;
    end;
  end;
  Query1.Close;
  BottleInfoForm.Caption := '钢瓶信息-新增';
  BottleInfoForm.Edit13.Text := Loginname;
  BottleInfoForm.Edit15.Text := gettime;
  BottleInfoForm.Edit14.Text := '';
  BottleInfoForm.Edit16.Text := '';
  BottleInfoForm.Show;
end;

procedure TBottleManForm.AdvGlowButton17Click(Sender: TObject);
var
  sqltxt,qzcxstr:string;
begin
  if (StatusBar1.Panels[8].Text = AdvGlowButton27.Caption) or (StatusBar1.Panels[8].Text = AdvGlowButton28.Caption) or (StatusBar1.Panels[8].Text = AdvGlowButton29.Caption) then  Exit;
  if (StatusBar1.Panels[8].Text <> AdvGlowButton6.Caption) and (StatusBar1.Panels[8].Text <> '') then
  begin
    if Data1.ADOConnection1.Connected then
    begin
      if Edit1.Visible=False then
      begin
        Label3.Visible:=True;
        Label5.Visible:=True;
        Edit1.Visible:=True;
        Edit2.Visible:=True;

      end;
      sqlstr1add := '';
      if Edit1.Text <> '' then
      begin
        sqlstr1add := sqlstr1add+'  and ((b.BottleBar=''' + edit1.Text + ''') or (b.Bottleid=''' + edit1.Text + ''') or (b.gptm=''' + edit1.Text + ''')) ';
      end;
      if (StatusBar1.Panels[8].Text = AdvGlowButton2.Caption) or ((StatusBar1.Panels[8].Text = AdvGlowButton16.Caption)) then
      begin
        if Edit2.Text <> '' then
        begin
          sqlstr1add := sqlstr1add + ' and (A.cz=''' + edit2.Text + ''')';
        end;
      end
      else
      begin
        if Edit2.Text <> '' then
        begin
          sqlstr1add := sqlstr1add + ' and (A.cuser=''' + edit2.Text + ''')';
        end;
      end;
      if ComboBox2.Text<>'' then
      begin
        sqlstr1add:=sqlstr1add+' and (c.namec='''+combobox2.Text+''')';
      end;
      selsql;
      selectbottle(1);
//      ADOQuery1.Close;
//      ADOQuery1.SQL.Text := sqlstr + SQLSTR1 + sqlstr1add+' order by a.id desc';
//      ADOQuery1.Parameters.ParamByName('a').Value := DateTimePicker3.Datetime;
//      ADOQuery1.Parameters.ParamByName('b').Value := DateTimePicker4.Datetime;
//      ADOQuery1.Parameters.ParamByName('c').Value := shopid;
//      ADOQuery1.Open;
      ADOQuery2.Close;
      ADOQuery2.SQL.Clear;
      ADOQuery2.SQL.Text := sqlstr2;
      ADOQuery2.Open;
    end;
  end
  else if StatusBar1.Panels[8].Text = AdvGlowButton6.Caption then
  begin
    sqltxt:=' where a.cdate>='''+datetimetostr(DateTimePicker3.Datetime)+''' and a.cdate<='''+datetimetostr(DateTimePicker4.Datetime)+''' ';
    if ComboBox2.Text<>'' then
    begin
      sqltxt:=sqltxt+' and D.namec='''+ComboBox2.Text+''' ';
      qzcxstr:=' where D.namec='''+ComboBox2.Text+''' ' ;
    end
    else qzcxstr:='';
    Getxx(sqltxt,qzcxstr);
  end;
end;

procedure TBottleManForm.AdvGlowButton18Click(Sender: TObject);
begin
  if StatusBar1.Panels[8].Text <> AdvGlowButton6.Caption then
  begin
    if not sp.Active then
    begin
      ShowMessage('请查询后在导出');
      exit;
    end;
    if sp.IsEmpty then
    begin
      ShowMessage('查询数据空不能导出');
      exit;
    end;
    if sSaveDialog1.Execute then
    begin
      try
        if pos('.', ssavedialog1.FileName) > 0 then
          dbadvgrid1.SaveToXLS(ssavedialog1.FileName)
        else
          dbadvgrid1.SaveToXLS(ssavedialog1.FileName + '.xls');
        ShowMessage('导出成功！');
      except
        ShowMessage('导出失败！');
      end;
    end;
  end
  else
  begin
    if sSaveDialog1.Execute then
    begin
      try
        if pos('.', ssavedialog1.FileName) > 0 then
          AdvStringGrid1.SaveToXLS(ssavedialog1.FileName)
        else
          AdvStringGrid1.SaveToXLS(ssavedialog1.FileName + '.xls');
        ShowMessage('导出成功！');
      except
        ShowMessage('导出失败！');
      end;
    end;
  end;
end;

procedure TBottleManForm.AdvGlowButton19Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton19.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    sqlstr1add := '';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := sqlstr + SQLSTR1;
    ADOQuery1.Parameters.ParamByName('a').Value := DateTimePicker3.Datetime;
    ADOQuery1.Parameters.ParamByName('b').Value := DateTimePicker4.Datetime;
    ADOQuery1.Parameters.ParamByName('c').Value := shopid;
    ADOQuery1.Open;

    sqlstr2add := '';
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton20Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton20.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    sqlstr1add := '';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := sqlstr + SQLSTR1;
    ADOQuery1.Parameters.ParamByName('a').Value := DateTimePicker3.Datetime;
    ADOQuery1.Parameters.ParamByName('b').Value := DateTimePicker4.Datetime;
    ADOQuery1.Parameters.ParamByName('c').Value := shopid;
    ADOQuery1.Open;

    sqlstr2add := '';
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton21Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton21.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    sqlstr1add := '';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := sqlstr + SQLSTR1;
    ADOQuery1.Parameters.ParamByName('a').Value := DateTimePicker3.Datetime;
    ADOQuery1.Parameters.ParamByName('b').Value := DateTimePicker4.Datetime;
    ADOQuery1.Parameters.ParamByName('c').Value := shopid;
    ADOQuery1.Open;

    sqlstr2add := '';
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton22Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton22.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    sqlstr1add := '';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := sqlstr + SQLSTR1;
    ADOQuery1.Parameters.ParamByName('a').Value := DateTimePicker3.Datetime;
    ADOQuery1.Parameters.ParamByName('b').Value := DateTimePicker4.Datetime;
    ADOQuery1.Parameters.ParamByName('c').Value := shopid;
    ADOQuery1.Open;

    sqlstr2add := '';
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton23Click(Sender: TObject);
var
  sqlstrs: string;
  i: Integer;
begin
  StatusBar1.Panels[8].Text := AdvGlowButton6.Caption;
  DBAdvGrid1.Visible := False;
  Panel2.Visible := False;
  AdvStringGrid1.ClearAll;
  AdvStringGrid1.RowCount := 13;
  AdvStringGrid1.Cells[0, 1] := '车载重瓶上车50公斤';
  AdvStringGrid1.Cells[0, 2] := '车载重瓶上车15公斤';
  AdvStringGrid1.Cells[0, 3] := '车载重瓶上车5公斤';
  AdvStringGrid1.Cells[0, 4] := '车载重瓶配送50公斤';
  AdvStringGrid1.Cells[0, 5] := '车载重瓶配送15公斤';
  AdvStringGrid1.Cells[0, 6] := '车载重瓶配送5公斤';
  AdvStringGrid1.Cells[0, 7] := '车载空瓶上车50公斤';
  AdvStringGrid1.Cells[0, 8] := '车载空瓶上车15公斤';
  AdvStringGrid1.Cells[0, 9] := '车载空瓶上车5公斤';
  AdvStringGrid1.Cells[0, 10] := '车载空瓶下车50公斤';
  AdvStringGrid1.Cells[0, 11] := '车载空瓶下车15公斤';
  AdvStringGrid1.Cells[0, 12] := '车载空瓶下车5公斤';
  Query2.Close;
  Query2.SQL.Text := ' select b.shopname as name from tbCZZPZCTJ a left join tshop b on a.shopid=b.shopid group by b.shopname';
  Query2.Open;
  if Query2.IsEmpty then
  begin
    ShowMessage('没有数据不能生成总表');
    DBAdvGrid1.Visible := True;
    Exit;
  end;
  AdvStringGrid1.ColCount := Query2.RecordCount + 1;
  for i := 1 to Query2.RecordCount do
  begin
    AdvStringGrid1.Cells[i, 0] := Query2.FieldByName('name').AsString;
    AdvStringGrid1.ColWidths[i] := 100;
    Query2.Next;
  end;
  Query2.Close;
  AdvStringGrid1.Visible := True;
  for i := 1 to AdvStringGrid1.ColCount - 1 do
  begin
    sqlstrs := 'select * from (select count(a.bottlebar) as ws from tbCZZPZCTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbCZZPZCTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbCZZPZCTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 1] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 2] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 3] := Query2.FieldByName('w').AsString;
    sqlstrs := 'select * from (select count(a.bottlebar) as ws from tbCZZPps a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbCZZPps a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbCZZPps a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 4] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 5] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 6] := Query2.FieldByName('w').AsString;
    sqlstrs := 'select * from (select count(a.bottlebar) as ws from tbCZKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbCZKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbCZKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 7] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 8] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 9] := Query2.FieldByName('w').AsString;
    sqlstrs := 'select * from (select count(a.bottlebar) as ws from tbCZKPOUT a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbCZKPOUT a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbCZKPOUT a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopid=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 10] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 11] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 12] := Query2.FieldByName('w').AsString;
    Query2.Close;
  end;
end;

procedure TBottleManForm.AdvGlowButton24Click(Sender: TObject);
var
  i: Integer;
  sqlstrs: string;
begin
  StatusBar1.Panels[8].Text := AdvGlowButton6.Caption;
  DBAdvGrid1.Visible := False;
  AdvStringGrid1.Visible := true;
  Panel2.Visible := False;
  AdvStringGrid1.ClearAll;
  AdvStringGrid1.RowCount := 24;
  AdvStringGrid1.Cells[0, 1] := '门店重瓶下车50公斤';
  AdvStringGrid1.Cells[0, 2] := '门店重瓶下车15公斤';
  AdvStringGrid1.Cells[0, 3] := '门店重瓶下车5公斤';
  AdvStringGrid1.Cells[0, 4] := '门店重瓶配送50公斤';
  AdvStringGrid1.Cells[0, 5] := '门店重瓶配送15公斤';
  AdvStringGrid1.Cells[0, 6] := '门店重瓶配送5公斤';
  AdvStringGrid1.Cells[0, 7] := '门店重瓶库存50公斤';
  AdvStringGrid1.Cells[0, 8] := '门店重瓶库存15公斤';
  AdvStringGrid1.Cells[0, 9] := '门店重瓶库存5公斤';
  AdvStringGrid1.Cells[0, 10] := '门店空瓶回收50公斤';
  AdvStringGrid1.Cells[0, 11] := '门店空瓶回收15公斤';
  AdvStringGrid1.Cells[0, 12] := '门店空瓶回收5公斤';
  AdvStringGrid1.Cells[0, 13] := '门店气瓶出租50公斤';
  AdvStringGrid1.Cells[0, 14] := '门店气瓶出租15公斤';
  AdvStringGrid1.Cells[0, 15] := '门店气瓶出租5公斤';
  AdvStringGrid1.Cells[0, 16] := '门店空瓶上车50公斤';
  AdvStringGrid1.Cells[0, 17] := '门店空瓶上车15公斤';
  AdvStringGrid1.Cells[0, 18] := '门店空瓶上车5公斤';
  AdvStringGrid1.Cells[0, 19] := '门店空瓶库存50公斤';
  AdvStringGrid1.Cells[0, 20] := '门店空瓶库存15公斤';
  AdvStringGrid1.Cells[0, 21] := '门店空瓶库存5公斤';
  AdvStringGrid1.Cells[0, 22] := '门店重瓶库存合计';
  AdvStringGrid1.Cells[0, 23] := '门店空瓶库存合计';
  Query2.Close;
  Query2.SQL.Text := ' select b.shopname as name from tbMDZPXCTJ a left join tshop b on a.shopcode=b.shopid group by b.shopname';
  Query2.Open;
  if Query2.IsEmpty then
  begin
    ShowMessage('没有数据不能生成总表');
    DBAdvGrid1.Visible := True;
    Exit;
  end;
  AdvStringGrid1.ColCount := Query2.RecordCount + 1;
  for i := 1 to Query2.RecordCount do
  begin
    AdvStringGrid1.Cells[i, 0] := Query2.FieldByName('name').AsString;
    AdvStringGrid1.ColWidths[i] := 100;
    Query2.Next;
  end;
  Query2.Close;
  AdvStringGrid1.Visible := True;
  for i := 1 to AdvStringGrid1.ColCount - 1 do
  begin
    sqlstrs := 'select * from (select count(a.bottlebar) as ws ' + 'from tbmdZPxCTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbmdZPxCTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbmdZPxCTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 1] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 2] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 3] := Query2.FieldByName('w').AsString;
    sqlstrs := 'select * from (select count(a.bottlebar) as ws ' + 'from tbSale_Out a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbSale_Out a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbSale_Out a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 4] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 5] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 6] := Query2.FieldByName('w').AsString;
    sqlstrs := 'select * from (select count(a.bottlebar) as ws ' + 'from tbmdZPxC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbmdZPxC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbmdZPxC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 7] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 8] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 9] := Query2.FieldByName('w').AsString;
    sqlstrs := 'select * from (select count(a.bottlebar) as ws ' + 'from tbStock_Intj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbStock_Intj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbStock_Intj a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 10] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 11] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 12] := Query2.FieldByName('w').AsString;
    sqlstrs := 'select * from (select count(a.bottlebar) as ws ' + 'from tbMDQPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbMDQPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbMDQPZC a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 13] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 14] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 15] := Query2.FieldByName('w').AsString;
    sqlstrs := 'select * from (select count(a.bottlebar) as ws ' + 'from tbmdzpxc a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbmdzpxc a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbmdzpxc a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 16] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 17] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 18] := Query2.FieldByName('w').AsString;
    sqlstrs := 'select * from (select count(a.bottlebar) as ws ' + 'from tbStock_In a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-50'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as ws ,' + '(select count(a.bottlebar) as sw from tbStock_In a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' +
      ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-15'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as sw ,' + '(select count(a.bottlebar) as w from tbStock_In a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar ' + ' left join  tbBottle_SPEC c on b.specid=c.spec_id left join tshop d on a.shopcode=d.shopid where (c.spec_name=''YSP-5'') and (d.shopname=''' + advstringgrid1.Cells[i, 0] + ''')) as w ';
    Query2.Close;
    Query2.SQL.Text := sqlstrs;
    Query2.Open;
    AdvStringGrid1.Cells[i, 19] := Query2.FieldByName('ws').AsString;
    AdvStringGrid1.Cells[i, 20] := Query2.FieldByName('sw').AsString;
    AdvStringGrid1.Cells[i, 21] := Query2.FieldByName('w').AsString;
    AdvStringGrid1.Cells[i, 22] := formatFloat('0', AdvStringGrid1.ColumnSum(i, 7, 9));
    AdvStringGrid1.Cells[i, 23] := formatFloat('0', AdvStringGrid1.ColumnSum(i, 19, 21));
  end;
end;

procedure TBottleManForm.AdvGlowButton27Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton27.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton28Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton28.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton29Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton29.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvGlowButton30Click(Sender: TObject);
begin
  form22.qzid:=shopid;
  form22.zbool :=true;
  form22.ShowModal;
end;

procedure TBottleManForm.AdvGlowButton31Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton31.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.Getxx(str,qzstr:string);
var
 i,ii,celint:Integer;
begin
  StatusBar1.Panels[8].Text := AdvGlowButton6.Caption;
  DBAdvGrid1.Visible := False;
  Panel2.Visible := False;
  AdvStringGrid1.ClearAll;
  AdvStringGrid1.RowCount:=8;
  with Query2 do
  begin
    close;
    SQL.Text:='select Spec_Name from tbBottle_SPEC';
    Open;
    if not IsEmpty then
    begin
      AdvStringGrid1.ColCount := Query2.RecordCount+1;
      AdvStringGrid1.Cells[0, 1] := '站台重瓶库存';
      AdvStringGrid1.Cells[0, 2] := '站台空瓶库存';
      AdvStringGrid1.Cells[0, 3] := '站台空瓶入库';
      AdvStringGrid1.Cells[0, 4] := '站台充装记录';
      AdvStringGrid1.Cells[0, 5] := '站台重瓶出库';
      AdvStringGrid1.Cells[0, 6] := '站台空瓶出库';
      AdvStringGrid1.Cells[0, 7] := '站台重瓶入库';
      celint:=RecordCount;
      for I := 0 to RecordCount-1 do
      begin
        AdvStringGrid1.ColWidths[i+1] := 161;
        AdvStringGrid1.Cells[i+1, 0] := FieldByName('spec_name').AsString;
        Query2.Next;
      end;
      AdvStringGrid1.Visible := true;
    end
    else
    begin
      Exit;
    end;
    close; //充装记录
    SQL.Text:='select c.Spec_Name as name,COUNT(a.id) as sl from tbZTQPCZTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id left join tbQizhan_Info d on a.qzid=d.id '+str+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID ';
    Open;
    if not IsEmpty then
    begin
      for I := 0 to RecordCount-1 do
      begin
        for ii := 1 to celint do
        begin
          if AdvStringGrid1.Cells[ii, 0]=Query2.FieldByName('name').AsString then
            AdvStringGrid1.Cells[ii, 4]:=Query2.FieldByName('sl').AsString;
        end;
        Query2.Next;
      end;
    end;
    close;    //气站重瓶
    SQL.Text:='select c.Spec_Name as name,COUNT(a.id) as sl from tbZTQPCZ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id left join tbQizhan_Info d on a.qzid=d.id '+qzstr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID ';
    Open;
    if not IsEmpty then
    begin
      for I := 0 to RecordCount-1 do
      begin
        for ii := 1 to celint do
        begin
          if AdvStringGrid1.Cells[ii, 0]=Query2.FieldByName('name').AsString then
            AdvStringGrid1.Cells[ii, 1]:=Query2.FieldByName('sl').AsString;
        end;
        Query2.Next;
      end;
    end;
    close;  //气站空瓶
    SQL.Text:='select c.Spec_Name as name,COUNT(a.id) as sl from tbZTKPIN a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id left join tbQizhan_Info d on a.qzid=d.id '+qzstr+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID ';
    Open;
    if not IsEmpty then
    begin
      for I := 0 to RecordCount-1 do
      begin
        for ii := 1 to celint do
        begin
          if AdvStringGrid1.Cells[ii, 0]=Query2.FieldByName('name').AsString then
            AdvStringGrid1.Cells[ii, 2]:=Query2.FieldByName('sl').AsString;
        end;
        Query2.Next;
      end;
    end;
    close;       //空瓶入库记录
    SQL.Text:='select c.Spec_Name as name,COUNT(a.id) as sl from tbZTKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id left join tbQizhan_Info d on a.qzid=d.id '+str+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID ';
    Open;
    if not IsEmpty then
    begin
      for I := 0 to RecordCount-1 do
      begin
        for ii := 1 to celint do
        begin
          if AdvStringGrid1.Cells[ii, 0]=Query2.FieldByName('name').AsString then
            AdvStringGrid1.Cells[ii, 3]:=Query2.FieldByName('sl').AsString;
        end;
        Query2.Next;
      end;
    end;
    close;   //重瓶出库记录
    SQL.Text:='select c.Spec_Name as name,COUNT(a.id) as sl from tbZTZPOUTTJ a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id left join tbQizhan_Info d on a.qzid=d.id '+str+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID ';
    Open;
    if not IsEmpty then
    begin
      for I := 0 to RecordCount-1 do
      begin
        for ii := 1 to celint do
        begin
          if AdvStringGrid1.Cells[ii, 0]=Query2.FieldByName('name').AsString then
            AdvStringGrid1.Cells[ii, 5]:=Query2.FieldByName('sl').AsString;
        end;
        Query2.Next;
      end;
    end;
    close;      //空瓶出库
    SQL.Text:='select c.Spec_Name as name,COUNT(a.id) as sl from tbZTKPOUT a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id left join tbQizhan_Info d on a.qzid=d.id '+str+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID ';
    Open;
    if not IsEmpty then
    begin
      for I := 0 to RecordCount-1 do
      begin
        for ii := 1 to celint do
        begin
          if AdvStringGrid1.Cells[ii, 0]=Query2.FieldByName('name').AsString then
            AdvStringGrid1.Cells[ii, 6]:=Query2.FieldByName('sl').AsString;
        end;
        Query2.Next;
      end;
    end;
    close;           //重瓶入库
    SQL.Text:='select c.Spec_Name as name,COUNT(a.id) as sl from tbZTZPIN a left join tbBottle_Dossier b on a.bottlebar=b.Bottleid '+
       ' left join tbBottle_SPEC c on b.specid=c.spec_id left join tbQizhan_Info d on a.qzid=d.id '+str+' group by c.Spec_Name,c.Spec_ID order by c.Spec_ID ';
    Open;
    if not IsEmpty then
    begin
      for I := 0 to RecordCount-1 do
      begin
        for ii := 1 to celint do
        begin
          if AdvStringGrid1.Cells[ii, 0]=Query2.FieldByName('name').AsString then
            AdvStringGrid1.Cells[ii, 7]:=Query2.FieldByName('sl').AsString;
        end;
        Query2.Next;
      end;
    end;
  end;
end;

procedure TBottleManForm.Label26Click(Sender: TObject);
begin
  if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
  selectbottle(1);
end;

procedure TBottleManForm.Label27Click(Sender: TObject);
begin
  if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    selectbottle(Pagecurrent-1);
end;

procedure TBottleManForm.Label28Click(Sender: TObject);
begin
  if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
  selectbottle(Pagecurrent+1);
end;

procedure TBottleManForm.Label29Click(Sender: TObject);
begin
  if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   selectbottle(Pagecount);
end;

procedure TBottleManForm.AdvGlowButton6Click(Sender: TObject);
var
  sqltxt: string;
begin
  Label3.Visible:=False;
  Label5.Visible:=False;
  Edit1.Visible:=False;
  Edit2.Visible:=False;
  Panel12.Visible:= False;
//  if usertype=1 then  sqltxt:=' where a.cdate>='''+datetimetostr(DateTimePicker3.Datetime)+''' and a.cdate<='''+datetimetostr(DateTimePicker4.Datetime)+''' and a.qzid='''+shopid+''' '
//  else           临时取消
  sqltxt:=' where a.cdate>='''+datetimetostr(DateTimePicker3.Datetime)+''' and a.cdate<='''+datetimetostr(DateTimePicker4.Datetime)+''' ';
  if cxbool then Getxx(sqltxt,' where a.qzid='''+shopid+''' ')
  else   Getxx(sqltxt,'');
end;

procedure TBottleManForm.AdvGlowButton8Click(Sender: TObject);
begin
  form303.Caption := AdvGlowButton8.Caption;
  form303.ShowModal;
end;

procedure TBottleManForm.AdvGlowButton9Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton9.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if data1.ADOConnection1.Connected then
  begin
    sqlstr1add := '';
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := sqlstr + SQLSTR1;
    ADOQuery1.Parameters.ParamByName('a').Value := DateTimePicker3.Datetime;
    ADOQuery1.Parameters.ParamByName('b').Value := DateTimePicker4.Datetime;
    ADOQuery1.Parameters.ParamByName('c').Value := shopid;
    ADOQuery1.Open;
    sqlstr2add := '';
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.AdvStringGrid1GetAlignment(Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  HAlign:=taCenter;        //写法正确的.... 按上面的属性 设置下即可
  VAlign:=vtaCenter;
end;

procedure TBottleManForm.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text = '' then
    Exit;
  Query2.Close;
  query2.SQL.Text := 'select shopid from tshop where shopname=''' + combobox1.Text + ''' ';
  Query2.Open;
  if not Query2.IsEmpty then
    shopid := Query2.FieldByName('shopid').AsString;
  Query2.Close;
end;

procedure TBottleManForm.DBAdvGrid1DblClick(Sender: TObject);
begin
  if (IDYES = Application.MessageBox('确认删除本条信息吗？', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
  begin
    if Sp.IsEmpty then  Exit;
    if (StatusBar1.Panels[8].Text = AdvGlowButton1.Caption) then
    begin
      with Query2 do
      begin
        close;
        SQL.Text:='delete from tbZTKPINTJ where id='''+Sp.FieldByName('id').AsString+'''';
        ExecSQL;
        close;
        SQL.Text:='delete from tbZTKPIN where BottleBar='''+Sp.FieldByName('钢瓶编号').AsString+'''';
        ExecSQL;
        Close;
      end;
    end;
//    if (StatusBar1.Panels[8].Text = AdvGlowButton2.Caption) then
//    begin
//      with Query2 do
//      begin
//        close;
//        SQL.Text:='delete from tbZTQPCZTJ where id='''+Sp.FieldByName('id').AsString+'''';
//        ExecSQL;
//        close;
//        SQL.Text:='delete from tbZTQPCZ where BottleBar='''+Sp.FieldByName('钢瓶编号').AsString+'''';
//        ExecSQL;
//        Close;
//      end;
//    end;
//    if (StatusBar1.Panels[8].Text = AdvGlowButton16.Caption) then
//    begin
//      with Query2 do
//      begin
//        close;
//        SQL.Text:='delete from tbZTQPCZTJ where id='''+Sp.FieldByName('id').AsString+'''';
//        ExecSQL;
//        close;
//        SQL.Text:='delete from tbZTQPCZ where BottleBar='''+Sp.FieldByName('钢瓶编号').AsString+'''';
//        ExecSQL;
//        Close;
//      end;
//    end;
    if (StatusBar1.Panels[8].Text = AdvGlowButton4.Caption) then
    begin
      with Query2 do
      begin
        close;
        SQL.Text:='delete from tbZTZPoutTJ where id='''+Sp.FieldByName('id').AsString+'''';
        ExecSQL;
        close;
        SQL.Text:='delete from tbZTZPout where BottleBar='''+Sp.FieldByName('钢瓶编号').AsString+'''';
        ExecSQL;
        Close;
        SQL.Text :='insert into tbZTKPIN (BottleBar,cuser,carid,cdate,stype,qzid) select BottleBar,cuser,carid,cdate,stype,qzid from tbZTKPINtj where BottleBar='''+Sp.FieldByName('钢瓶编号').AsString+''' order by cdate desc ';
        ExecSQL;
        Close;
      end;
    end;
//    if (StatusBar1.Panels[8].Text = AdvGlowButton3.Caption) then
//    begin
//      with Query2 do
//      begin
//        close;
//        SQL.Text:='delete from tbZTZPoutTJ where id='''+Sp.FieldByName('id').AsString+'''';
//        ExecSQL;
//        close;
//        SQL.Text:='delete from tbZTZPout where BottleBar='''+Sp.FieldByName('钢瓶编号').AsString+'''';
//        ExecSQL;
//        Close;
//      end;
//    end;
    

  end;
end;

procedure TBottleManForm.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if (DBAdvGrid1.Cells[5, arow] = trim('待检')) then
    AFont.Color := clgreen;
  if (DBAdvGrid1.Cells[5, ARow] = trim('报废')) then
    AFont.Color := clred;
end;

procedure TBottleManForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False, 20); //根据内容调节列宽
end;

procedure TBottleManForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOQuery1.Close;
//  KillTask('ZHPRClientCard' + Form1.log_czq + '.EXE');
//  if Form1.log_usertype <> 0 then
//  begin
//    Application.Terminate;
//  end;
end;

procedure TBottleManForm.FormCreate(Sender: TObject);
begin
   ComboBox2.Clear;
end;

procedure TBottleManForm.FormShow(Sender: TObject);
var
  filename: string;
  myinifile: Tinifile;
  log_compute: string;
begin

//  filename := ExtractFilePath(paramstr(0)) + 'login.ini';
//  myinifile := Tinifile.create(filename);
//  log_compute := myinifile.ReadString('user', 'comp', '');
//  myinifile.Free;
  Caption := log_compute + '气瓶综合管理系统' ;
 // StatusBar1.Panels[1].Text := Form1.shang_log_name;
 // StatusBar1.Panels[3].Text := Form1.logusertype[Form1.log_usertype];
  edit1.Clear;
  edit2.Clear;
  Edit3.Clear;
  sqlstr1add := '';
  sqlstr2add := '';
  DateTimePicker3.Date:=Date;
  DateTimePicker4.Date := Date;
  DBAdvGrid1.Visible := True;
  panel2.visible := True;
  AdvStringGrid1.Visible := False;
  cxbool:=False;
//  ShowMessage(IntToStr(Form1.log_usertype));
  if 0 = 0 then
  begin
    cxbool:=False;
//    Label4.Visible := True;
//    ComboBox1.Visible := True;
    Panel2.Visible := False;
    StatusBar1.Panels[6].Text := '';
    StatusBar1.Panels[7].Text := '';
    AdvNavBarPanel1.Enabled := True;
//    AdvNavBarPanel2.Enabled := True;
//    AdvNavBarPanel3.Enabled := True;
//    AdvNavBarPanel4.Enabled := True;
    AdvNavBar1.ActiveTabIndex := 3;
    ComboBox2.ItemIndex := -1;
    if data1.ADOConnection1.Connected then
    begin
      if ComboBox2.Items.Count<=0 then
      begin
        Query2.Close;
        query2.SQL.Text := 'select namec from tbQizhan_Info';
        Query2.Open;
        if not Query2.IsEmpty then
        while not Query2.Eof do
        begin
          ComboBox2.Items.Add(Query2.FieldByName('namec').AsString);
          Query2.Next;
        end;
        Query2.Close;
      end;
//    ComboBox1.Clear;
//    if Form1.ADOConnection1.Connected then
//    begin
//      Query2.Close;
//      query2.SQL.Text := 'select shopid,shopname from tshop where (shopid<>0)';
//      Query2.Open;
//      if not Query2.IsEmpty then
//        while not Query2.Eof do
//        begin
//          ComboBox1.Items.Add(Query2.FieldByName('shopname').AsString);
//          if shopid = '' then
//            shopid := Query2.FieldByName('shopid').AsString;
//          if shopname = '' then
//            shopname := Query2.FieldByName('shopname').AsString;
//
//          Query2.Next;
//        end;
//      Query2.Close;
//      ComboBox1.ItemIndex := 0;
    end;
//    StatusBar1.Panels[4].Text := '管理门店';
//    StatusBar1.Panels[5].Text := shopname;
  end;
//  else
//  begin
//    Label4.Visible := False;
//    ComboBox1.Visible := False;
//    if Form1.log_shopid <> '' then
//    begin
//      Query2.Close;
//      query2.SQL.Text := 'select shopname from tshop where (shopid=''' + Form1.log_shopid + ''')';
//      Query2.Open;
//      if not Query2.IsEmpty then
//        shopname := Query2.FieldByName('shopname').AsString;
//      Query2.Close;
//    end;
//  end;
//  if form1.log_usertype = 1 then
//  begin
//       //shopid:=Form1.log_shopid;
//    cxbool:=True;
//    StatusBar1.Panels[4].Text := '充装台秤';
//    StatusBar1.Panels[5].Text := Form1.log_czid;
//    StatusBar1.Panels[6].Text := '充装枪';
//    StatusBar1.Panels[7].Text := Form1.log_czq;
//    shopid := Form1.log_shopid;
////    ShellExecute(handle, 'open', PChar(ExtractFilePath(paramstr(0)) + '\ZHPRClientCard' + Form1.log_czq + '.EXE'), nil, nil, SW_SHOW);
//    AdvNavBarPanel1.Enabled := True;
////    AdvNavBarPanel2.Enabled := False;
////    AdvNavBarPanel3.Enabled := False;
////    AdvNavBarPanel4.Enabled := False;
//    AdvNavBar1.ActiveTabIndex := 0;
//    Label9.Caption:='';
//    ComboBox2.Visible:=False;
//  end;
//  if form1.log_usertype = 2 then
//  begin
//    shopid := Form1.log_shopid;
//    StatusBar1.Panels[4].Text := '所属门店';
//    StatusBar1.Panels[5].Text := shopname;
//    StatusBar1.Panels[6].Text := '车载牌号';
//    StatusBar1.Panels[7].Text := Form1.Log_czph;
////    AdvNavBarPanel2.Enabled := True;
//    AdvNavBarPanel1.Enabled := False;
////    AdvNavBarPanel3.Enabled := False;
////    AdvNavBarPanel4.Enabled := False;
//    AdvNavBar1.ActiveTabIndex := 1;
//  end;
//  if form1.log_usertype = 3 then
//  begin
//    shopid := Form1.log_shopid;
//    StatusBar1.Panels[4].Text := '所属门店';
//    StatusBar1.Panels[5].Text := shopname;
//    StatusBar1.Panels[6].Text := '';
//    StatusBar1.Panels[7].Text := '';
////    AdvNavBarPanel3.Enabled := True;
//    AdvNavBarPanel1.Enabled := False;
////    AdvNavBarPanel2.Enabled := False;
////    AdvNavBarPanel4.Enabled := False;
//    AdvNavBar1.ActiveTabIndex := 2;
//  end;
end;

procedure TBottleManForm.MenuItem10Click(Sender: TObject);
begin
  form303.Caption := AdvGlowButton7.Caption;
  form303.ShowModal;
end;

procedure TBottleManForm.MenuItem11Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton8.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.MenuItem12Click(Sender: TObject);
begin
  form303.Caption := AdvGlowButton8.Caption;
  form303.ShowModal;
end;

procedure TBottleManForm.MenuItem13Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton16.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.MenuItem14Click(Sender: TObject);
begin
  form303.Caption := AdvGlowButton16.Caption;
  form303.ShowModal;
end;

procedure TBottleManForm.MenuItem1Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton2.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;
  end;
end;

procedure TBottleManForm.MenuItem2Click(Sender: TObject);
begin
  form303.Caption := AdvGlowButton2.Caption;
  form303.ShowModal;
end;

procedure TBottleManForm.MenuItem3Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton3.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.MenuItem4Click(Sender: TObject);
begin
  form303.Caption := AdvGlowButton3.Caption;
  form303.ShowModal;
end;

procedure TBottleManForm.MenuItem5Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton4.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.MenuItem6Click(Sender: TObject);
begin
  form303.Caption := AdvGlowButton4.Caption;
  form303.ShowModal;
end;

procedure TBottleManForm.MenuItem7Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton5.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.MenuItem8Click(Sender: TObject);
begin
  form303.Caption := AdvGlowButton5.Caption;
  form303.ShowModal;
end;

procedure TBottleManForm.MenuItem9Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton7.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);

    ADOQuery2.Close;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.N1Click(Sender: TObject);
begin
  StatusBar1.Panels[8].Text := AdvGlowButton1.Caption;
  sqlstr1add := '';
  sqlstr2add := '';
  selsql;
  if Data1.ADOConnection1.Connected then
  begin
    selectbottle(1);
    Query1.Close;
    Query1.SQL.Text := 'Select a.id   From tbZTKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar where ' + sqlstr1 + ' and (b.Instate=3)';
    Query1.Open;
    Label7.Visible := True;
    Label7.Caption := '待检瓶数量：' + inttostr(query1.RecordCount);
    Query1.Close;
    Query1.SQL.Text := 'Select a.id From tbZTKPINTJ a left join tbBottle_Dossier b on a.bottlebar=b.bottlebar where ' + sqlstr1 + ' and (b.Instate=1)';
    Query1.Open;
    Label8.Visible := True;
    Label8.Caption := '报废瓶数量：' + inttostr(query1.RecordCount);
    ADOQuery2.Close;
    ADOQuery2.SQL.Text := sqlstr2;
    ADOQuery2.Open;

  end;
end;

procedure TBottleManForm.N2Click(Sender: TObject);
begin
  form303.Caption := AdvGlowButton1.Caption;
  form303.ShowModal;
end;

procedure TBottleManForm.PageSizeboxChange(Sender: TObject);
begin
  if PageSizebox.ItemIndex=-1 then  Exit;
   Selectbottle(1);
end;

end.


