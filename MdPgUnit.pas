unit MdPgUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,Mydialogs,
  uniGUIClasses, uniGUIFrame, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  StdCtrls, ExtCtrls, DB, MemDS, DBAccess, Uni, ComCtrls, AdvDateTimePicker,
  OleServer, AcReport_TLB_Int, AdvUtil, AcReport_TLB;

type
  TMdPgFrame = class(TUniFrame)
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
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    AcRptEngine1: TAcRptEngine;

    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure DBAdvGrid4Resize(Sender: TObject);
    procedure DBAdvGrid4GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  DbUnit, SqgUnit, Unit38,MainUnit;

{$R *.dfm}
 var
 wherestr:string;
 sqlstr,orderstr:string;


procedure TMdPgFrame.Button1Click(Sender: TObject);
var
 wstr:string;
begin
  wstr:='';
  if Edit1.Text<>'' then
  wstr:=' and (a.corpid like ''%'+edit1.text+'%'')';
  wstr:= wstr+' and (a.pddate>='''+formatdatetime('yyyy-mm-dd hh:mm:ss',AdvDateTimePicker1.DateTime)+''') and (a.pddate<='''+formatdatetime('yyyy-mm-dd hh:mm:ss',AdvDateTimePicker2.DateTime)+''')';
   with Data1.ss6 do
   begin
     Close;
     SQL.Text:=sqlstr+wherestr+wstr+orderstr;
      Open;
   end;
end;

procedure TMdPgFrame.Button2Click(Sender: TObject);
begin
    if not Data1.ss6.Active then Exit;
    if Data1.ss6.RecordCount=0 then Exit;
    if Data1.ss6.FieldByName('状态').AsString='派工' then
     begin
       Form38.Edit2.Text:=Data1.ss6.FieldByName('送气工').AsString;
       Form38.ShowModal;

     end;
end;

procedure TMdPgFrame.Button3Click(Sender: TObject);
var
 rpt_path,ss,botteltype:string;
 a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a17,atel,optdate,hykh:string;
begin
   if not Data1.ss6.Active then Exit;
    if Data1.ss6.RecordCount=0 then Exit;
    with Data1.ss6 do
    begin
      a1:=FieldByName('单号').AsString;
      a2:=FieldByName('客户编号').AsString;
      a3:=FieldByName('商品名称').AsString;
      a4:=FieldByName('客户').AsString;
      a5:=FieldByName('单价').AsString;
      a6:=FieldByName('运费').AsString;
      a7:=FieldByName('数量').AsString;
      hykh :=FieldByName('会员卡号').AsString;
       atel:=Data1.ss6.FieldByName('联系电话').AsString;
      a9:=Data1.ss6.FieldByName('实收金额').AsString;
      a11:=shopname;
      a12:='';
      a13:=Data1.ss6.FieldByName('送气地址').AsString;
      a14:=Data1.ss6.FieldByName('下单方').AsString;
      a17:=Data1.ss6.FieldByName('备注').AsString;
//    a17:=Data1.ss6.FieldByName('身份证').AsString;
      optdate:=Data1.ss6.FieldByName('订气时间').AsString;
      if FieldByName('订单级别').AsString='预约'  then
      begin
        a15:=FieldByName('预约时间').AsString;
        System.Delete(a15,1,5);
        a15:=Copy(a15,1,11);
      end
      else a15:='';
       ACRptEngine1.Init;
          ACRptEngine1.AddGlobalVariable('optdate', optdate) ;
          ACRptEngine1.AddGlobalVariable('a17', a17) ;
          ACRptEngine1.AddGlobalVariable('a10', a10) ;
          ACRptEngine1.AddGlobalVariable('a8', FieldByName('送气工').AsString) ;
          ACRptEngine1.AddGlobalVariable('a1', a1) ;
          ACRptEngine1.AddGlobalVariable('a2', a2) ;
          ACRptEngine1.AddGlobalVariable('a3', a3) ;
          ACRptEngine1.AddGlobalVariable('a4', a4) ;
          ACRptEngine1.AddGlobalVariable('a5', a5) ;
          ACRptEngine1.AddGlobalVariable('a6', a6) ;
          ACRptEngine1.AddGlobalVariable('a7', a7) ;
          ACRptEngine1.AddGlobalVariable('a9', a9) ;
          ACRptEngine1.AddGlobalVariable('a11', a11) ;
          ACRptEngine1.AddGlobalVariable('a12', a12) ;
          ACRptEngine1.AddGlobalVariable('a13', a13) ;
          ACRptEngine1.AddGlobalVariable('a14', a14) ;
          ACRptEngine1.AddGlobalVariable('a15', a15) ;
          ACRptEngine1.AddGlobalVariable('atel', atel) ;
          ACRptEngine1.AddGlobalVariable('hykh', hykh);
          ACRptEngine1.AddGlobalVariable('a16', usName) ;
          ACRptEngine1.SetReportFile(ExtractFilePath(ParamStr(0)) + '\report\'+'sqd.apt');
          AcRptEngine1.Preview;
    end;
end;

procedure TMdPgFrame.Button4Click(Sender: TObject);
var
 str:string;
begin
   if Data1.ss6.Active then
      begin
       if Data1.ss6.RecordCount<>0 then
        begin
           if Data1.ss6.FieldByName('状态').AsString='派工' then
            begin
             if InputQueryEx('提示信息', '请输入作废原因', str,) then
             begin
                Data1.sds111.Close;
               Data1.sds111.sql.Text:='update  tbisent set type=''3'',zfyy='''+str+''' where bisentid='''+Data1.ss6.FieldByName('单号').AsString+''' ';
               try
                 Data1.sds111.ExecSQL;
                 ShowMessage('订单作废成功');
                 Data1.ss6.Close;
                 Data1.ss6.Open;
               except
                  ShowMessage('订单作废失败');
               end;
             end;

            end;
        end;
      end;
end;

procedure TMdPgFrame.Button5Click(Sender: TObject);
begin
  if Data1.ss6.Active then
  begin
    if Data1.ss6.RecordCount<>0 then
    begin
      if Data1.ss6.FieldByName('状态').AsString='派工' then
      begin
      //  SqgForm.ComboBox1.Items:=Form34.ComboBox9.Items;
        SqgForm.ComboBox1.text:=Data1.ss6.FieldByName('送气工').AsString;
        SqgForm.edit1.Text:= Data1.ss6.FieldByName('单号').AsString;
        SqgForm.edit2.Text:= '2';
        SqgForm.ShowModal;
      end;
    end;
  end;
end;

procedure TMdPgFrame.DBAdvGrid4GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    if (DBAdvGrid4.Cells[17,ARow]=trim('加急')) then  Afont.Color:=clred;//AFont.Color:=clred;
     if (DBAdvGrid4.Cells[17,ARow]=trim('预约')) then  AFont.Color:=clblue;
   //  if (DBAdvGrid4.Cells[1,ARow]=trim('派工')) then  ABrush.Color:=clYellow;
end;

procedure TMdPgFrame.DBAdvGrid4Resize(Sender: TObject);
begin
   DBAdvGrid4.AutoSizeColumns(False,8);
end;

procedure TMdPgFrame.UniFrameCreate(Sender: TObject);

begin
   wherestr:=' and (a.shopid<>'''')';//'(a.shopid='''+shopid+''')';
   with Data1.ss6 do
   begin
     Close;
     sqlstr:='select case when a.status=''0'' then ''派工'' when a.status=''2'' then ''回单'' end as 状态,a.optdate as 订气时间,a.bisentid as 单号,a.optid as 下单方,'+
       ' case when a.Fsktype=0 then ''现金'' when a.Fsktype=1 then ''微信已支付'' end as 收款方式,a.shopname as 门店名称,'+
       'c.hynumber as 会员卡号,c.bayday as 身份证,a.empname as 送气工,a.corpname as 客户,a.tel as 联系电话,a.yydate as 预约时间,b.dj as 单价, '+
       'a.pddate as 派单时间,b.pricename as 商品名称,b.sl as 数量,b.yfmoney as 优惠, b.smoney as 运费,b.glmoney as 租瓶费,b.money as 实收金额,a.address as 送气地址,c.ywy as 业务员,a.zpbar as 重瓶编号,case when a.type=''1'' then ''预约'' when a.type=''2'' then ''加急'' else ''正常'' end as 订单级别, '+
       'a.typename as 气瓶性质,a.corpid as 客户编号'+ //,a.kpbar as 客户瓶号 case when c.yj=1 then ''是'' else ''否'' end as 月结,
       ',a.memo as 备注 from tbisent a right join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.barcode where  (a.status=0) and (a.type<>3)';
       orderstr:=' order by a.optdate desc';
       SQL.Text:=sqlstr+wherestr+orderstr;
      Open;
   end;
   AdvDateTimePicker1.Time:=StrToTime('00:00:00');
   AdvDateTimePicker1.Date:=Date;
   AdvDateTimePicker2.Time:=StrToTime('23:59:59');
   AdvDateTimePicker2.Date:=Date;
end;

procedure TMdPgFrame.UniFrameDestroy(Sender: TObject);
begin
  Data1.ss6.Close;
end;

end.
