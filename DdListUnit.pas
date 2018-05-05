unit DdListUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  StdCtrls, ExtCtrls, DB, MemDS, DBAccess, Uni, ComCtrls, AdvDateTimePicker,
  OleServer,  tmsAdvGridExcel;

type
  TDdListFrame = class(TUniFrame)
    Panel1: TPanel;
    Button2: TButton;
    DBAdvGrid4: TDBAdvGrid;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    AdvDateTimePicker1: TAdvDateTimePicker;
    AdvDateTimePicker2: TAdvDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure DBAdvGrid4Resize(Sender: TObject);
    procedure DBAdvGrid4GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  DbUnit, SqgUnit, Unit38,MainUnit,zcomm;

{$R *.dfm}
 var
 wherestr:string;
 sqlstr,orderstr:string;


procedure TDdListFrame.Button1Click(Sender: TObject);
var
 wstr:string;
begin
  wstr:='';
  if Edit1.Text<>'' then
  wstr:=' and (a.corpid like ''%'+edit1.text+'%'')';
  if Edit2.Text<>'' then
  wstr:=wstr+' and (a.corpname like ''%'+edit2.text+'%'')';
  if ComboBox1.Text<>'' then
  wstr:=wstr+' and (a.empname ='''+ComboBox1.text+''')';
  wstr:= wstr+' and (a.hddate>='''+formatdatetime('yyyy-mm-dd hh:mm:ss',AdvDateTimePicker1.DateTime)+''') and (a.hddate<='''+formatdatetime('yyyy-mm-dd hh:mm:ss',AdvDateTimePicker2.DateTime)+''')';
   with Data1.ss8 do
   begin
     Close;
     SQL.Text:=sqlstr+wherestr+wstr+orderstr;
      Open;
   end;
end;

procedure TDdListFrame.Button2Click(Sender: TObject);
begin
    if not Data1.ss8.Active then Exit;
    if Data1.ss8.RecordCount=0 then Exit;
     if SaveDialog1.Execute then
      begin
       try
        if  pos('.', savedialog1.FileName)>0 then  AdvGridExcelIO1.XLSExport(savedialog1.FileName)
       else   AdvGridExcelIO1.XLSExport(savedialog1.FileName+'.xls');
        mShowMessage('导出成功！');
       except
         mShowMessage('导出失败！');
       end;
      end;
end;

procedure TDdListFrame.DBAdvGrid4GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    if (DBAdvGrid4.Cells[19,ARow]=trim('加急')) then  Afont.Color:=clred;//AFont.Color:=clred;
     if (DBAdvGrid4.Cells[19,ARow]=trim('预约')) then  AFont.Color:=clblue;
   //  if (DBAdvGrid4.Cells[1,ARow]=trim('派工')) then  ABrush.Color:=clYellow;
end;

procedure TDdListFrame.DBAdvGrid4Resize(Sender: TObject);
begin
   DBAdvGrid4.AutoSizeColumns(False,8);
end;

procedure TDdListFrame.UniFrameCreate(Sender: TObject);

begin
   wherestr:=' and (a.shopid<>'''')';//'(a.shopid='''+shopid+''')';
   with Data1.ss8 do
   begin
     Close;
     sqlstr:='select case when a.status=''0'' then ''派工'' when a.status=''2'' then ''回单'' else ''已完成'' end as 状态,a.bisentid as 单号,a.optid as 下单方,'+
       ' case when a.Fsktype=0 then ''现金'' when a.Fsktype=1 then ''微信已支付'' end as 收款方式,a.shopname as 门店名称,'+
       'c.hynumber as 会员卡号,c.bayday as 身份证,a.empname as 送气工,a.corpname as 客户,a.tel as 联系电话,a.yydate as 预约时间,b.dj as 单价, '+
       'a.optdate as 订气时间,a.pddate as 派单时间,a.hddate as 回单时间,b.pricename as 商品名称,b.sl as 数量,b.yfmoney as 优惠, b.smoney as 运费,b.glmoney as 租瓶费,'+
       'b.money as 实收金额,a.address as 送气地址,c.ywy as 业务员,a.zpbar as 重瓶编号,case when a.type=''1'' then ''预约'' when a.type=''2'' then ''加急'' else ''正常'' end as 订单级别, '+
       'a.typename as 气瓶性质,a.corpid as 客户编号'+ //,a.kpbar as 客户瓶号 case when c.yj=1 then ''是'' else ''否'' end as 月结,
       ',a.memo as 备注 from tbisent a right join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.barcode where  (a.status=1) and (a.type<>3)';
       orderstr:=' order by a.optdate desc';
       SQL.Text:=sqlstr+wherestr+orderstr;
      Open;
   end;
   AdvDateTimePicker1.Time:=StrToTime('00:00:00');
   AdvDateTimePicker1.Date:=Date;
   AdvDateTimePicker2.Time:=StrToTime('23:59:59');
   AdvDateTimePicker2.Date:=Date;
   Data1.sqlcmd1.Close;
      Data1.sqlcmd1.SQL.Text:='select  empname from tb_yginfo where gwname like ''%送%''  order by empname';
      Data1.sqlcmd1.Open;
      ComboBox1.Items.Clear;
       if not Data1.sqlcmd1.IsEmpty then
       begin
         while not Data1.sqlcmd1.Eof do
         begin
            ComboBox1.Items.Add(Data1.sqlcmd1.FieldByName('empname').AsString);
            Data1.sqlcmd1.Next;
         end;
       end;
       data1.sqlcmd1.Close;
       ComboBox1.ItemIndex:=-1;
       ComboBox1.Text:='';
end;

procedure TDdListFrame.UniFrameDestroy(Sender: TObject);
begin
  Data1.ss8.Close;
end;

end.
