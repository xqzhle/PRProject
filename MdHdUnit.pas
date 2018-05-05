unit MdHdUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,Mydialogs,
  uniGUIClasses, uniGUIFrame, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  StdCtrls, ExtCtrls, DB, MemDS, DBAccess, Uni, ComCtrls, AdvDateTimePicker,
  OleServer, AcReport_TLB_Int;

type
  TMdHdFrame = class(TUniFrame)
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
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Button6: TButton;
    ComboBox1: TComboBox;
    Button7: TButton;
    Button8: TButton;
    Edit7: TEdit;
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
    procedure ComboBox1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure initpanel;
  public
    { Public declarations }
  end;

implementation

uses
  DbUnit, SqgUnit, Unit38,MainUnit, Unit57,zcomm;

{$R *.dfm}
 var
 wherestr:string;
 sqlstr,orderstr:string;


procedure TMdHdFrame.Button1Click(Sender: TObject);
var
 wstr:string;
begin
  wstr:='';
  if Edit1.Text<>'' then
  wstr:=' and (a.corpid like ''%'+edit1.text+'%'')';
  wstr:= wstr+' and (a.optdate>='''+formatdatetime('yyyy-mm-dd hh:mm:ss',AdvDateTimePicker1.DateTime)+''') and (a.optdate<='''+formatdatetime('yyyy-mm-dd hh:mm:ss',AdvDateTimePicker2.DateTime)+''')';
   with Data1.ss7 do
   begin
     Close;
     SQL.Text:=sqlstr+wherestr+wstr+orderstr;
      Open;
   end;
end;

procedure TMdHdFrame.Button2Click(Sender: TObject);
var
 jf:Double;
begin
    if not Data1.ss7.Active then Exit;
    if Data1.ss7.RecordCount=0 then Exit;
    if Data1.ss7.FieldByName('状态').AsString='回单' then
     begin
        if Data1.ss7.FieldByName('会员卡号').AsString<>'' then
        begin
          Data1.sds111.Close;
          Data1.sds111.SQL.Text:='select onejf from tpriceinfo where name='''+Data1.ss7.FieldByName('商品名称').AsString+'''';
          Data1.sds111.Open;
          if not Data1.sds111.IsEmpty then
          begin
            if Data1.sds111.FieldByName('onejf').AsString<>'0' then
            begin
              jf:=jf+ strtofloat(Data1.sds111.FieldByName('onejf').AsString)* strtofloat(Data1.ss7.FieldByName('数量').AsString);
            end;
          end;
           Form57.edt1.Text:=FloatToStr(jf);
           Form57.edt2.Text:=Data1.ss7.FieldByName('实收金额').AsString;
        end
        else
        begin
          Form57.edt1.Clear;
          Form57.edt2.Clear;
        end;
        Form57.Edit2.Text:=Data1.ss7.FieldByName('单号').AsString;
        Form57.Edit3.Text:=Data1.ss7.FieldByName('送气工').AsString;
        form57.ispd:=False;
        Form57.Show;

     end;
end;

procedure TMdHdFrame.Button3Click(Sender: TObject);
var
 rpt_path,ss,botteltype:string;
 a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a17,atel,optdate,hykh:string;
begin
   if not Data1.ss7.Active then Exit;
    if Data1.ss7.RecordCount=0 then Exit;
    with Data1.ss7 do
    begin
      a1:=FieldByName('单号').AsString;
      a2:=FieldByName('客户编号').AsString;
      a3:=FieldByName('商品名称').AsString;
      a4:=FieldByName('客户').AsString;
      a5:=FieldByName('单价').AsString;
      a6:=FieldByName('运费').AsString;
      a7:=FieldByName('数量').AsString;
      hykh :=FieldByName('会员卡号').AsString;
       atel:=FieldByName('联系电话').AsString;
      a9:=FieldByName('实收金额').AsString;
      a11:=shopname;
      a12:='';
      a13:=FieldByName('送气地址').AsString;
      a14:=FieldByName('下单方').AsString;
      a17:=FieldByName('备注').AsString;
//    a17:=Data1.ss6.FieldByName('身份证').AsString;
      optdate:=FieldByName('订气时间').AsString;
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

procedure TMdHdFrame.Button4Click(Sender: TObject);
var
 str:string;
begin
   if Data1.ss7.Active then
      begin
       if Data1.ss7.RecordCount<>0 then
        begin
           if Data1.ss7.FieldByName('状态').AsString='回单' then
            begin
               if InputQueryEx('提示信息', '请输入作废原因', str) then
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

procedure TMdHdFrame.Button5Click(Sender: TObject);
begin
  ComboBox1.Text:='';
  initpanel;
end;

procedure TMdHdFrame.Button6Click(Sender: TObject);
begin
   Panel2.Visible:=false;
end;

procedure TMdHdFrame.Button7Click(Sender: TObject);
var
 sid:string;
begin
     if not Data1.ss7.Active then exit;
     if Data1.ss7.RecordCount=0 then exit;
     if ComboBox1.Text='' then
     begin
       mshowmessage('请选择门店');
       Exit;
     end;
     if (IDYES = Application.MessageBox(PWideChar('确认要把订单转派到：' + combobox1.text + '吗？'),pwidechar(Application.Title),MB_YesNo+MB_IconQuestion)) then
     begin
        sid := Data1.ss7.FieldByName('单号').AsString;

              try
                Data1.sqlcmd1.Close;
                Data1.sqlcmd1.SQL.Text := 'update  tbisent set shopid=''' + edit7.Text + ''',shopname=''' + combobox1.Text + ''' where bisentid=''' + sid + ''' ';
                Data1.sqlcmd1.ExecSQL;
                mShowMessage('转派门店成功！');
                Panel2.Visible:=False;
                Data1.ss7.Close;
                Data1.ss7.Open;
              except
                mShowMessage('转派门店失败！');

              end;
     end;
end;

procedure TMdHdFrame.ComboBox1Click(Sender: TObject);
begin
   if ComboBox1.Text <> '' then
  begin
    data1.sqlcmd1.Close;
    Data1.sqlcmd1.SQL.Text := 'select id from tcompany where comname=''' + combobox1.Text + ''' ';
    Data1.sqlcmd1.Open;
    if not Data1.sqlcmd1.IsEmpty then
    begin
      Edit7.Text := Data1.sqlcmd1.FieldByName('id').AsString;
    end;
    data1.sqlcmd1.Close;
  end;
end;

procedure TMdHdFrame.DBAdvGrid4GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    if (DBAdvGrid4.Cells[17,ARow]=trim('加急')) then  Afont.Color:=clred;//AFont.Color:=clred;
     if (DBAdvGrid4.Cells[17,ARow]=trim('预约')) then  AFont.Color:=clblue;
   //  if (DBAdvGrid4.Cells[1,ARow]=trim('派工')) then  ABrush.Color:=clYellow;
end;

procedure TMdHdFrame.DBAdvGrid4Resize(Sender: TObject);
begin
   DBAdvGrid4.AutoSizeColumns(False,8);
end;

procedure TMdHdFrame.initpanel;
var
 t,l:Integer;
begin
   l:=(Width-panel2.Width) div 2;
   t:=(Height-Panel2.Height) div 2;
   Panel2.Top:=t;
   Panel2.Left:=l;
   Panel2.Visible:=true;
end;

procedure TMdHdFrame.UniFrameCreate(Sender: TObject);

begin
   Panel2.Visible:=False;
   wherestr:=' and (a.shopid<>'''')';//'(a.shopid='''+shopid+''')';
   with Data1.ss7 do
   begin
     Close;
     sqlstr:='select case when a.status=''0'' then ''派工'' when a.status=''2'' then ''回单'' end as 状态,a.bisentid as 单号,a.optid as 下单方,'+
       ' case when a.Fsktype=0 then ''现金'' when a.Fsktype=1 then ''微信已支付'' end as 收款方式,a.shopname as 门店名称,'+
       'c.hynumber as 会员卡号,c.bayday as 身份证,a.empname as 送气工,a.corpname as 客户,a.tel as 联系电话,a.yydate as 预约时间,b.dj as 单价, '+
       'a.optdate as 订气时间,b.pricename as 商品名称,b.sl as 数量,b.yfmoney as 优惠, b.smoney as 运费,b.glmoney as 租瓶费,b.money as 实收金额,a.address as 送气地址,c.ywy as 业务员,a.zpbar as 重瓶编号,case when a.type=''1'' then ''预约'' when a.type=''2'' then ''加急'' else ''正常'' end as 订单级别, '+
       'a.typename as 气瓶性质,a.corpid as 客户编号'+ //,a.kpbar as 客户瓶号 case when c.yj=1 then ''是'' else ''否'' end as 月结,
       ',a.memo as 备注 from tbisent a right join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.barcode where  (a.status=2) and (a.type<>3)';
       orderstr:=' order by a.optdate desc';
       SQL.Text:=sqlstr+wherestr+orderstr;
      Open;
   end;
   AdvDateTimePicker1.Time:=StrToTime('00:00:00');
   AdvDateTimePicker1.Date:=Date;
   AdvDateTimePicker2.Time:=StrToTime('23:59:59');
   AdvDateTimePicker2.Date:=Date;
    Data1.ClientDataSet1.Close;
       Data1.ClientDataSet1.SQL.Text:='select comname,id from tcompany where type=3 ';
       Data1.ClientDataSet1.Open;
       ComboBox1.Items.Clear;

       while not Data1.ClientDataSet1.eof do
       begin

         ComboBox1.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);

         Data1.ClientDataSet1.Next;
       end;
       Data1.ClientDataSet1.Close;
       ComboBox1.Text:='';
end;

procedure TMdHdFrame.UniFrameDestroy(Sender: TObject);
begin
  Data1.ss7.Close;
end;

end.
