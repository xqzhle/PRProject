unit CallCentUnit;

interface

uses
  Windows, Messages, SysUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, ExtCtrls, Menus, Dialogs,
  AdvMenus, AdvPanel, AdvSmoothMessageDialog, ImgList, Controls,
  dxRibbonStatusBar, AdvSmoothExpanderPanel, AdvSmoothExpanderButtonPanel,
  OleCtrls, wpCTIOcx_TLB, DBCtrls, Mask, Buttons, StdCtrls, AdvSmoothButton,
  ComCtrls, Graphics, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  AdvOfficeButtons, AdvGroupBox, AdvGlowButton, AdvOfficePager, AdvSmoothLabel,
  AdvSmoothPanel,advstyleif,IdException,ComObj,
  cxClasses,Forms, dxRibbon, dxRibbonForm,Classes, dxSkinsForm, dxSkinsCore,
  CnClasses, CnTrayIcon, AcReport_TLB,jpeg, OleServer, dxStatusBar,
  dxSkinsDefaultPainters, AcReport_TLB_Int, AdvUtil, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;
         // uROClient, uROBaseHTTPClient, uROWinInetHttpChannel
     // uROEventRepository,    HTTPChatLibrary_Intf  dxSkinsDefaultPainters


type
  TCallCentForm = class(TdxRibbonForm)
    AdvSmoothLabel1: TAdvSmoothLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    Edit1: TEdit;
    AdvSmoothLabel5: TAdvSmoothLabel;
    AdvSmoothLabel6: TAdvSmoothLabel;
    AdvSmoothLabel7: TAdvSmoothLabel;
    AdvSmoothLabel8: TAdvSmoothLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    AdvSmoothExpanderButtonPanel2: TAdvSmoothExpanderButtonPanel;
    AdvSmoothLabel9: TAdvSmoothLabel;
    ComboBox2: TComboBox;
    AdvSmoothLabel10: TAdvSmoothLabel;
    AdvGlowButton3: TAdvGlowButton;
    ImageList3: TImageList;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    AdvGlowButton2: TAdvGlowButton;
    Edit7: TEdit;
    d: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvSmoothLabel12: TAdvSmoothLabel;
    Edit9: TEdit;
    AdvGlowButton6: TAdvGlowButton;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvOfficePage1: TAdvOfficePage;
    AdvOfficePage2: TAdvOfficePage;
    AdvOfficePage3: TAdvOfficePage;
    Memo1: TMemo;
    AdvSmoothLabel15: TAdvSmoothLabel;
    AdvSmoothLabel16: TAdvSmoothLabel;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    Memo2: TMemo;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    Memo3: TMemo;
    AdvGlowButton12: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    Memo4: TMemo;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton15: TAdvGlowButton;
    AdvSmoothLabel17: TAdvSmoothLabel;
    AdvSmoothLabel18: TAdvSmoothLabel;
    AdvOfficeRadioButton3: TAdvOfficeRadioButton;
    AdvOfficeRadioButton4: TAdvOfficeRadioButton;
    ComboBox5: TComboBox;
    Edit10: TEdit;
    AdvSmoothLabel19: TAdvSmoothLabel;
    AdvSmoothButton16: TAdvSmoothButton;
    AdvSmoothButton17: TAdvSmoothButton;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    AdvOfficeCheckBox2: TAdvOfficeCheckBox;
    DBAdvGrid1: TDBAdvGrid;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    AdvSmoothButton3: TAdvSmoothButton;
    AdvSmoothButton4: TAdvSmoothButton;
    AdvSmoothButton5: TAdvSmoothButton;
    AdvSmoothButton6: TAdvSmoothButton;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    edit11: TEdit;
    AdvGlowButton16: TAdvGlowButton;
    AdvSmoothLabel20: TAdvSmoothLabel;
    Edit12: TEdit;
    AdvSmoothLabel22: TAdvSmoothLabel;
    AdvPopupMenu1: TAdvPopupMenu;
    N1: TMenuItem;
    Timer1: TTimer;
    AdvPanel1: TAdvPanel;
    Label16: TLabel;
    AdvPanel2: TAdvPanel;
    DBAdvGrid4: TDBAdvGrid;
    AdvSmoothButton7: TAdvSmoothButton;
    Edit14: TEdit;
    AdvSmoothLabel21: TAdvSmoothLabel;
    AdvPopupMenu2: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    DBAdvGrid5: TDBAdvGrid;
    AdvPopupMenu3: TAdvPopupMenu;
    N2: TMenuItem;
    Timer7: TTimer;
    Timer8: TTimer;
    Timer5: TTimer;
    ComboBox8: TComboBox;
    AdvSmoothButton8: TAdvSmoothButton;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Label12: TLabel;
    Edit5: TEdit;
    AdvGlowButton35: TAdvGlowButton;
    DBNavigator1: TDBNavigator;
    Label14: TLabel;
    Edit6: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton34: TAdvGlowButton;
    Label13: TLabel;
    AdvSmoothLabel11: TAdvSmoothLabel;
    ComboBox4: TComboBox;
    DateTimePicker3: TDateTimePicker;
    AdvOfficeCheckBox4: TAdvOfficeCheckBox;
    AdvGroupBox1: TAdvGroupBox;
    AdvOfficeRadioButton1: TAdvOfficeRadioButton;
    AdvOfficeRadioButton2: TAdvOfficeRadioButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    AdvOfficePager2: TAdvOfficePager;
    AdvOfficePager21: TAdvOfficePage;
    AdvOfficePager22: TAdvOfficePage;
    DBAdvGrid2: TDBAdvGrid;
    AdvGlowButton48: TAdvGlowButton;
    AdvOfficeCheckBox1: TAdvOfficeCheckBox;
    Edit13: TEdit;
    Label17: TLabel;
    ComboBox3: TComboBox;
    CnTrayIcon1: TCnTrayIcon;
    AdvGlowButton18: TAdvGlowButton;
    AdvGlowButton20: TAdvGlowButton;
    AdvSmoothButton9: TAdvSmoothButton;
    RingOutTimer: TTimer;
    AdvGlowButton21: TAdvGlowButton;
    Label18: TLabel;
    AdvOfficePage4: TAdvOfficePage;
    DBAdvGrid3: TDBAdvGrid;
    DBComboBox2: TComboBox;
    DBComboBox1: TComboBox;
    lbl1: TLabel;
    cbb3: TComboBox;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb4: TComboBox;
    lbl2: TLabel;
    AdvGlowButton4: TAdvGlowButton;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    ComboBox6: TComboBox;
    AdvOfficePage5: TAdvOfficePage;
    Image1: TImage;
    Label22: TLabel;
    Edit4: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    GroupBox1: TGroupBox;
    AdvGlowButton7: TAdvGlowButton;
    ImageList1: TImageList;
    AdvGlowButton19: TAdvGlowButton;
    AdvGlowButton22: TAdvGlowButton;
    AdvGlowButton23: TAdvGlowButton;
    AdvSmoothButton10: TAdvSmoothButton;
    AdvSmoothButton11: TAdvSmoothButton;
    Timer2: TTimer;
    AdvSmoothLabel4: TAdvSmoothLabel;
    ComboBox7: TComboBox;
    DBEdit13: TDBEdit;
    Label26: TLabel;
    DBEdit15: TDBEdit;
    AdvGlowButton24: TAdvGlowButton;
    ComboBox9: TComboBox;
    Label3: TLabel;
    Label25: TLabel;
    AdvOfficePage7: TAdvOfficePage;
    AdvGlowButton26: TAdvGlowButton;
    AdvGlowButton27: TAdvGlowButton;
    DBAdvGrid7: TDBAdvGrid;
    AdvGlowButton28: TAdvGlowButton;
    Label27: TLabel;
    DBEdit5: TDBEdit;
    AdvGlowButton17: TAdvGlowButton;
    Label28: TLabel;
    AdvGlowButton25: TAdvGlowButton;
    ComboBox10: TComboBox;
    CTISrv2: TCTISrv;
    AcRptEngine1: TAcRptEngine;
    Label29: TLabel;
    Ccb5: TComboBox;
    ComboBox11: TComboBox;
    AdvStringGrid1: TAdvStringGrid;
    CheckBox1: TCheckBox;
    Label30: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    yhEdit: TEdit;
    sqfEdit: TEdit;
    zpfEdit: TEdit;
    procedure FormShow(Sender: TObject);
    procedure CTISrv2loginOK(ASender: TObject; ID: SmallInt);
    procedure CTISrv2loginErr(ASender: TObject; ID: SmallInt; const errCode,
      errDesc: WideString);
    procedure CTISrv2phoneDisplay(ASender: TObject; ID, UserType, assID,
      assUserType: SmallInt; const assPhone, assUserName: WideString;
      mixdata: SmallInt);
    procedure CTISrv2otherIDTisInfoArrival(ASender: TObject; ID, UserType,
      dstID, dstUserType, dstStatu: SmallInt; srvCls: Byte; const dstPhone,
      dstUserName: WideString; mixdata: SmallInt);
    procedure DBComboBox11Click(Sender: TObject);
    procedure DBComboBox23Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure DBAdvGrid2Resize(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure dClick(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
//    procedure DBAdvGrid3Resize(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure DBAdvGrid4Resize(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton34Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure AdvGlowButton12Click(Sender: TObject);
    procedure AdvGlowButton13Click(Sender: TObject);
    procedure ComboBox5Click(Sender: TObject);
    procedure AdvOfficePage2Show(Sender: TObject);
    procedure AdvOfficeRadioButton3Click(Sender: TObject);
    procedure AdvOfficeRadioButton4Click(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure AdvGlowButton15Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton6Click(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton5Click(Sender: TObject);
    procedure AdvSmoothButton4Click(Sender: TObject);
    procedure AdvSmoothButton16Click(Sender: TObject);
    procedure AdvSmoothButton17Click(Sender: TObject);
    procedure AdvGlowButton16Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CTISrv2dial(ASender: TObject; ID, UserType, assID,
      assUserType: SmallInt; const assPhone, assUserName: WideString; mixdata,
      holdUserID, holdUserType: SmallInt; const holdUserPhone: WideString);
    procedure AdvSmoothButton7Click(Sender: TObject);
    procedure CTISrv2UDPDataArrival(ASender: TObject; ID, UserType, status,
      IOFlag, mixdata, assID, assUserType: SmallInt; const assPhone,
      assUserName: WideString);
    procedure CTISrv2connected(ASender: TObject; ID, UserType, IOFlag, assID,
      assUserType: SmallInt; const assPhone, assUserName: WideString; mixdata,
      holdUserID, holdUserType: SmallInt; const holdUserPhone: WideString);
    procedure CTISrv2idle(ASender: TObject; ID, UserType, assID,
      assUserType: SmallInt; const assPhone, assUserName: WideString; mixdata,
      holdUserID, holdUserType: SmallInt; const holdUserPhone: WideString);
    procedure MenuItem1Click(Sender: TObject);
    procedure DBAdvGrid5SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure N2Click(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure AdvGlowButton19Click(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure AdvSmoothButton8Click(Sender: TObject);
    procedure sfbutt(Sender: TObject);
    procedure AdvGlowButton48Click(Sender: TObject);
    procedure AdvOfficePager22Hide(Sender: TObject);
    procedure AdvGlowButton18Click(Sender: TObject);
    procedure AdvGlowButton20Click(Sender: TObject);
    procedure AdvSmoothButton9Click(Sender: TObject);
    procedure RingOutTimerTimer(Sender: TObject);
    procedure CTISrv2calledRing(ASender: TObject; ID, UserType, assID,
      assUserType: SmallInt; const assPhone, assUserName: WideString; mixdata,
      holdUserID, holdUserType: SmallInt; const holdUserPhone: WideString);
    procedure AdvGlowButton21Click(Sender: TObject);
    procedure AdvOfficePage4Hide(Sender: TObject);
    procedure Ad(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1Click(Sender: TObject);
    procedure DBAdvGrid5Click(Sender: TObject);
    procedure DBComboBox2Click(Sender: TObject);
    procedure Edit5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbb1Click(Sender: TObject);
    procedure cbb2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvOfficePage5Show(Sender: TObject);
    procedure AdvSmoothButton10Click(Sender: TObject);
    procedure AdvSmoothButton11Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure AdvGlowButton24Click(Sender: TObject);
    procedure AdvGlowButton26Click(Sender: TObject);
    procedure AdvGlowButton28Click(Sender: TObject);
    procedure DBAdvGrid3Resize(Sender: TObject);
    procedure AdvGlowButton17Click(Sender: TObject);
    procedure DBAdvGrid3GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure DBAdvGrid3DblClick(Sender: TObject);
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure ComboBox11Change(Sender: TObject);
    procedure AdvStringGrid1ButtonClick(Sender: TObject; ACol, ARow: Integer);
    procedure AdvStringGrid1EditCellDone(Sender: TObject; ACol, ARow: Integer);
   
  private
    { Private declarations }
//      procedure OnSystemShutdown(const aShutdownDelay: Integer; const aReason: Unicodestring);
      function StringToBitmap(imgStr:string):TBitmap;
//   procedure OnMandatoryClose(const aClientID: Unicodestring; const aReason: Unicodestring);
    procedure addbill(const typebill:string);
    function selectdial(const dialn:string):Boolean;
    procedure initgrid;
    procedure jsmoney;
  public
    { Public declarations }
  end;

var
  CallCentForm: TCallCentForm;
  extid:Integer;
  sfport:Integer;
  addbott:Boolean;
  sfshow :Boolean=False;//是否查询身份证信息
//  corpbar:string;   //客户条码
  //CheckConnectThread: TWaitThread;
implementation

uses DbUnit,PRRead_TLBUnit,
  ShellAPI, MainUnit,
  EncdDecd,WxUnit,CVRDLL,zcomm, Unit30, Unit31, Unit32, Unit33, Unit41, Unit28, Unit29, Unit89, Unit88, SelajUnit, Unit96, SqgUnitpas, Unit71, Unit72;

{$R *.dfm}
var
bisentid,bottleid:string; //订单号，气瓶编号
dj,yh,je,sqf:string;//单价，优惠，金额，送气费
addyes,dials,sfbool:Boolean;
dialnumbr,dss:string; //right,钢瓶产权，以此为条件查找送气费,拨号号码
times:Integer;
wherestr:string;
callNOAsi:Boolean=false; //是否接听
callingIn:Boolean=False;//是否呼入
isshow:Boolean=False;

function TCallCentForm.selectdial(const dialn: string):Boolean;
begin
 try
  Data1.sqlcmd1.Close;
  Data1.sqlcmd1.SQL.Text:='select id from tpbxport where phone='''+dialn+'''';
  Data1.sqlcmd1.Open;
  if  Data1.sqlcmd1.IsEmpty then
  Result:=True
  else
  Result:=False;
 except
  Result:=False;
  end;
end;

procedure  TCallCentForm.addbill(const typebill:string);
 var
  ext:string;//临时
begin
  if Edit1.Text<>'' then
  begin
   try
     Data1.sds1.Close;
     Data1.sds1.SQL.Text:=' insert into ttbill (ext,bill,linkid,type,billdate) values ('''+ext+''','''+edit1.Text+''','''+loginname+''','''+typebill+''','''+gettime+''')' ;
     Data1.sds1.ExecSQL;
    except

   end;
  end;

end;

procedure TCallCentForm.AdvGlowButton34Click(Sender: TObject);
var
 djsn:string;
begin            //投诉
 if DBEdit1.Text='' then
      begin
        ShowSmoothMessage('没有客户资料不能投诉！',tsoffice2007Luna);
        exit;
      end;
      if Memo2.Text='' then
      begin
         ShowSmoothMessage('投诉内容不能为空！',tsoffice2007Luna);
        exit;
      end;
       try
          djsn:=FormatDateTime('yyyyMMddhhmmss',Now);
         Data1.sds1.Close;
         Data1.sds1.SQL.Text:='insert into tttousu (shopid,memo,custid,creid,credate,shopname,custname,address,tel) values ('''+edit2.Text+''','''+memo2.Text+''','''+dbedit1.Text+''','''+djsn+''','''+gettime+''','''+dbcombobox2.Text+''','''+dbedit2.Text+''','''+dbedit6.Text+''','''+dbedit3.Text+''')';
         Data1.sds1.ExecSQL;
         Data1.sds1.Close;
        ShowSmoothMessage('投诉记录保存成功！',tsWindows7);
//        addbill('投诉');
        Memo2.Lines.Clear;
       except

       end;
end;

procedure TCallCentForm.Ad(Sender: TObject);
var
  selectstr:string;
begin
   if Edit5.Text='' then Exit ;
                         //a.Grade as Grade, ,a.fax as fax
   initgrid;
      selectstr:='select top 20 a.id as id,a.yhdjname as yhdjname,a.fmoney as fmoney,a.namec as namec,a.tel as tel,a.Address as Address,a.contact as contact,a.ywy as ywy,a.SendPeriod as SendPeriod,a.Remark as Remark,a.fjf as fjf,'+
      ' a.CreateDate as CreateDate,a.psid as psid,a.TypeC as TypeC,b.comname as shopname,a.qyid as qyid,a.jdid as jdid,d.namec as qyname,e.namec as jdname,a.sqg as sqg,a.hynumber as hynumber, '+
      ' c.Type_Name as typename,a.BarCode as barcode,a.bayday as bayday,a.ajdate as ajdate,a.kfsn as kfsn,a.gpstype as gpstype from tbCustomer_Info a left join tcompany b on (a.psid=b.id) '+
      ' left join tbCustomer_Type c on (a.TypeC=c.Type_ID) left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id) ';
    Data1.ClientDataSet3.Close;
    case ComboBox1.ItemIndex of
      1:Data1.ClientDataSet3.SQL.Text:=selectstr+' where (a.namec like ''%'+edit5.text+'%'') and (a.Customer_ID<>1) ';
      0:Data1.ClientDataSet3.SQL.Text:=selectstr+' where (a.tel like ''%'+edit5.text+'%'' or a.contact like ''%'+edit5.Text+'%'' or a.hynumber='''+trim(edit5.Text)+''')  and (a.Customer_ID<>1) ';
      3:Data1.ClientDataSet3.SQL.Text:=selectstr+' where (a.bayday like ''%'+edit5.text+'%'') and (a.Customer_ID<>1)';
      2:Data1.ClientDataSet3.SQL.Text:=selectstr+' where (a.Address like ''%'+edit5.text+'%'') and (a.Customer_ID<>1)';
      4:Data1.ClientDataSet3.SQL.Text:=selectstr+' left join tb_khgp f on (a.barcode=f.khbh) left join tbBottle_Dossier g on (f.gptm=g.Bottleid) where ((g.Bottleid = '''+trim(edit5.text)+''') or (g.Bottlebar = '''+trim(edit5.text)+''') or ((g.gptm = '''+trim(edit5.text)+'''))) and (a.Customer_ID<>1)' ;
      5:Data1.ClientDataSet3.SQL.Text:=selectstr+' where (a.barcode = '''+trim(edit5.text)+''') and (a.Customer_ID<>1)' ;
    end;
    Data1.ClientDataSet3.Open;
    Edit2.Text:=Data1.ClientDataSet3.FieldByName('psid').AsString;
    Edit3.Text:=Data1.ClientDataSet3.FieldByName('TypeC').AsString;
    DBComboBox1.Text:=Data1.ClientDataSet3.FieldByName('typename').AsString;
    DBComboBox2.Text:=Data1.ClientDataSet3.FieldByName('shopname').AsString;
    ComboBox9.Text:=Data1.ClientDataSet3.FieldByName('sqg').AsString;
    ComboBox8.Text:=Data1.ClientDataSet3.FieldByName('ywy').AsString;
    cbb3.Text:=Data1.ClientDataSet3.FieldByName('qyid').AsString;
       cbb1.Text:=Data1.ClientDataSet3.FieldByName('qyname').AsString;
       cbb4.Text:=Data1.ClientDataSet3.FieldByName('jdid').AsString;
       cbb2.Text:=Data1.ClientDataSet3.FieldByName('jdname').AsString;
       ccb5.Text:=Data1.ClientDataSet3.FieldByName('yhdjname').AsString;
       ComboBox6.Text:= Data1.ClientDataSet3.FieldByName('gpstype').AsString;
     if Data1.ClientDataSet3.RecordCount=20 then
      label13.Caption:='只查找前20条数据'
     else  label13.Caption:='总共:'+IntToStr(Data1.ClientDataSet3.RecordCount)+'条数据';
     if Data1.ClientDataSet3.IsEmpty then  ShowSmoothMessage('没有查找到客户');
     sfshow:=True;

end;

procedure TCallCentForm.AdvGlowButton11Click(Sender: TObject);
begin
      Form30.ShowModal;
end;

procedure TCallCentForm.AdvGlowButton12Click(Sender: TObject);
begin            //咨询
    if DBEdit1.Text='' then
      begin
        ShowSmoothMessage('没有客户资料不能咨询！',tsoffice2007Luna);
        exit;
      end;
      if Memo3.Text='' then
      begin
         ShowSmoothMessage('咨询内容不能为空！',tsoffice2007Luna);
        exit;
      end;
      try

        Data1.sds1.Close;
        Data1.sds1.SQL.Text:='insert into ttzixun (shopid,memo,custid,creid,credate,shopname,custname,address,tel) values ('''+edit2.Text+''','''+memo3.Text+''','''+dbedit1.Text+''','''+loginname+''','''+gettime+''','''+dbcombobox2.Text+''','''+dbedit2.Text+''','''+dbedit6.Text+''','''+dbedit3.Text+''')';
        Data1.sds1.ExecSQL;
        Data1.sds1.Close;
        ShowSmoothMessage('咨询记录保存成功！',tsWindows7);
//        addbill('咨询');
        Memo3.Lines.Clear;
      except

      end;
end;

procedure TCallCentForm.AdvGlowButton13Click(Sender: TObject);
begin
      Form31.ShowModal;
end;

procedure TCallCentForm.AdvGlowButton14Click(Sender: TObject);
var
str,zh:string;
begin         //发布信息
      if (DBEdit1.Text='') and (AdvOfficeRadioButton3.Checked=True) then
      begin
        ShowSmoothMessage('没有客户资料不能发布催气信息！',tsoffice2007Luna);
        exit;
      end;
      if Memo4.Text='' then
      begin
         ShowSmoothMessage('信息内容为空不能发布其它信息！',tsoffice2007Luna);
        exit;
      end;
       if (Edit10.Text='') and (AdvOfficeRadioButton4.Checked=True) then
      begin
        ShowSmoothMessage('没有选择门店不能发布信息！',tsoffice2007Luna);
        exit;
      end;
      if AdvOfficeRadioButton3.Checked=True then
      begin
        zh:='客户：'+dbedit2.Text+'，电话：'+dbedit3.Text+' ，地址：'+dbedit6.Text+memo4.Text;

        str:= 'insert into ttxinxi (shopid,memo,creid,credate,shopname,stype) values ('''+edit2.Text+''','''+zh+''','''+loginname+''','''+gettime+''','''+dbcombobox2.Text+''',''0'')';
       end;
       if AdvOfficeRadioButton4.Checked=True then
      begin

        str:= 'insert into ttxinxi (shopid,memo,creid,credate,shopname,ins,stype) values ('''+edit10.Text+''','''+memo4.Text+''','''+loginname+''','''+gettime+''','''+combobox5.Text+''',''0'',''1'')';
       end;
       try

       Data1.sds1.Close;
       Data1.sds1.SQL.Text:=str;
       Data1.sds1.ExecSQL;
       Data1.sds1.Close;
        ShowSmoothMessage('信息发布成功！',tsWindows7);
        Memo4.Lines.Clear;
       except

       end;
end;

procedure TCallCentForm.AdvGlowButton15Click(Sender: TObject);
begin

      Form32.ShowModal;
end;

procedure TCallCentForm.AdvGlowButton16Click(Sender: TObject);
begin
    if DBEdit13.Text<>'' then
    begin
      Form33.Caption:='注销客户资料';
      Form33.AdvGlowButton1.Caption:='注销';
      Form33.Edit7.Text := DBEdit13.Text;
      Form33.ShowModal;
    end
    else ShowSmoothMessage('没有客户不能注销！',tsOffice2007Luna);
end;

procedure TCallCentForm.AdvGlowButton17Click(Sender: TObject);
begin
  if DBEdit1.Text='' then
    begin
      ShowSmoothMessage('没有客户不能收取！');
      Exit;
    end;
     Form72.Edit1.Text:=Edit2.Text;     //门店id
     form72.Edit2.Text:=DBComboBox2.Text;   //客户门店
     Form72.Edit4.Text:=DBEdit2.Text;    //客户名称
     Form72.Edit8.Text:=DBEdit2.Text;
     form72.Edit5.Text:=DBComboBox1.Text;  //客户类型
     Form72.dbedit1.Text:=DBEdit1.Text;    //客户条码
     Form72.ShowModal;
end;

procedure TCallCentForm.AdvGlowButton18Click(Sender: TObject);
//var
// rpt_path,djsn:string;
begin
//       rpt_path := ExtractFilePath(ParamStr(0)) + '\report\';
//       if DBEdit1.Text='' then
//      begin
//        ShowSmoothMessage('没有客户资料不能报修！',tsoffice2007Luna);
//        exit;
//      end;
//      if Memo1.Text='' then
//      begin
//         ShowSmoothMessage('报修内容不能为空！',tsoffice2007Luna);
//        exit;
//      end;
//        djsn:=FormatDateTime('yyyyMMddhhmmss',Now);
//        ACRptEngine1.Init;
//        ACRptEngine1.AddVariable('coutname', dbedit2.Text) ;
//        AcRptEngine1.AddVariable('coutid',dbedit1.Text);
//        ACRptEngine1.AddVariable('coutaddress', dbedit6.Text) ;
//        ACRptEngine1.AddVariable('counttel', dbedit3.Text) ;
//        ACRptEngine1.AddVariable('shopname', dbcombobox2.Text) ;
//        ACRptEngine1.AddVariable('bdate', datetimetostr(sdatetime)) ;
//        ACRptEngine1.AddVariable('memo', Memo1.Text) ;
//        ACRptEngine1.AddVariable('crename', usname) ;
//         AcRptEngine1.AddVariable('sn',djsn);
//       // b8:= NumToChnStr(StrToFloat(b6),True);
//       //  ACRptEngine1.AddGlobalVariable('b8', b8) ;
//        ACRptEngine1.SetReportFile(rpt_path+'bxd.apt');
//        ACRptEngine1.Preview;
      // ACRptEngine1.ShowDesigner;
end;

procedure TCallCentForm.AdvGlowButton19Click(Sender: TObject);
var
 List: TStringList;
 i:Integer;
 zh:string;
begin
//    try
//    if Data1.ds13.FieldByName('气瓶编号').AsString='' then
//    begin
//      ShowSmoothMessage('没有登记气瓶不能收费，请先登记！',tsOffice2007Luna);
//      exit;
//    end
//    else zh:=Data1.ds13.FieldByName('气瓶编号').AsString;
//     form62.ComboBox1.Items.Clear;
//     List := TStringList.Create;
//     List.CommaText := zh;
//     for i := 0 to List.Count-1 do
//     begin
//        form62.ComboBox1.Items.Add(List[i]);
//     end;
//      form62.ComboBox1.ItemIndex:=0;
//      Form62.Edit6.Text:=DBEdit1.Text;
//      Form62.Edit7.Text:=DBEdit2.Text;
//      Form62.Edit8.Text:=Edit2.Text;
//      Form62.ShowModal;
//    except
//
//    end;
end;

procedure TCallCentForm.AdvGlowButton1Click(Sender: TObject);
begin
      Form33.Edit5.Text:=Edit1.Text;
      Form33.Caption:='增加客户资料';
      Form33.AdvGlowButton1.Caption:='保存';
      Form33.ShowModal;
end;

procedure TCallCentForm.AdvGlowButton20Click(Sender: TObject);
var
 rpt_path,djsn:string;
begin
       rpt_path := ExtractFilePath(ParamStr(0)) + '\report\';
       if DBEdit1.Text='' then
       begin
        ShowSmoothMessage('没有客户资料不能投诉！',tsoffice2007Luna);
        exit;
      end;
      if Memo2.Text='' then
      begin
         ShowSmoothMessage('投诉内容不能为空！',tsoffice2007Luna);
        exit;
      end;
         djsn:=FormatDateTime('yyyyMMddhhmmss',Now);
        ACRptEngine1.Init;
        ACRptEngine1.AddVariable('coutname', dbedit2.Text) ;
        AcRptEngine1.AddVariable('coutid',dbedit1.Text);
        ACRptEngine1.AddVariable('coutaddress', dbedit6.Text) ;
        ACRptEngine1.AddVariable('counttel', dbedit3.Text) ;
        ACRptEngine1.AddVariable('shopname', dbcombobox2.Text) ;
        ACRptEngine1.AddVariable('bdate', gettime) ;
        ACRptEngine1.AddVariable('memo', Memo2.Text) ;
        ACRptEngine1.AddVariable('crename', loginname) ;
         AcRptEngine1.AddVariable('sn',djsn);

       // b8:= NumToChnStr(StrToFloat(b6),True);
       //  ACRptEngine1.AddGlobalVariable('b8', b8) ;
        ACRptEngine1.SetReportFile(rpt_path+'tsd.apt');
        ACRptEngine1.Preview;
      // ACRptEngine1.ShowDesigner;

end;

procedure TCallCentForm.AdvGlowButton21Click(Sender: TObject);
begin
//  CmoneyForm.ShowModal;
end;

procedure TCallCentForm.AdvGlowButton24Click(Sender: TObject);
var
  iRet :integer;   //iPort
  iFileHandle,iFileLength: Integer;
  Buffer: PWideChar;
  sWZ :WideString;
begin
   if DBEdit13.Text='' then
   begin
     ShowSmoothMessage('没有客户资料,不能读取',tsOffice2007Luna);
     Exit;
   end;
//  iPort := 1001 ;
  iRet:=CVR_InitComm(sfport);
    if iRet<>1  then
    begin
        ShowSmoothMessage('连接阅读器失败',tsOffice2007Luna);
        CVR_CloseComm();
        exit;
    end;
    iRet := CVR_Authenticate();
    if iRet =1 then
    begin
      iRet := CVR_Read_Content(1);      //
      CVR_CloseComm();                  //
      if iRet<>1 then
      begin
        ShowSmoothMessage('读基本信息出错',tsOffice2007Luna);
        exit;
      end;
    end
    else
    begin
      case iRet of
        0: ShowSmoothMessage('初始化失败,请检查！',tsOffice2007Luna);
        2: ShowSmoothMessage('寻卡失败,请重新放置卡片！',tsOffice2007Luna);
        3: ShowSmoothMessage('选卡失败！',tsOffice2007Luna);
      end;
      iRet := CVR_Read_Content(1);
      CVR_CloseComm();
      exit;
    end;
    try
      iFileHandle := FileOpen(ExtractFilePath(Application.ExeName) +'wz.txt', fmOpenRead);
      iFileLength := FileSeek(iFileHandle,0,2);
      FileSeek(iFileHandle,0,0);
      Buffer := PWideChar(AllocMem(iFileLength +2));
      FileRead(iFileHandle, Buffer^, iFileLength);
      FileClose(iFileHandle);
      sWZ:=WideChartostring(buffer);
      dbEdit2.Text := copy(sWZ,1,15);  //姓名
       Edit4.Text := copy(sWZ,1,15);  //姓名
       delete(sWZ,1,26);               //住址
       Edit16.Text := copy(sWZ,1,35);
       delete(sWZ,1,35);              //身份证号
       dbEdit10.Text := copy(sWZ,1,18);
       Edit15.Text := copy(sWZ,1,18);
       Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +'zp.bmp');
       sfshow := False;
    finally
      FreeMem(Buffer);
    end;
end;

procedure TCallCentForm.AdvGlowButton26Click(Sender: TObject);
begin
  if DBEdit1.Text='' then Exit;
      Data1.ds12.close;
      data1.ds12.SQL.Text:='select a.khbh as 客户编号,a.gptm as 钢瓶编号,b.shopname as 配送门店,a.cuser as 操作人,a.cdate as 操作日期'+
      '  from tb_khgp a left join tshop b on (a.shopid=b.shopid) where a.khbh='''+DBEdit1.Text+''' order by a.cdate desc';
      Data1.ds12.Open;
      if Data1.ds12.IsEmpty then  Data1.ds12.Close;
end;

procedure TCallCentForm.AdvGlowButton28Click(Sender: TObject);
begin
  Form94.Panel1.Visible := True;
  Form94.Caption :='送气工位置信息';
  Form94.Show;
  Form94.getsqgadress;
end;

function BitmapToString(img:TBitmap):string ;
var
  ms:TMemoryStream;
  ss:TStringStream;
  s:string;
begin
    ms := TMemoryStream.Create;
    img.SaveToStream(ms);
    ss := TStringStream.Create('');
    ms.Position:=0;
    EncodeStream(ms,ss);//将内存流编码为base64字符流
    s:=ss.DataString;
    ms.Free;
    ss.Free;
    result:=s;
end;

procedure TCallCentForm.AdvGlowButton2Click(Sender: TObject);
var
 recno:Integer;
 yj,imgstr:string;
begin
  if DBEdit13.Text='' then Exit;
    if (DBEdit1.Text='')  then
    begin
      ShowSmoothMessage('客户编号不能为空！');
      Exit;
    end;
    if (edit3.Text='')  then
    begin
      ShowSmoothMessage('请选择客户类型！');
      Exit;
    end;
//    if (DBEdit8.Text<>'') and (Length(DBEdit8.Text)<>10)  then
//    begin
//      ShowSmoothMessage('会员卡号必须为10位！');
//      Exit;
//    end;
    Data1.ds1.Close;
    Data1.ds1.sql.Text:='select id from tbCustomer_Info where barcode='''+DBEdit1.Text+''' and id<>'''+dbedit13.text+''' ';
    Data1.ds1.Open;
    if not Data1.ds1.IsEmpty then
    begin
      ShowSmoothMessage('已存在客户编号:'+DBEdit1.text+'的信息',tsOffice2007Luna);
      Exit;
    end;
    Data1.ds1.Close;
    Data1.ds1.sql.Text:='select id from tbCustomer_Info where tel='''+DBEdit3.Text+''' and id<>'''+dbedit13.text+''' ';
    Data1.ds1.Open;
    if not Data1.ds1.IsEmpty then
    begin
      ShowSmoothMessage('已存在手机号码:'+DBEdit3.text+'的信息',tsOffice2007Luna);
      Exit;
    end;
    if DBEdit4.Text<>'' then
    begin
      Data1.ds1.Close;
      Data1.ds1.sql.Text:='select id from tbCustomer_Info where (tel='''+DBEdit4.Text+''' or contact='''+DBEdit4.Text+''') and id<>'''+dbedit13.text+''' ';
      Data1.ds1.Open;
      if not Data1.ds1.IsEmpty then
      begin
        ShowSmoothMessage('已存在联系电话:'+DBEdit4.text+'的信息',tsOffice2007Luna);
        Exit;
      end;
    end;
    if DBEdit10.Text<>'' then
    begin
      Data1.ds1.Close;
      Data1.ds1.sql.Text:='select id from tbCustomer_Info where bayday='''+DBEdit10.Text+''' and id<>'''+dbedit13.text+''' ';
      Data1.ds1.Open;
      if not Data1.ds1.IsEmpty then
      begin
        ShowSmoothMessage('已存在身份证号:'+DBEdit10.text+'的信息',tsOffice2007Luna);
        Exit;
      end;
    end;
    if DBEdit8.Text<>'' then
    begin
      Data1.ds1.Close;
      Data1.ds1.sql.Text:='select id from tbCustomer_Info where hynumber='''+DBEdit8.Text+''' and id<>'''+dbedit13.text+''' ';
      Data1.ds1.Open;
      if not Data1.ds1.IsEmpty then
      begin
        ShowSmoothMessage('已存在会员卡号:'+DBEdit8.text+'的信息',tsOffice2007Luna);
        Exit;
      end;
    end;
    if AdvOfficeCheckBox1.Checked then  yj:='1' else yj:='0' ;
    try
       Data1.ClientDataSet6.Close;
      if sfshow=True then
      begin
        Data1.ClientDataSet6.SQL.Text:='update tbCustomer_Info set barcode='''+Trim(DBEdit1.Text)+''',psid='''+edit2.Text+''',typec='''+edit3.Text+''',NameC='''+dbedit2.Text+''',tel='''+dbedit3.Text+''',Contact='''+dbedit4.Text+''', '+
         'Address='''+dbedit6.Text+''',SendPeriod='''+dbedit7.Text+''',Remark='''+dbmemo1.Text+''',hynumber='''+dbedit8.Text+''',yj='''+yj+''',qyid='''+cbb3.Text+''',jdid='''+cbb4.Text+''',yhdjname='''+ccb5.Text+''','+
         ' bayday='''+dbedit10.Text+''',kfsn='''+dbedit11.Text+''',gpstype='''+combobox6.Text+''',sqg='''+combobox9.Text+''',ywy='''+combobox8.Text+''',UpdateDate='''+gettime+''',UpdateUser='''+loginname+''' where id='''+dbedit13.text+'''';
      end
      else
      begin
        if Image1.Picture.Graphic <> nil then  imgstr :=',sfaddress='''+edit16.Text+''',imgbase='''+BitmapToString(Image1.Picture.Bitmap)+''''
        else imgstr:='';                               //,CreateDate='''+dbedit12.Text+'''
        Data1.ClientDataSet6.SQL.Text:='update tbCustomer_Info set barcode='''+Trim(DBEdit1.Text)+''',psid='''+edit2.Text+''',typec='''+edit3.Text+''',NameC='''+dbedit2.Text+''',tel='''+dbedit3.Text+''',Contact='''+dbedit4.Text+''', '+
         'Address='''+dbedit6.Text+''',SendPeriod='''+dbedit7.Text+''',Remark='''+dbmemo1.Text+''',hynumber='''+dbedit8.Text+''',yj='''+yj+''',qyid='''+cbb3.Text+''',jdid='''+cbb4.Text+''',yhdjname='''+ccb5.Text+''','+
         ' bayday='''+dbedit10.Text+''',kfsn='''+dbedit11.Text+''',sqg='''+combobox9.Text+''',ywy='''+combobox8.Text+''',UpdateDate='''+gettime+''',UpdateUser='''+loginname+''',gpstype='''+combobox6.Text+''' '+imgstr+' where id='''+dbedit13.text+'''';
      end;
      sfshow := True;
     Data1.ClientDataSet6.ExecSQL;
     ShowSmoothMessage('客户资料修改成功！',tsOffice2007Luna);
     recno:=Data1.ClientDataSet3.RecNo;
     Data1.ClientDataSet3.Close;
     Data1.ClientDataSet3.Open;
     Data1.ClientDataSet3.RecNo:=recno;
    except
      ShowSmoothMessage('客户资料修改失败，请检查！',tsOffice2007Luna);
    end;
    Data1.ClientDataSet6.Close;
end;

procedure TCallCentForm.sfbutt(Sender: TObject);
begin
    try

      if DBEdit1.Text='' then
      begin
        ShowSmoothMessage('没有客户不能收费');
        Exit;
      end;
      Form71.Edit2.Text:=DBEdit1.Text;
      Form71.Edit1.Text:=DBEdit2.Text;
      form71.ShowModal;
    except

    end;
end;


procedure TCallCentForm.AdvGlowButton3Click(Sender: TObject);
var
  str,id,jc,priceid,shul,jf,je,zjmoney,sdate:string;
begin
//  if ComboBox7.ItemIndex=-1 then
//  begin
//    ShowSmoothMessage('请选择租瓶费！',tsOffice2007Luna);
//    Exit;
//  end;

   dj:='0';
   yh:='0';
   je:='0';
   sqf:='0';
   zjmoney:=ComboBox7.Text;
   if Data1.ds11.IsEmpty then
   begin
      bottleid:='';
      wherestr:='';
   end;
   if DBEdit1.Text<>'' then
   begin
     if sfbool then
     begin
       if DBEdit10.Text='' then
       begin
         ShowSmoothMessage('请先进行实名认证,再下单！',tsOffice2007Luna);
         Exit;
       end;
     end;
        shul:=edit11.Text;
        try
          sdate := gettime;
          Data1.sds1.Close;
          Data1.sds1.SQL.Text:='SELECT CONVERT(varchar(100), GETDATE(), 23) dd ';
          Data1.sds1.Open;
          if not Data1.sds1.IsEmpty then
          begin
             sdate := Data1.sds1.FieldByName('dd').AsString;
          end;
          Data1.sds1.Close;
          Data1.sds1.SQL.Text:='select max(bisentid) as maxid from tbisent where optdate>='''+sdate+''' ';
          Data1.sds1.Open;
          if  Data1.sds1.FieldByName('maxid').AsString<>'' then
          begin
             str:=Data1.sds1.FieldByName('maxid').AsString;
             bisentid:='SN'+FormatDateTime('yymmdd' ,StrToDate(sdate))+inttostr(strtoint(copy(str,9,6))+1)
          end
          else   begin
             bisentid:='SN'+FormatDateTime('yymmdd' ,StrToDate(sdate))+'100001';
          end;
          Data1.sds1.Close;                                                    //'''+datetimetostr(sdatetime)+'''
          Data1.sds1.SQL.Text:='INSERT INTO tbisent (bisentid,optdate) VALUES ('''+bisentid+''',GETDATE())';
          Data1.sds1.ExecSQL;
          if wherestr='' then
              wherestr:=' where bisentid='''+bisentid+''' '
          else  wherestr:=wherestr+'or bisentid='''+bisentid+''' '
        except

        end;

     try
       if (Edit13.Text<>'') then
       begin
         Data1.sds1.Close;
         Data1.sds1.SQL.Text:='select money,typeid from tshopprice where ((name like '''+combobox2.Text+'%'') and (shopid='''+edit2.Text+'''))';
         Data1.sds1.Open;
         if not Data1.sds1.IsEmpty then  //查找门店设置的商品单价
         begin
            id:=Data1.sds1.FieldByName('typeid').AsString
         end
         else id:='1';
           dj:=edit13.Text;
       end
       else                     //没查找到就查找系统设置的商品单价
       begin
         Data1.sds1.Close;
         Data1.sds1.SQL.Text:='select money,id from tpriceinfo where name='''+combobox2.Text+'''';
         Data1.sds1.Open;
         if not Data1.sds1.IsEmpty then
         begin
           dj:=Data1.sds1.FieldByName('money').AsString;
           id:=Data1.sds1.FieldByName('id').AsString;
         end
         else dj:='0';
       end;
//       if Data1.ClientDataSet3.FieldByName('TypeC').AsString='103' then  dj:=FormatFloat('0.00',StrToFloat(dj)-5);
//       if Data1.ClientDataSet3.FieldByName('TypeC').AsString='104' then  dj:=FormatFloat('0.00',StrToFloat(dj)-10);
       yh:='0';
       Data1.sds1.Close;
       Data1.sds1.SQL.Text:='select zjmoney from tbCustomer_Type where Type_ID='''+Data1.ClientDataSet3.FieldByName('TypeC').AsString+'''';
       Data1.sds1.Open;
       if not Data1.sds1.IsEmpty then
       begin
         yh:=Data1.sds1.FieldByName('zjmoney').AsString;
       end;
       if DBEdit8.Text<>'' then
       begin
         Data1.sds1.Close;
         Data1.sds1.SQL.Text:='select fjf as sl,fje as je from tbCustomer_Info where barcode='''+dbedit1.Text+''' ';
         Data1.sds1.Open;
         if not Data1.sds1.IsEmpty then
         begin
            jf:=Data1.sds1.FieldByName('sl').AsString;
            je:=Data1.sds1.FieldByName('je').AsString;
            if (jf<>'') and (je<>'') then
            begin
              Data1.sds1.Close; //查找会员优惠
              Data1.sds1.SQL.Text:='select hyyh from tb_hyyh where jf<='''+jf+''' and smoney<='''+je+''' order by hyyh desc ';
              Data1.sds1.Open;
              if not Data1.sds1.IsEmpty then
              begin
                if (Data1.sds1.FieldByName('hyyh').AsString<>'0') and (Data1.sds1.FieldByName('hyyh').AsString<>'') then
                  yh:=FloatToStr(strtofloat(yh)+Data1.sds1.FieldByName('hyyh').AsFloat)
                else   //没有就查询商品优惠
                begin
                  Data1.sds1.Close; //查找商品优惠
                  Data1.sds1.SQL.Text:='select ymoney from tbCustomer_Info  where ((barcode='''+dbedit1.Text+''') and (priceid='''+id+'''))';
                  Data1.sds1.Open;
                  if (not Data1.sds1.IsEmpty) and (Data1.sds1.FieldByName('ymoney').AsString<>'') and (Data1.sds1.FieldByName('ymoney').AsString<>'0') then
                   yh:=FloatToStr(strtofloat(yh)+Data1.sds1.FieldByName('ymoney').AsFloat);
                end;
              end
            end;
         end
         else   //没有就查询商品优惠
         begin
             Data1.sds1.Close; //查找商品优惠
             Data1.sds1.SQL.Text:='select ymoney from tbCustomer_Info  where ((barcode='''+dbedit1.Text+''') and (priceid='''+id+'''))';
             Data1.sds1.Open;
             if (not Data1.sds1.IsEmpty) and (Data1.sds1.FieldByName('ymoney').AsString<>'') and (Data1.sds1.FieldByName('ymoney').AsString<>'0') then
               yh:=FloatToStr(strtofloat(yh)+Data1.sds1.FieldByName('ymoney').AsFloat);
         end;
       end
       else
       begin
         Data1.sds1.Close; //查找商品优惠
        Data1.sds1.SQL.Text:='select ymoney from tbCustomer_Info  where ((barcode='''+dbedit1.Text+''') and (priceid='''+id+'''))';
         Data1.sds1.Open;
         if (not Data1.sds1.IsEmpty) and (Data1.sds1.FieldByName('ymoney').AsString<>'') and (Data1.sds1.FieldByName('ymoney').AsString<>'0') then
           yh:=FloatToStr(strtofloat(yh)+Data1.sds1.FieldByName('ymoney').AsFloat);
       end;
        yh:=FormatFloat('0.00',StrToFloat(yh)*StrToFloat(shul));

      if not AdvOfficeCheckBox2.Checked then
      begin

        Data1.sds1.Close;    //查找送气费
         Data1.sds1.SQL.Text:='select smoney from tsqmoney where ((tfor<='''+dbedit7.Text+''') and (tto>='''+dbedit7.Text+''') and (pricename='''+combobox2.Text+'''))';
       Data1.sds1.Open;
        if not Data1.sds1.IsEmpty  then
        begin
          sqf:=Data1.sds1.FieldByName('smoney').AsString;
        end
        else
        begin
          Data1.sds1.Close;
          Data1.sds1.SQL.Text:='select max(tto) as max from tsqmoney where pricename='''+combobox2.Text+''' ';
          Data1.sds1.Open;
          if Data1.sds1.FieldByName('max').AsString <>'' then
          begin
            jc:=Data1.sds1.FieldByName('max').AsString ;
            Data1.sds1.Close;
            Data1.sds1.SQL.Text:='select smoney,tfor from tsqmoney where ((tto=0) and (pricename='''+combobox2.Text+'''))';
            Data1.sds1.Open;
            if not Data1.sds1.IsEmpty  then
            begin
              if Data1.sds1.FieldByName('tfor').AsString<DBEdit7.Text then
              begin
                sqf:=IntToStr(StrToInt(jc)+strtoint(Data1.sds1.FieldByName('smoney').AsString)*(strtoint(DBEdit7.Text)-strtoint(Data1.sds1.FieldByName('tfor').AsString)));
              end;
              if Data1.sds1.FieldByName('tfor').AsString=DBEdit7.Text then
              begin
                sqf:= inttostr(strtoint(jc)+strtoint(Data1.sds1.FieldByName('smoney').AsString));
              end;
            end;
          end
          else  sqf:='0.00';
        end;
      end;
       sqf:=FormatFloat('0.00',StrToFloat(sqf)*StrToFloat(shul));
       zjmoney := FormatFloat('0.00',StrToFloat(zjmoney)*StrToFloat(shul));
       je:=FormatFloat('0.00', (StrToFloat(dj)*StrToFloat(edit11.Text)-strtofloat(yh)+strtofloat(sqf)+strtofloat(zjmoney)));
       Data1.sds1.Close;
       Data1.sds1.SQL.Text:='select typeid from tpriceinfo where name='''+combobox2.Text+'''';
       Data1.sds1.Open;
       if not Data1.sds1.IsEmpty then  priceid:=Data1.sds1.FieldByName('typeid').AsString;

       Data1.sds1.Close;
       Data1.sds1.SQL.Text:='INSERT INTO tbisentprice (bisentid,pricename,sl,dw,dj,yfmoney,smoney,money,priceid,glmoney)'+
       ' VALUES('''+bisentid+''','''+combobox2.Text+''','''+edit11.Text+''','''+edit7.Text+''','''+dj+''','''+yh+''','''+sqf+''','''+je+''','''+priceid+''','''+zjmoney+''')';
        Data1.sds1.Execute;
        Data1.ds11.Close;                                          //dw as 单位,
        Data1.ds11.SQL.Text:='select bisentid as 单号,priceid as 商品编号,pricename as 商品名称,sl as 数量,dj as 单价,yfmoney as 优惠,smoney as 送气费,glmoney as 租瓶费,money as 金额 from tbisentprice '+wherestr;
        Data1.ds11.Open;
//        ShowSmoothMessage('商品添加成功！',tsOffice2007Luna);
//        AdvGlowButton3.Enabled:=False;
        addyes:=True;
     except
       on E: Exception do
       begin
        ShowMessage(e.Message);
        ShowSmoothMessage('商品添加失败，请检查！',tsOffice2007Luna);
        Data1.sds1.Close;
        Data1.sds1.SQL.Text:='delete from  tbisent where bisentid='''+bisentid+''' ';
        Data1.sds1.ExecSQL;
        Data1.sds1.Close;
        Data1.sds1.SQL.Text:='delete from  tbisentprice where bisentid='''+bisentid+''' ';
        Data1.sds1.ExecSQL;
        addyes:=False;
       end;

     end;
   end
   else  ShowSmoothMessage('没有客户不能添加商品！',tsOffice2007Luna);

end;

procedure TCallCentForm.AdvGlowButton48Click(Sender: TObject);
var
mm:Integer;
begin
      Label18.Caption:='';
      lbl2.Caption:='';
     if DBEdit1.Text='' then Exit;
      mm:=0;
      Data1.ds12.close;   //a.qpsl as 欠瓶数量,
      Data1.ds12.SQL.Text:='select top 10 a.shopname as 配送门店,a.optdate as 订气时间,b.pricename as 商品,case when a.status=''0'' then ''未派工'' else ''已完成'' end as 状态,sum(b.sl) as 数量,b.dj as 单价,sum(b.smoney) as 送气费,sum( b.money) as 合计, '+
      ' a.empname as 送气工,a.zpbar as 重瓶条码,a.kpbar as 回单空瓶条码,a.memo as 订气备注   from '+
      ' tbisent a left join tbisentprice b on a.bisentid=b.bisentid where (a.corpid='''+DBEdit1.Text+''')   and (a.type<>3)'+
      ' group by a.optdate,a.empname,b.pricename,b.dj,b.sl,b.money,a.shopname,a.ywy,a.zpbar,a.kpbar,a.qpsl,b.smoney,a.status,a.memo ORDER BY a.optdate DESC ';
        Data1.ds12.Open;
        if Data1.ds12.IsEmpty then  Data1.ds12.Close
        else
        begin
//         while not Data1.ds12.Eof do
//         begin
//           mm:=mm+data1.ds12.FieldByName('数量').Value;
//           Data1.ds12.Next;
//         end;
//          Label18.Caption:='订气数量：'+inttostr(mm)+'瓶';
          Data1.sds1.Close;
          Data1.sds1.SQL.Text:='select  sum(a.sl) as sl from tbisent a where (a.corpid='''+DBEdit1.Text+''') and (a.type<>3) ';
          data1.sds1.Open;
          if  not data1.sds1.IsEmpty then
               Label18.Caption:='订气数量：'+data1.sds1.FieldByName('sl').AsString+'瓶';
          if DBEdit8.Text<>'' then
          begin
            Data1.sds1.Close;
            Data1.sds1.SQL.Text:='select  fjf as sl  from tbCustomer_Info where barcode='''+DBEdit1.Text+''' ';
//            Data1.sds1.SQL.Text:='select sum(case when b.pricename like ''15%气'' or b.pricename like ''14.5%气'' then b.sl when b.pricename like ''45%气'' or b.pricename like ''50%气'' then b.sl*3 '+
//            ' when b.pricename like ''5%气'' or b.pricename like ''4.8%气'' then b.sl*0.3 when b.pricename like ''2%气'' then b.sl*0.2 when b.pricename like ''9.5%气'' then b.sl*0.7 end ) as sl '+
//            ' from tbisent a left join tbisentprice b on (a.bisentid=b.bisentid) where a.corpid='''+DBEdit1.Text+''' and a.status<>''0'' and a.type<>''3''  and a.money>0 group by a.corpid';
            Data1.sds1.Open;
            if  not data1.sds1.IsEmpty then
              lbl2.Caption:='客户积分：'+data1.sds1.FieldByName('sl').AsString;
            Data1.sds1.Close;
           end;
        end;
//        if DBEdit8.Text<>'' then   lbl2.Caption:='客户积分：'+data1.ClientDataSet3.FieldByName('fjf').AsString;


end;

procedure TCallCentForm.AdvGlowButton4Click(Sender: TObject);
begin
   if DBEdit1.Text='' then Exit;
      Data1.ds12.close;        //barcode as 客户编号,name as 客户名称
//      data1.ds12.SQL.Text:='select case when stype=0 then ''收取押金'' when stype=1 then ''收验瓶费'' when stype=2 then ''收租管费'' else ''退押金'' end as 收费类别, '+
//      ' gqsn as 押金单号,sl as 数量,money as 金额,code as 钢瓶编号,memo as 钢瓶类型,'+  //shopid as 收款门店,
//      ' credate as 收费日期,crename as 收费人  from tbskbottle where barcode='''+Form1.DBEdit1.Text+''' ';
      data1.ds12.SQL.Text:='select id as ID,case when stype=0 then ''收取押金'' when stype=1 then ''收验瓶费'' when stype=2 then ''收租管费'' when stype=3 then ''退押金'' else ''气瓶置换'' end as 收费类别, '+
      ' case when type=0 then ''正常'' else ''已退'' end as 状态,gqsn as 押金单号,sl as 数量,money as 金额,bfdate as 到期日期,credate as 收款日期,code as 钢瓶编号,memo as 钢瓶类型,mmoney as 每月租金,'+  //shopid as 收款门店,
      ' crename as 收款人 from tbskbottle where barcode='''+DBEdit1.Text+''' and type=0 and (stype=0 or stype=1 or stype=2) order by id desc';
      Data1.ds12.Open;
      if Data1.ds12.IsEmpty then  Data1.ds12.Close;
end;

procedure TCallCentForm.dClick(Sender: TObject);
var
shopid1,shopname,yudate,typeid,status,typename,empname,jz,optdate,sl,priceid:string;//门店id，门店名，预约时间，订单类型
sdate,str:string;
jf,smon:Real;
i:Integer;
begin
 if AdvStringGrid1.Cells[0,1]='' then exit;
  if AdvStringGrid1.RowCount>11 then
         begin
            ShowMessage('数量大于10,请检查！');
            Exit;
         end;
  try
     sdate := gettime;
          Data1.sds1.Close;
          Data1.sds1.SQL.Text:='SELECT CONVERT(varchar(100), GETDATE(), 23) dd ';
          Data1.sds1.Open;
          if not Data1.sds1.IsEmpty then
          begin
             sdate := Data1.sds1.FieldByName('dd').AsString;
          end;
          Data1.sds1.Close;
          Data1.sds1.SQL.Text:='select max(bisentid) as maxid from tbisent where optdate>='''+sdate+''' ';
          Data1.sds1.Open;
          if  Data1.sds1.FieldByName('maxid').AsString<>'' then
          begin
             str:=Data1.sds1.FieldByName('maxid').AsString;
             bisentid:='SN'+FormatDateTime('yymmdd' ,StrToDate(sdate))+inttostr(strtoint(copy(str,9,6))+1)
          end
          else   begin
             bisentid:='SN'+FormatDateTime('yymmdd' ,StrToDate(sdate))+'100001';
          end;
          Data1.sds1.Close;                                                    //'''+datetimetostr(sdatetime)+'''
          Data1.sds1.SQL.Text:='INSERT INTO tbisent (bisentid,optdate) VALUES ('''+bisentid+''',GETDATE())';
          Data1.sds1.ExecSQL;
    for I := 1 to AdvStringGrid1.RowCount-1 do
    begin
      with AdvStringGrid1 do
      begin
        Data1.sds1.Close;
       Data1.sds1.SQL.Text:='select typeid from tpriceinfo where name='''+cells[0,i]+'''';
       Data1.sds1.Open;
       if not Data1.sds1.IsEmpty then  priceid:=Data1.sds1.FieldByName('typeid').AsString;

       Data1.sds1.Close;
       Data1.sds1.SQL.Text:='INSERT INTO tbisentprice (bisentid,pricename,sl,dw,dj,yfmoney,smoney,money,priceid,glmoney)'+
       ' VALUES('''+bisentid+''','''+cells[0,i]+''','''+cells[2,i]+''','''+cells[3,i]+''','''+cells[1,i]+''','''+cells[4,i]+''','''+cells[5,i]+''','''+cells[7,i]+''','''+priceid+''','''+cells[6,i]+''')';
        Data1.sds1.Execute;
        Data1.ds11.Close;                                          //dw as 单位,
        Data1.ds11.SQL.Text:='select bisentid as 单号,priceid as 商品编号,pricename as 商品名称,sl as 数量,dj as 单价,yfmoney as 优惠,smoney as 送气费,glmoney as 租瓶费,money as 金额 from tbisentprice '+wherestr;
        Data1.ds11.Open;
      end;
    end;
    addyes:=True;

  except
   on E: Exception do
   begin
     showmessage('保存订单失败：'+e.message);
     Exit;
   end;
  end;
  if addyes then
  begin
     shopid:='';
     shopname:='';
     typeid:='';
     if AdvOfficeCheckBox1.Checked then
      jz:='1' else jz:='0';
     sqf:='0';
     yh:='0';
     je:='0';
     sl:='0';
     jf:=0;
     smon:=0;
     yudate:='';
     if (ComboBox10.Text<>'') and (ComboBox4.Text<>'') then
     begin
       shopid1:=ComboBox10.Text;
       shopname:=ComboBox4.Text;
     end
     else   begin
       shopid1:=Edit2.Text;
       shopname:=DBComboBox2.Text;
     end;
     if AdvOfficeRadioButton1.Checked=True then
     begin
       yudate:=DateToStr(DateTimePicker1.Date)+' '+TimeToStr(DateTimePicker2.Time);
       typeid:='1';     //预约订单
     end;
     if AdvOfficeRadioButton2.Checked=True then
     begin
       typeid:='2';   //加急订单
     end;
     if ((AdvOfficeRadioButton1.Checked=False) and (AdvOfficeRadioButton2.Checked=False)) then
     begin
       typeid:='0';    //正常订单
     end;
     if AdvOfficeCheckBox2.Checked then
     begin
      status:='1' ;
      empname:='自提';
      shopid1:=shopid;
      shopname:='';
     end
     else
     begin
       status:='0';
       if ComboBox3.Text<>'' then  empname:=ComboBox3.Text
       else empname:= ComboBox9.Text;
     end;
//     if right<>'' then
//     begin
//        Data1.sds111.Close;
//        Data1.sds111.SQL.Text:='select typename from tcbottletype where typeid='''+right+'''';
//        Data1.sds111.Open;
//        if not Data1.sds111.IsEmpty then
//        begin
//          typename:=Data1.sds111.FieldByName('typename').AsString;
//        end;
//     end;
     if AdvOfficeCheckBox4.Checked then
        optdate:=DateToStr(DateTimePicker3.Date)+' '+timetostr(DateTimePicker4.Time)
     else  optdate:=gettime;
     try
       if AdvStringGrid1.Cells[0,1]<>'' then
       begin
          dj:= AdvStringGrid1.Cells[1,1];
           sqf:=sqfEdit.Text;
           yh:=yhEdit.Text;
           je:=Edit18.Text;
           sl:=Edit17.Text;
          Data1.sds1.Close;                             //,typename='''+typename+''' 钢瓶类型       '''+optdate+'''
          Data1.sds1.SQL.Text:='update tbisent set empname='''+empname+''',status='''+status+''',optdate=GETDATE(),optid='''+Loginname+''',type='''+typeid+''','+
          'yydate='''+yudate+''',shopid='''+shopid1+''',shopname='''+shopname+''',hynumber='''+dbedit8.Text+''',ywy='''+combobox8.Text+''',jz='''+jz+''','+
          'corpid='''+dbedit1.Text+''',corptypename='''+dbcombobox1.Text+''',corpname='''+dbedit2.Text+''','+
          'address='''+dbedit6.Text+''',tel='''+dbedit3.Text+''',Floor='''+dbedit7.Text+''',smoney='''+sqf+''',hmoney='''+dj+''','+
          'yhmoney='''+yh+''',glmoney='''+zpfEdit.Text+''',money='''+je+''',memo='''+edit9.Text+''',sl='''+sl+''' where bisentid='''+bisentid+'''';
                                                                   //kpbar='''+bottleid+''', 20120206  取消写入该值
          Data1.sds1.ExecSQL;
        // Data1.ds11.First;
         for I := 1 to AdvStringGrid1.RowCount-1 do
         begin
           if DBEdit8.Text <>'' then
           begin
             Data1.sds111.Close;
             Data1.sds111.SQL.Text:='select onejf from tpriceinfo where name='''+AdvStringGrid1.Cells[0,i]+'''';
             Data1.sds111.Open;
             if not Data1.sds111.IsEmpty then
             begin
               if Data1.sds111.FieldByName('onejf').AsString<>'0' then
               begin
                  jf:=strtofloat(Data1.sds111.FieldByName('onejf').AsString)* strtofloatdef(AdvStringGrid1.Cells[2,i],0);
               end;
             end;
           end;
           dj:= AdvStringGrid1.Cells[1,i];
           sqf:=AdvStringGrid1.Cells[5,i];
           yh:=AdvStringGrid1.Cells[4,i];
           je:=AdvStringGrid1.Cells[7,i];
           sl:=AdvStringGrid1.Cells[2,i];
           smon:=smon+strtofloatdef(AdvStringGrid1.Cells[7,i],0);
//           try
//             Data1.sds1.Close;                             //,typename='''+typename+''' 钢瓶类型       '''+optdate+'''
//             Data1.sds1.SQL.Text:='update tbisent set empname='''+empname+''',status='''+status+''',optdate=GETDATE(),optid='''+Loginname+''',type='''+typeid+''','+
//             'yydate='''+yudate+''',shopid='''+shopid1+''',shopname='''+shopname+''',hynumber='''+dbedit8.Text+''',ywy='''+combobox8.Text+''',jz='''+jz+''','+
//             'corpid='''+dbedit1.Text+''',corptypename='''+dbcombobox1.Text+''',corpname='''+dbedit2.Text+''','+
//             'address='''+dbedit6.Text+''',tel='''+dbedit3.Text+''',Floor='''+dbedit7.Text+''',smoney='''+sqf+''',hmoney='''+dj+''','+
//             'yhmoney='''+yh+''',glmoney='''+Data1.ds11.FieldByName('租瓶费').AsString+''',money='''+je+''',memo='''+edit9.Text+''',sl='''+sl+''' where bisentid='''+Data1.ds11.FieldByName('单号').AsString+'''';
//                                                                   //kpbar='''+bottleid+''', 20120206  取消写入该值
//              Data1.sds1.ExecSQL;
             if AdvOfficeCheckBox2.Checked then
             begin
              ShowMessage('是自带瓶充装客户,现在马上打印充装票！');
              b1:=DBEdit1.Text;    //客户条码
              b2:=AdvStringGrid1.Cells[0,i];  //商品类型
              b3:=edit11.Text;  //数量
              b4:=loginName;          //收款员
              b5:=dj;              //单价
              b6:=FormatFloat('0.00',strtofloat(dj)*strtofloat(b3));//合计
              b7:=bottleid; //客户瓶号
              b9:= bisentid;//订单号
              Form41.lbl2.Caption:=je+'元';
              Form41.ShowModal;
             end;
//           except
//
//           end;


         end;
         ShowMessage('订单保存成功！');
         ComboBox3.ItemIndex:=-1;
         if AdvOfficeCheckBox2.Checked then
         begin
           if (DBEdit8.Text <>'') and (jf<>0) then
           begin
             Data1.sds1.Close;
             Data1.sds1.SQL.Text:='update tbCustomer_Info set Fjf=Fjf+'''+FloatToStr(jf)+''',Fje=Fje+'''+FloatToStr(smon)+''' where BarCode='''+dbedit1.Text+''' ';
             Data1.sds1.ExecSQL;
           end;
         end;
         Data1.ds11.Close;
         AdvGlowButton3.Enabled:=True;
//         addbill('订气');
         addyes:=False;
         Edit13.Clear;
         Data1.sds1.Close;
       end;
     except
       on E: Exception do
       ShowMessage('订单保存失败！'+e.Message);
     end;

  end
  else   ShowMessage('没有添加商品不能保存订单！');
end;

procedure TCallCentForm.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  AdvGlowButton35.Click;
end;

procedure TCallCentForm.Edit5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  Edit5.Clear;
end;

procedure TCallCentForm.AdvGlowButton5Click(Sender: TObject);
begin
  initgrid;
//   if addyes then
//   begin
//     try
//                                     //取消订单
//        if not Data1.ds11.IsEmpty then
//        begin
//          Data1.ds11.First;
//          while not Data1.ds11.Eof do
//          begin
////            ShowMessage(Data1.ds11.FieldByName('单号').AsString);
//            Data1.sds1.Close;
//            Data1.sds1.SQL.Text:='delete from  tbisentprice where bisentid='''+Data1.ds11.FieldByName('单号').AsString+'''';
//            Data1.sds1.ExecSQL;
//            Data1.sds1.Close;
//            Data1.sds1.SQL.Text:='delete from  tbisent where bisentid='''+Data1.ds11.FieldByName('单号').AsString+'''';
//            Data1.sds1.ExecSQL;
//            Data1.ds11.Next;
//          end;
//        end;
//        ShowMessage('订单取消成功！');
//        AdvGlowButton3.Enabled:=True;
//        addyes:=False;
//        Data1.ds11.Close;
//        Data1.ds11.Open;
//      except
//
//      end;
//   end;
end;

procedure TCallCentForm.AdvGlowButton6Click(Sender: TObject);
begin
  //Form28.ShowModal;
  MainForm.A1Click(Sender);
end;

procedure TCallCentForm.AdvGlowButton7Click(Sender: TObject);
begin
//   if DBEdit1.Text<>'' then
//   begin
//     addbott:=True;
//     Form27.Edit1.Text:=DBEdit1.Text;
//     Form27.Edit14.Text:=Edit2.Text;
//     Form27.ComboBox1.Text:=DBEdit2.Text;
//   //  Form27.ComboBox2.Text:=DBComboBox1.Text;
//     Form27.ShowModal;
//    // Data1.ds13.Close;
//    // Data1.ds13.Open;
//   end
//   else
//     ShowSmoothMessage('没有客户信息不能添加信息！',tsoffice2007Luna);
    AdvOfficePager2.ActivePage:=AdvOfficePager21;

end;

procedure TCallCentForm.AdvGlowButton8Click(Sender: TObject);
var
 djsn:string;
begin             //报修
      if DBEdit1.Text='' then
      begin
        ShowSmoothMessage('没有客户资料不能报修！',tsoffice2007Luna);
        exit;
      end;
      if Memo1.Text='' then
      begin
         ShowSmoothMessage('报修内容不能为空！',tsoffice2007Luna);
        exit;
      end;
      try
        djsn:=FormatDateTime('yyyyMMddhhmmss',Now);
        Data1.sds1.Close;
        Data1.sds1.SQL.Text:='insert into ttbaoxiu (shopid,memo,custid,creid,credate,shopname,custname,address,tel) '+
        ' values ('''+edit2.Text+''','''+memo1.Text+''','''+dbedit1.Text+''','''+djsn+''','''+gettime+''','''+dbcombobox2.Text+''','''+dbedit2.Text+''','''+dbedit6.Text+''','''+dbedit3.Text+''')';
        Data1.sds1.ExecSQL;
        Data1.sds1.Close;
        ShowSmoothMessage('报修记录保存成功！',tsWindows7);
//        addbill('报修');
        Memo1.Lines.Clear;
      except

      end;
end;

procedure TCallCentForm.AdvGlowButton9Click(Sender: TObject);
begin
      //showyes:=True;
      bxshopid:='0';
      Form29.ShowModal;
end;

procedure TCallCentForm.AdvOfficePage2Show(Sender: TObject);
begin
      AdvOfficeRadioButton1.Checked:=True;
      Memo4.Text:='时间：'+TimeToStr(Time)+' 此客户催气，请尽快送气！';
      Edit10.Visible:=false;
      ComboBox5.Visible:=False;
      Edit10.Text:='';
      ComboBox5.Text:='';
      AdvSmoothLabel19.Visible:=False;
end;

procedure TCallCentForm.AdvOfficePage4Hide(Sender: TObject);
begin
  Data1.ds12.close;
end;

function StringToBitmap(imgStr:string):TBitmap;
var ss:TStringStream;
    ms:TMemoryStream;
    bitmap:TBitmap;
begin
    ss := TStringStream.Create(imgStr);
    ms := TMemoryStream.Create;
    DecodeStream(ss,ms);//将base64字符流还原为内存流
    ms.Position:=0;
    bitmap := TBitmap.Create;
    bitmap.LoadFromStream(ms);
    ss.Free;
    ms.Free;
    result :=bitmap;
end;

function javaStringToBitmap(imgStr:string):TJpegImage;
var
   ss:TStringStream;
    ms:TMemoryStream;
    jpg:TJpegImage;
begin
  try
    ss := TStringStream.Create(imgStr);
    ms := TMemoryStream.Create;
    DecodeStream(ss,ms);//将base64字符流还原为内存流
    ms.Position:=0;
    jpg:=TJpegImage.Create;
    jpg.LoadFromStream(ms);
  finally
    ss.Free;
    ms.Free;
  end;
   result :=jpg;
end;

procedure TCallCentForm.AdvOfficePage5Show(Sender: TObject);
//var
// ss:TStringStream;
// ms:TMemoryStream;
// jpg:TJpegImage;
begin
  if sfshow=False then Exit;  
  Edit4.Clear;
  Edit15.Clear;
  Edit16.Clear;
  Image1.Picture.Assign(nil);
  if DBEdit1.Text<>'' then
  begin
    Edit4.Text:=DBEdit2.Text;
    Edit15.Text:=DBEdit10.Text;
    Data1.sds1.Close;
    Data1.sds1.SQL.Text:='select  imgbase,sfaddress  from tbCustomer_Info where barcode='''+DBEdit1.Text+''' ';
    Data1.sds1.Open;
    if  not data1.sds1.IsEmpty then
    begin
      Edit16.Text:=Data1.sds1.FieldByName('sfaddress').AsString;
      if data1.sds1.FieldByName('imgbase').AsString<>'' then
      begin
        try
          Image1.Picture.Bitmap := StringToBitmap(data1.sds1.FieldByName('imgbase').AsString);
        except
          Image1.Picture.Assign(javaStringToBitmap(data1.sds1.FieldByName('imgbase').AsString));
        end;
//        ss := TStringStream.Create(data1.sds1.FieldByName('imgbase').AsString);
//        ms := TMemoryStream.Create;
//        DecodeStream(ss,ms);//将base64字符流还原为内存流
//        ms.Position:=0;
//        jpg:=TJpegImage.Create;
//        jpg.LoadFromStream(ms);
//
//        ms.Free;
//        ss.Free;
//        jpg.Free;
      end;
    end;
    Data1.sds1.Close;
  end;
end;

///将base64字符串转化为Bitmap位图
function TCallCentForm.StringToBitmap(imgStr:string):TBitmap;
var ss:TStringStream;
    ms:TMemoryStream;
    bitmap:TBitmap;
begin
    ss := TStringStream.Create(imgStr);
    ms := TMemoryStream.Create;
    DecodeStream(ss,ms);//将base64字符流还原为内存流
    ms.Position:=0;
    bitmap := TBitmap.Create;
    bitmap.LoadFromStream(ms);
    ss.Free;
    ms.Free;
    result :=bitmap;
end;

procedure TCallCentForm.AdvOfficePager22Hide(Sender: TObject);
begin
   Data1.ds12.close;
end;

procedure TCallCentForm.AdvOfficeRadioButton3Click(Sender: TObject);
begin
      Memo4.Text:='时间：'+TimeToStr(Time)+' 此客户催气，请尽快送气！';
      Edit10.Visible:=false;
      ComboBox5.Visible:=False;
       Edit10.Text:='';
      ComboBox5.Text:='';
       AdvSmoothLabel19.Visible:=False;
end;

procedure TCallCentForm.AdvOfficeRadioButton4Click(Sender: TObject);
begin
      Memo4.Lines.Clear;
      Edit10.Visible:=True;
      ComboBox5.Visible:=True;
       AdvSmoothLabel19.Visible:=True;
end;

procedure TCallCentForm.AdvSmoothButton10Click(Sender: TObject);
begin
  wxstype:=1;
  WxForm.TabSheet1.Show;
  WxForm.ShowModal;
end;

procedure TCallCentForm.AdvSmoothButton11Click(Sender: TObject);
begin
  wxstype:=2;

  WxForm.TabSheet2.Show;
  WxForm.ShowModal;
end;

procedure TCallCentForm.AdvSmoothButton16Click(Sender: TObject);
begin
      Form88.ShowModal;
end;

procedure TCallCentForm.AdvSmoothButton17Click(Sender: TObject);
begin
    Form89.ShowModal;
end;

procedure TCallCentForm.AdvSmoothButton1Click(Sender: TObject);
begin                               //摘机
    CTISrv2.cmdOffHook(extid);
end;

procedure TCallCentForm.AdvSmoothButton2Click(Sender: TObject);
begin
     //ctisrv2.cmdOffHook(extid);       //拨号
    // Sleep(5000);
    // ctisrv2.cmdDial(extid,Edit1.Text);
    if Edit14.Text<>'' then
     begin
      if selectdial(Edit14.Text) then
      dialnumbr:='9'+Edit14.Text
      else
       dialnumbr:=Edit14.Text;
      Timer1.Enabled:=True;
     end
     else ShowSmoothMessage('请输入要拨打的号码',tsOffice2007Luna);

end;

procedure TCallCentForm.AdvSmoothButton3Click(Sender: TObject);
begin                                //呼叫转移
     ctisrv2.cmdCallDivert(extid);
    // Sleep(1000);
    // CTISrv2.cmdDial(extid,'810');
end;

procedure TCallCentForm.AdvSmoothButton4Click(Sender: TObject);
begin
       ctisrv2.cmdOffHook(extid);
      timer5.Enabled:=True;
      AdvSmoothButton4.Enabled:=False;
      AdvSmoothButton5.Enabled:=Enabled;
end;

procedure TCallCentForm.AdvSmoothButton5Click(Sender: TObject);
begin
    ctisrv2.cmdOffHook(extid);
    timer7.Enabled:=True;
     AdvSmoothButton5.Enabled:=False;
     AdvSmoothButton4.Enabled:=Enabled;
end;

procedure TCallCentForm.AdvSmoothButton6Click(Sender: TObject);
begin
    CTISrv2.cmdOnHook(extid);  //挂机
   // shows
end;

procedure TCallCentForm.AdvSmoothButton7Click(Sender: TObject);
 var
 dats:string;
begin
    dats:=DateToStr(Date)+' 00:00:00';
    Data1.cmd2.Close;
    Data1.cmd2.SQL.Text:='select billdate as 接听时间,bill as 来电号码,linkid as 接线员,type as 性质 from ttbill where  (billdate>='''+dats+''') and (billdate<='''+gettime+''') and (linkid='''+loginname+''') order by billdate desc ';
    Data1.cmd2.Open;
    if AdvPanel2.Visible then
      AdvPanel2.Visible:=False
    else AdvPanel2.Visible:=True;
end;

procedure TCallCentForm.AdvSmoothButton8Click(Sender: TObject);
begin
//    Form69.ComboBox1.Items.Clear;
//    form69.ComboBox1.Items:=ComboBox4.Items;
//    Form69.AdvGlowButton1.Visible:=False;
//    Form69.ShowModal;
end;

procedure TCallCentForm.AdvSmoothButton9Click(Sender: TObject);
begin
  SelajForm.Edit3.Text := '1';
  SelajForm.ShowModal;
end;

procedure TCallCentForm.AdvStringGrid1ButtonClick(Sender: TObject; ACol,
  ARow: Integer);
  var
  i:Integer;
begin
    if ACol=8 then
    begin
      if AdvStringGrid1.RowCount>2 then
       AdvStringGrid1.RemoveRows(ARow,1)
      else
      begin
       for I := 0 to 8 do
         AdvStringGrid1.Cells[i,ARow]:='';
      end;
      jsmoney;
    end;
end;

procedure TCallCentForm.AdvStringGrid1EditCellDone(Sender: TObject; ACol,
  ARow: Integer);
  var
  money:string;
begin
   if ACol=2 then
    begin
     with AdvStringGrid1 do
     begin
      Cells[4,ARow]:=FormatFloat('0.00',StrToFloatDef(Cells[4,aRow],0.00)*StrToFloatDef(Cells[2,aRow],0.00));
      money:=FormatFloat('0.00',StrToFloatDef(Cells[1,aRow],0.00)*StrToFloatDef(Cells[2,aRow],0.00)-(StrToFloatDef(Cells[4,aRow],0.00)*StrToFloatDef(Cells[2,aRow],0.00))+
       (StrToFloatDef(Cells[5,aRow],0.00)*StrToFloatDef(Cells[2,aRow],0.00))+StrToFloatDef(Cells[5,aRow],0.00));
       Cells[7,ARow]:=money;
       jsmoney;
     end;
    end;
end;

procedure TCallCentForm.AdvStringGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
   if ACol=2 then
   AEditor:=edNumeric;
   if ACol=8 then
   AEditor:=edButton;
end;

procedure TCallCentForm.cbb1Click(Sender: TObject);
begin
  cbb3.ItemIndex:=cbb1.ItemIndex;
    cbb2.Items.Clear;
    cbb4.Items.Clear;
    Data1.ClientDataSet1.SQL.Text:='select id,namec from tbkh_jd  where qyid='''+cbb3.text+''' ';
    Data1.ClientDataSet1.Open;
    while not Data1.ClientDataSet1.eof do
    begin
      cbb2.Items.Add(Data1.ClientDataSet1.FieldByName('namec').AsString);
      cbb4.Items.Add(Data1.ClientDataSet1.FieldByName('id').AsString);
      Data1.ClientDataSet1.Next;
    end;
    Data1.ClientDataSet1.Close;
end;

procedure TCallCentForm.cbb2Click(Sender: TObject);
begin
  cbb4.ItemIndex:=cbb2.ItemIndex;
end;

procedure TCallCentForm.ComboBox11Change(Sender: TObject);
begin
     ComboBox2.Text:='';
    ComboBox2.Items.Clear;
    with Data1.sqlcmd1 do
    begin
      close;
      SQL.Text:='select name from tpriceinfo where typeid='''+combobox11.Text+'''';
      Open;
      if not IsEmpty then
      while not Eof do
      begin
         ComboBox2.Items.Add(FieldByName('name').AsString);
         Next;
      end;
      Close;
    end;
end;

procedure TCallCentForm.ComboBox2Click(Sender: TObject);
var
  dw,dj,yh,money,sqf,jc:string;
  i:Integer;
begin
   if DBEdit1.Text='' then Exit;
   
     with Data1.sqlcmd1 do
     begin
       Close;
       SQL.Text:='select a.dw as dw,b.gjdj as gjdj,b.pdj as pdj from tpriceinfo a left join tpricemoney b on a.name=b.name where a.name='''+combobox2.Text+''' and b.md=''''';
       Open;
       if not IsEmpty then
       begin
          dw:=FieldByName('dw').AsString;
          if CheckBox1.Checked then
          dj:=FieldByName('gjdj').AsString
          else dj:=FieldByName('pdj').AsString;
       end;
       edit12.Text:=dj;
       Close;
       SQL.Text:='select b.gjdj as gjdj,b.pdj as pdj from tpricemoney b  where b.md='''+Dbcombobox2.Text+''' and b.name='''+combobox2.Text+''' ';
       Open;
       if not IsEmpty then
       begin
        if CheckBox1.Checked then
          dj:=FieldByName('gjdj').AsString
          else dj:=FieldByName('pdj').AsString;
       end;
       Close;
       Edit13.Text:=dj;
       if DBEdit1.Text<>'' then
       begin
         Close;
         SQL.Text:='select gjdj,pdj from tb_gskhyh where spname='''+combobox2.Text+''' and cid='''+DBEdit1.Text+'''';
         if not IsEmpty then
         begin
           if CheckBox1.Checked then
            dj:=FieldByName('gjdj').AsString
           else dj:=FieldByName('pdj').AsString;
         end;
         Close;
       end;
       if dj='' then
       begin
         ShowMessage('没有找到商品价格,请检查');
         Exit;
       end;
       yh:='0.00';
       if Ccb5.Text<>'' then
       begin
         Close;
         SQL.Text:='select gjyh,pyh from tb_djyhinfo where spname='''+combobox2.Text+''' and yhname='''+ccb5.Text+'''';
         Open;
         if not IsEmpty then
         begin
           if CheckBox1.Checked then
            yh:=FieldByName('gjyh').AsString
           else yh:=FieldByName('pyh').AsString;
         end;
         Close;
       end;
       if DBEdit1.Text<>'' then
       begin
         Close;
         SQL.Text:='select gjyh,pyh from tb_tsyh where spname='''+combobox2.Text+''' and cid='''+DBEdit1.Text+'''';
         if not IsEmpty then
         begin
           if CheckBox1.Checked then
            yh:=FieldByName('gjyh').AsString
           else yh:=FieldByName('pyh').AsString;
         end;
         Close;
       end;
       sqf:='0.00';
        if not AdvOfficeCheckBox2.Checked then
      begin

        Data1.sds1.Close;    //查找送气费
         Data1.sds1.SQL.Text:='select smoney from tsqmoney where ((tfor<='''+dbedit7.Text+''') and (tto>='''+dbedit7.Text+''') and (pricename='''+combobox2.Text+'''))';
       Data1.sds1.Open;
        if not Data1.sds1.IsEmpty  then
        begin
          sqf:=Data1.sds1.FieldByName('smoney').AsString;
        end
        else
        begin
          Data1.sds1.Close;
          Data1.sds1.SQL.Text:='select max(tto) as max from tsqmoney where pricename='''+combobox2.Text+''' ';
          Data1.sds1.Open;
          if Data1.sds1.FieldByName('max').AsString <>'' then
          begin
            jc:=Data1.sds1.FieldByName('max').AsString ;
            Data1.sds1.Close;
            Data1.sds1.SQL.Text:='select smoney,tfor from tsqmoney where ((tto=0) and (pricename='''+combobox2.Text+'''))';
            Data1.sds1.Open;
            if not Data1.sds1.IsEmpty  then
            begin
              if Data1.sds1.FieldByName('tfor').AsString<DBEdit7.Text then
              begin
                sqf:=IntToStr(StrToInt(jc)+strtoint(Data1.sds1.FieldByName('smoney').AsString)*(strtoint(DBEdit7.Text)-strtoint(Data1.sds1.FieldByName('tfor').AsString)));
              end;
              if Data1.sds1.FieldByName('tfor').AsString=DBEdit7.Text then
              begin
                sqf:= inttostr(strtoint(jc)+strtoint(Data1.sds1.FieldByName('smoney').AsString));
              end;
            end;
          end
          else  sqf:='0.00';

        end;
        Data1.sds1.Close;
      end;
      i:=AdvStringGrid1.RowCount;
      if AdvStringGrid1.Cells[0,i-1]<>'' then
      begin
        AdvStringGrid1.Rowcount:=i+1;
        i:=AdvStringGrid1.RowCount;
      end;
      money:=FormatFloat('0.00',StrToFloatDef(dj,0.00)*StrToFloatDef(edit11.Text,0.00)-(StrToFloatDef(yh,0.00)*StrToFloatDef(edit11.Text,0.00))+
       (StrToFloatDef(sqf,0.00)*StrToFloatDef(edit11.Text,0.00))+StrToFloatDef(ComboBox7.Text,0.00));
      with AdvStringGrid1 do
      begin
        Cells[0,i-1]:=ComboBox2.Text;
        Cells[1,i-1]:=dj;
        Cells[2,i-1]:=edit11.Text;
        Cells[3,i-1]:=dw;
        Cells[4,i-1]:=yh;
        Cells[5,i-1]:=sqf;
        Cells[6,i-1]:=ComboBox7.Text;
        Cells[7,i-1]:=money;
        Cells[8,i-1]:='删除';
        jsmoney;
      end;
     end;
     Exit;
       Data1.ClientDataSet1.Close;
       Data1.ClientDataSet1.SQL.Text:='select dw, money from tpriceinfo where name='''+combobox2.Text+'''';
       Data1.ClientDataSet1.Open;
       if not Data1.ClientDataSet1.IsEmpty then
       begin
         Edit7.Text:=Data1.ClientDataSet1.Fields[0].AsString;
         Edit12.Text:=Data1.ClientDataSet1.Fields[1].AsString;
       end;
       Data1.ClientDataSet1.Close;
       Data1.sds1.Close;
       Data1.sds1.SQL.Text:='select money from tshopprice where ((name like '''+combobox2.Text+'%'') and (shopid='''+edit2.Text+'''))';
       Data1.sds1.Open;
//       ComboBox3.Items.Clear;
         if not Data1.sds1.IsEmpty then  //查找门店设置的商品单价
        begin
          Edit13.Text:=Data1.sds1.FieldByName('money').AsString;
         end;
end;

procedure TCallCentForm.ComboBox4Click(Sender: TObject);
begin
  ComboBox10.ItemIndex := ComboBox4.ItemIndex;
//      Data1.ClientDataSet1.Close;
//       Data1.ClientDataSet1.SQL.Text:='select shopid from tshop where shopname='''+combobox4.Text+'''';
//       Data1.ClientDataSet1.Open;
//       if not Data1.ClientDataSet1.IsEmpty then
//       begin
//         Edit8.Text:=Data1.ClientDataSet1.Fields[0].AsString;
//       end;
//       Data1.ClientDataSet1.Close;
end;

procedure TCallCentForm.ComboBox5Click(Sender: TObject);
begin
       Data1.ClientDataSet1.Close;
       Data1.ClientDataSet1.SQL.Text:='select shopid from tShop where ShopName='''+combobox5.Text+'''';
       Data1.ClientDataSet1.Open;
       if not Data1.ClientDataSet1.IsEmpty then
       begin
         Edit10.Text:= Data1.ClientDataSet1.Fields[0].AsString;
       end;
       Data1.ClientDataSet1.Close;
end;

procedure TCallCentForm.ComboBox8Change(Sender: TObject);
begin
    { if Edit2.Text='' then Exit;
       Data1.sqlcmd8.Close;
       Data1.sqlcmd8.CommandText:='';
       Data1.sqlcmd8.CommandText:='select * from ttywy where Shopid='''+edit2.Text+'''';
       Data1.sqlcmd8.Open;

       if not Data1.sqlcmd8.IsEmpty then
       begin
         ComboBox8.Items.Clear;
        while not Data1.sqlcmd8.Eof do
         begin
          ComboBox8.Items.Add(Data1.sqlcmd8.FieldByName('ywname').AsString);
          Data1.sqlcmd8.next;
         end;
       end; }
      // Data1.cmd2.Close;

end;

procedure TCallCentForm.CTISrv2calledRing(ASender: TObject; ID, UserType, assID,
  assUserType: SmallInt; const assPhone, assUserName: WideString; mixdata,
  holdUserID, holdUserType: SmallInt; const holdUserPhone: WideString); //来电
begin
//   RingOutTimer.Enabled:=False;
//   RingOutTimer.Enabled:=True;
   callingIn := True;
   callNOAsi:=False;
end;

procedure TCallCentForm.CTISrv2connected(ASender: TObject; ID, UserType, IOFlag, assID,
  assUserType: SmallInt; const assPhone, assUserName: WideString; mixdata,
  holdUserID, holdUserType: SmallInt; const holdUserPhone: WideString); //接通
begin
     if (id=extid) then
     begin
       Edit14.Text:=assPhone;
       RingOutTimer.Enabled:=False;
       callNOAsi:=True;
     end;
end;

procedure TCallCentForm.CTISrv2dial(ASender: TObject; ID, UserType, assID,
  assUserType: SmallInt; const assPhone, assUserName: WideString; mixdata,
  holdUserID, holdUserType: SmallInt; const holdUserPhone: WideString); //拨号
begin
    if (id=extid) and (dials=True) then
    begin
       ctisrv2.cmdDial(extid,dialnumbr);
       Timer1.Enabled:=false;
       times:=5;
       AdvPanel1.Visible:=False;
       callNOAsi:=False;
       callingIn := False;
    end;

end;

procedure TCallCentForm.CTISrv2idle(ASender: TObject; ID, UserType, assID,
  assUserType: SmallInt; const assPhone, assUserName: WideString; mixdata,
  holdUserID, holdUserType: SmallInt; const holdUserPhone: WideString); //空闲
begin
    if (id=extid) then
    begin
       if callingIn and (Edit14.Text<>'') then
       begin
         if  callNOAsi then  addbill('已接')
         else addbill('未接');
       end;
       Edit14.Text:='';
//         if  callNOAsi then
//         addbill('未接');
    end;
end;

procedure TCallCentForm.CTISrv2loginErr(ASender: TObject; ID: SmallInt; const errCode,
  errDesc: WideString);
begin
    // dxRibbonStatusBar1.Panels[1].Text:=errDesc;
      AdvSmoothLabel2.Caption.Text:=ext+';'+ errDesc ;
end;

procedure TCallCentForm.CTISrv2loginOK(ASender: TObject; ID: SmallInt);
begin
    //dxRibbonStatusBar1.Panels[0].Text:='   交换机登录成功！';
    AdvSmoothLabel2.Caption.Text:=ext+';登陆成功！';
    CTISrv2.UDPStart;
   // CTISrv2.cmdGetOtherIDTisStatu(0,0,0);
end;

procedure TCallCentForm.CTISrv2otherIDTisInfoArrival(ASender: TObject; ID, UserType,
  dstID, dstUserType, dstStatu: SmallInt; srvCls: Byte; const dstPhone,
  dstUserName: WideString; mixdata: SmallInt);
begin
  edit1.text:=IntToStr(dstid);
      if  dstID<>-1 then
     begin
       data1.ClientDataSet2.Close;
       Data1.ClientDataSet2.SQL.Text:='insert into tpbxport(portid,phone) VALUES ('''+inttostr(dstID)+''','''+dstphone+''')';
       Data1.ClientDataSet2.ExecSQL;

       CTISrv2.cmdGetOtherIDTisStatu(0,0,dstID+1);

     end;
       Data1.ClientDataSet2.Close;
end;

procedure TCallCentForm.CTISrv2phoneDisplay(ASender: TObject; ID, UserType, assID,
  assUserType: SmallInt; const assPhone, assUserName: WideString;
  mixdata: SmallInt);//来电显示
  var
  str,selectstr:string;
begin
  callingIn := True;
  callNOAsi:=False;
  sfshow := true;
  selectstr:='select a.id as id,a.yhdjname as yhdjname,a.fmoney as fmoney,a.namec as namec,a.tel as tel,a.Address as Address,a.fax as fax,a.contact as contact,a.ywy as ywy,a.SendPeriod as SendPeriod,a.Remark as Remark,a.fjf as fjf,'+
      ' a.CreateDate as CreateDate,a.psid as psid,a.Grade as Grade,a.TypeC as TypeC,b.comname as shopname,a.qyid as qyid,a.jdid as jdid,d.namec as qyname,e.namec as jdname,a.sqg as sqg,a.hynumber as hynumber, '+
      ' c.Type_Name as typename,a.BarCode as barcode,a.bayday as bayday,a.ajdate as ajdate,a.kfsn as kfsn,a.gpstype as gpstype from tbCustomer_Info a left join tcompany b on (a.psid=b.id) '+
      ' left join tbCustomer_Type c on (a.TypeC=c.Type_ID) left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id)';
     str:=assPhone;
     if str<>'' then
     if Copy(str,1,1)='0' then
     Delete(str,1,1);
     Edit1.Text:=str;
     CnTrayIcon1.BalloonHint('有新来电',str,btInfo,20 );
     initgrid;                             //or fax='''+str+'''
     Data1.ClientDataSet3.Close;
     Data1.ClientDataSet3.SQL.Text:=selectstr+' where (a.tel='''+str+'''  or a.contact='''+str+''')';
     Data1.ClientDataSet3.Open;
     if not Data1.ClientDataSet3.IsEmpty then
     begin
       AdvSmoothLabel5.Caption.Text:=Data1.ClientDataSet3.FieldByName('namec').AsString;
       AdvSmoothLabel6.Caption.Text:=Data1.ClientDataSet3.FieldByName('address').AsString;
       Edit2.Text:=Data1.ClientDataSet3.FieldByName('psid').AsString;
       Edit3.Text:=Data1.ClientDataSet3.FieldByName('TypeC').AsString;
       DBComboBox1.Text:=Data1.ClientDataSet3.FieldByName('typename').AsString;
       DBComboBox2.Text:=Data1.ClientDataSet3.FieldByName('shopname').AsString;
       ComboBox9.Text:=Data1.ClientDataSet3.FieldByName('sqg').AsString;
       ComboBox8.Text:=Data1.ClientDataSet3.FieldByName('ywy').AsString;
       cbb3.Text:=Data1.ClientDataSet3.FieldByName('qyid').AsString;
       cbb1.Text:=Data1.ClientDataSet3.FieldByName('qyname').AsString;
       cbb4.Text:=Data1.ClientDataSet3.FieldByName('jdid').AsString;
       cbb2.Text:=Data1.ClientDataSet3.FieldByName('jdname').AsString;
       ccb5.Text:=Data1.ClientDataSet3.FieldByName('yhdjname').AsString;
       ComboBox6.Text:= Data1.ClientDataSet3.FieldByName('gpstype').AsString;
       CnTrayIcon1.BalloonHint('来电信息','来电号码：'+str + #13
              +'客户名称：'+Data1.ClientDataSet3.FieldByName('namec').AsString,btInfo,20 );
     end
     else
     begin
       Edit2.Clear;
       Edit3.Clear;
       cbb3.Text:='';
       cbb1.Text:='';
       cbb4.Text:='';
       cbb2.Text:='';
       Ccb5.Text:='';
       ComboBox9.Text:='';
       ComboBox8.Text:='';
       ComboBox6.Text:= '';
       AdvSmoothLabel5.Caption.Text:='';
       AdvSmoothLabel6.Caption.Text:='';
       CnTrayIcon1.BalloonHint('来电信息','来电号码：'+str + #13
              +'客户名称：未知',btInfo,20 );
     end;
  if  WindowState=wsMinimized    then WindowState:=wsNormal;
end;

procedure TCallCentForm.CTISrv2UDPDataArrival(ASender: TObject; ID, UserType, status,
  IOFlag, mixdata, assID, assUserType: SmallInt; const assPhone,
  assUserName: WideString);
begin
     Edit14.Text:=IntToStr(status);
end;

procedure TCallCentForm.DBAdvGrid1Resize(Sender: TObject);
begin
      DBAdvGrid1.AutoSizeColumns(False,2); //根据内容调节列宽
end;

procedure TCallCentForm.DBAdvGrid2Resize(Sender: TObject);
begin
     DBAdvGrid2.AutoSizeColumns(False,2); //根据内容调节列宽
end;

procedure TCallCentForm.DBAdvGrid3DblClick(Sender: TObject);
begin
  if Data1.ds12.IsEmpty then Exit;
  if (Data1.ds12.FieldByName('收费类别').AsString ='收租管费') then
  begin
    if (IDYES = Application.MessageBox('确认删除该条记录吗？', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
    begin
      with Data1.sds1 do
      begin
        Close;
        SQL.Text :='delete from tbskbottle where id='''+Data1.ds12.FieldByName('ID').AsString+''' ';
        try
          ExecSQL;
          ShowMessage('删除成功');
          data1.ds12.Close;
          Data1.ds12.Open;
        except
          ShowMessage('删除失败');
        end;
      end;
    end
  end;
  if (Data1.ds12.FieldByName('收费类别').AsString ='收取押金') then
  begin
    Form96.Edit11.Text:= Data1.ds12.FieldByName('id').AsString;
    Form96.Edit2.Text:= DBEdit1.Text;
    Form96.Edit3.Text:= DBEdit2.Text;
    Form96.Edit4.Text:= Data1.ds12.FieldByName('收款日期').AsString;
    Form96.Edit5.Text:= Data1.ds12.FieldByName('收款人').AsString;
    Form96.Edit6.Text:= Data1.ds12.FieldByName('押金单号').AsString;
    Form96.Edit7.Text:= Data1.ds12.FieldByName('金额').AsString;
    Form96.Edit9.Text:= Data1.ds12.FieldByName('数量').AsString;
    Form96.Edit8.Text:= Data1.ds12.FieldByName('钢瓶类型').AsString;
    Form96.Edit1.Text:='2';
    Form96.ShowModal;
  end;
end;

procedure TCallCentForm.DBAdvGrid3GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
  date1:TDateTime;
begin
  try
    if ((DBAdvGrid3.Cells[2,ARow]=trim('收租管费')) and (TryStrToDate(DBAdvGrid3.Cells[7,ARow],date1))) then
    begin
      if date1<=now then  Afont.Color:=clred;
    end;
  except

  end;
end;

procedure TCallCentForm.DBAdvGrid3Resize(Sender: TObject);
begin
  DBAdvGrid3.AutoSizeColumns(False,6); //根据内容调节列宽
end;

procedure TCallCentForm.DBAdvGrid4Resize(Sender: TObject);
begin
    DBAdvGrid4.AutoSizeColumns(False,2);
end;

procedure TCallCentForm.DBAdvGrid5Click(Sender: TObject);
begin
   if Data1.ClientDataSet3.IsEmpty then Exit;
   initgrid;
   DBComboBox1.Text:=Data1.ClientDataSet3.FieldByName('typename').AsString;
   DBComboBox2.Text:=Data1.ClientDataSet3.FieldByName('shopname').AsString;
   Edit2.Text:=Data1.ClientDataSet3.FieldByName('psid').AsString;
   Edit3.Text:=Data1.ClientDataSet3.FieldByName('TypeC').AsString;
   cbb3.Text:=Data1.ClientDataSet3.FieldByName('qyid').AsString;
   cbb1.Text:=Data1.ClientDataSet3.FieldByName('qyname').AsString;
   cbb4.Text:=Data1.ClientDataSet3.FieldByName('jdid').AsString;
   cbb2.Text:=Data1.ClientDataSet3.FieldByName('jdname').AsString;
   ComboBox9.Text:=Data1.ClientDataSet3.FieldByName('sqg').AsString;
   ComboBox8.Text:=Data1.ClientDataSet3.FieldByName('ywy').AsString;
   ComboBox6.Text:= Data1.ClientDataSet3.FieldByName('gpstype').AsString;
   ccb5.Text:=Data1.ClientDataSet3.FieldByName('yhdjname').AsString;
   sfshow := True;
end;

procedure TCallCentForm.DBAdvGrid5SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if (ACol=3) then
    begin
      dss:= DBAdvGrid5.Cells[ACol,ARow];
    end
  else  dss:='';
end;

procedure TCallCentForm.DBComboBox11Click(Sender: TObject);
begin
try
       Data1.ClientDataSet1.Close;
       Data1.ClientDataSet1.SQL.Text:='select Type_id from tbCustomer_Type where Type_Name='''+dbcombobox1.Text+'''';
       Data1.ClientDataSet1.Open;
       if not Data1.ClientDataSet1.IsEmpty then
       begin
        Edit3.Text:= Data1.ClientDataSet1.Fields[0].AsString;
       end;
       Data1.ClientDataSet1.Close;
finally

end;
end;

procedure TCallCentForm.DBComboBox1Click(Sender: TObject);
begin
   Data1.ClientDataSet1.Close;
       Data1.ClientDataSet1.SQL.Text:='select Type_id from tbCustomer_Type where Type_Name='''+dbcombobox1.Text+'''';
       Data1.ClientDataSet1.Open;
       if not Data1.ClientDataSet1.IsEmpty then
       begin
        Edit3.Text:= Data1.ClientDataSet1.Fields[0].AsString;
       end;
       Data1.ClientDataSet1.Close;
end;

procedure TCallCentForm.DBComboBox23Click(Sender: TObject);
begin
     try
       Data1.ClientDataSet1.Close;
       Data1.ClientDataSet1.sql.Text:='select shopid from tShop where ShopName='''+dbcombobox2.Text+'''';
       Data1.ClientDataSet1.Open;
       if not Data1.ClientDataSet1.IsEmpty then
       begin
        Edit2.Text:= Data1.ClientDataSet1.Fields[0].AsString;
       end;
       Data1.ClientDataSet1.Close;

     finally

     end;
end;

procedure TCallCentForm.DBComboBox2Click(Sender: TObject);
begin
  try
    if DBEdit1.Text='' then  Exit;
    Data1.ClientDataSet1.Close;
    Data1.ClientDataSet1.sql.Text:='select id from tCompany where comName='''+dbcombobox2.Text+'''';
    Data1.ClientDataSet1.Open;
    if not Data1.ClientDataSet1.IsEmpty then
    begin
      Edit2.Text:= Data1.ClientDataSet1.Fields[0].AsString;
      ComboBox9.Items.Clear;
      Data1.ClientDataSet1.Close;
      Data1.ClientDataSet1.SQL.Text:='select EmpName from tb_yginfo where shopid='''+Edit2.Text+''' and gwname like ''%送%''';
      Data1.ClientDataSet1.Open;
      if not Data1.ClientDataSet1.IsEmpty then
      begin
        while not Data1.ClientDataSet1.Eof do
        begin
          ComboBox9.Items.Add(Data1.ClientDataSet1.FieldByName('EmpName').AsString);
          Data1.ClientDataSet1.Next;
        end;
      end;
    end;
    Data1.ClientDataSet1.close;
  finally

  end;
end;

procedure TCallCentForm.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then
    key:=#0;
end;

procedure TCallCentForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   CTISrv2.logout;
//   ClosePRExe;
   Edit1.Clear;
   Edit2.Clear;
   Edit3.Clear;
   Edit5.Clear;
   Timer2.Enabled:=False;
   AdvSmoothLabel5.Caption.Text:='';
   AdvSmoothLabel6.Caption.Text:='';
    CTISrv2.logout;
   ClosePRExe;
   Data1.ClientDataSet3.Close;
//    try
//     EventReceiver.Active := FALSE; // Stops polling for messages
//     EventReceiver.UnregisterEventHandlers([EID_HTTPChatEvents, EID_HTTPChatServerEvents]);
//     fChatService := (Data1.svcChatService as IHTTPChatService);
//     fChatService.Logout;
//    except
//      Application.Terminate;
//    end;
end;

procedure TCallCentForm.FormPaint(Sender: TObject);
begin  //让panel 居中 不管分辨率多少
    AdvSmoothPanel2.Left:=round((Width-AdvSmoothPanel2.Width)/2);
    AdvSmoothPanel2.top:=round((Height-AdvSmoothPanel2.Height)/2);
    AdvSmoothButton10.Left:=AdvSmoothPanel2.Left+673;
    AdvSmoothButton11.Left:=AdvSmoothPanel2.Left+788;
    AdvSmoothButton10.Top:=AdvSmoothPanel2.top-50;
    AdvSmoothButton11.Top:=AdvSmoothPanel2.top-50;

end;

procedure TCallCentForm.FormShow(Sender: TObject);
begin
   Timer2.Enabled:=True;
   if isshow then Exit;
    // Form1.Caption:=mainname+'燃气呼叫配送系统'+' V'+FORM2.GetBuildInfo;
     dxRibbonStatusBar1.Panels[1].Text:=Userinfo.usname;
    // dxRibbonStatusBar1.Panels[2].Text:='本机IP：'+compute_ip+',名称：'+compute_name;
     DateTimePicker1.Date:=Now;
     DateTimePicker3.Date:=DateTimePicker1.Date;
     DateTimePicker2.Time:=Now;
     DateTimePicker4.Time:=DateTimePicker2.Time;
     AdvOfficePager1.ActivePageIndex:=0;
     ComboBox1.ItemIndex:=0;
     AdvSmoothButton4.Enabled:=False;
     addyes:=False;
     addbott:=False;
     dials:=False;
     times:=5;

       if ext<>'' then
       begin
         Data1.ClientDataSet1.Close;
         Data1.ClientDataSet1.SQL.Text:='select portid from tpbxport where phone='''+ext+'''';
         Data1.ClientDataSet1.Open;
         if not Data1.ClientDataSet1.IsEmpty then
         begin
          extid:=Data1.ClientDataSet1.Fields[0].AsInteger;
         end;
       end;
       DBComboBox1.Items.Clear;
       DBComboBox2.Items.Clear;
       Data1.ClientDataSet1.Close;
       Data1.ClientDataSet1.SQL.Text:='select Type_Name from tbCustomer_Type';
       Data1.ClientDataSet1.Open;
       while not Data1.ClientDataSet1.eof do
       begin
         DBComboBox1.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);
         Data1.ClientDataSet1.Next;
       end;
       Data1.ClientDataSet1.Close;
       Data1.ClientDataSet1.SQL.Text:='select comname,id from tcompany where type=3 ';
       Data1.ClientDataSet1.Open;
       ComboBox5.Items.Clear;
       ComboBox4.Items.Clear;
       while not Data1.ClientDataSet1.eof do
       begin
         DBComboBox2.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);
         ComboBox5.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);
         ComboBox4.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);
         ComboBox10.Items.Add(Data1.ClientDataSet1.Fields[1].AsString);
         Data1.ClientDataSet1.Next;
       end;
       Data1.ClientDataSet1.Close;
       Data1.ClientDataSet1.SQL.Text:='SELECT Spec_Name FROM tbBottle_SPEC';
       Data1.ClientDataSet1.Open;
       ComboBox6.Items.Clear;
       if not Data1.ClientDataSet1.IsEmpty then
       begin
         while not Data1.ClientDataSet1.Eof do
         begin
           ComboBox6.Items.Add(Data1.ClientDataSet1.FieldByName('Spec_Name').AsString);
           Data1.ClientDataSet1.Next;
         end;
       end;

       Data1.ClientDataSet1.Close;   //业务员
       Data1.ClientDataSet1.SQL.Text:='select ywName from ttywy order by ywname';// where shopid<>0';
       Data1.ClientDataSet1.Open;
       ComboBox8.Items.Clear;
       while not Data1.ClientDataSet1.eof do
       begin
         ComboBox8.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);
         Data1.ClientDataSet1.Next;
       end;
     Data1.ClientDataSet1.Close;
     cbb1.Items.Clear;
     cbb3.Items.Clear;
     Data1.ClientDataSet1.SQL.Text:='select id,namec from tbkh_qy ';
     Data1.ClientDataSet1.Open;
     while not Data1.ClientDataSet1.eof do
     begin
         cbb1.Items.Add(Data1.ClientDataSet1.FieldByName('namec').AsString);
         cbb3.Items.Add(Data1.ClientDataSet1.FieldByName('id').AsString);
         Data1.ClientDataSet1.Next;
     end;
//       ComboBox2.Items.Clear;
//       Data1.ClientDataSet1.Close;
//       Data1.ClientDataSet1.SQL.Text:='select Name from tpriceinfo';//  where name like'+''''+'%气'+'''';
//       Data1.ClientDataSet1.Open;
//       while not Data1.ClientDataSet1.eof do
//       begin
//         ComboBox2.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);
//         Data1.ClientDataSet1.Next;
//       end;
       Data1.ClientDataSet1.Close;
       Ccb5.Items.Clear;
       Data1.ClientDataSet1.SQL.Text:='select Name from tb_djyh order by id';//  where name like'+''''+'%气'+'''';
       Data1.ClientDataSet1.Open;
       while not Data1.ClientDataSet1.eof do
       begin
         Ccb5.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);
         Data1.ClientDataSet1.Next;
       end;
       Data1.ClientDataSet1.Close;
       ComboBox11.Items.Clear;
       Data1.ClientDataSet1.Close;
       Data1.ClientDataSet1.SQL.Text:='select typeName from tpricetype ';
       Data1.ClientDataSet1.Open;
       while not Data1.ClientDataSet1.eof do
       begin
         ComboBox11.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);
         Data1.ClientDataSet1.Next;
       end;
       Data1.ClientDataSet1.Close;
       ComboBox11.ItemIndex:=0;
       ComboBox4.Text:='';
       ComboBox2.Text:='';
       if ComboBox11.Text<>'' then
       begin
          ComboBox2.Text:='';
        ComboBox2.Items.Clear;
        with Data1.sqlcmd1 do
        begin
          close;
          SQL.Text:='select name from tpriceinfo where typeid='''+combobox11.Text+'''';
          Open;
         if not IsEmpty then
         while not Eof do
         begin
           ComboBox2.Items.Add(FieldByName('name').AsString);
           Next;
          end;
         Close;
         end;
       end;
//      if ComboBox2.Text<>'' then
//      begin
//        Data1.ClientDataSet1.Close;
//        Data1.ClientDataSet1.SQL.Text:='select dw, money from tpriceinfo where name='''+combobox2.Text+'''';
//        Data1.ClientDataSet1.Open;
//        if not Data1.ClientDataSet1.IsEmpty then
//         begin
//          Edit7.Text:=Data1.ClientDataSet1.Fields[0].AsString;
//          Edit12.Text:=Data1.ClientDataSet1.Fields[1].AsString;
//         end;
//         Data1.ClientDataSet1.Close;
//
//      end;
      ComboBox3.Clear;
      Data1.sqlcmd1.Close;
      Data1.sqlcmd1.SQL.Text:='select  empname from tb_yginfo where gwname like ''%送%''  order by empname';
      Data1.sqlcmd1.Open;
      ComboBox3.Items.Clear;
       if not Data1.sqlcmd1.IsEmpty then
       begin
         while not Data1.sqlcmd1.Eof do
         begin
            ComboBox3.Items.Add(Data1.sqlcmd1.FieldByName('empname').AsString);
            Data1.sqlcmd1.Next;
         end;
       end;
       data1.sqlcmd1.Close;
       ComboBox3.ItemIndex:=-1;
    sfbool := False;
  //  ext:='801';
  try
    if (ext<>'') and (ext<>'0') then
    begin
      CTISrv2.loginType:=6;
      CTISrv2.remoteHostIP:=Userinfo.pbxip;
      CTISrv2.UDPRemoteHost:=Userinfo.pbxip;
      CTISrv2.login(ext,'');
    end;
    Edit13.Clear;
    sfport := zReadInteger('config','sfport',1001);
    Data1.sqlcmd1.Close;
    Data1.sqlcmd1.SQL.Text:='Select sfbool from info';
    Data1.sqlcmd1.Open;
    if not Data1.sqlcmd1.IsEmpty then
    begin
      sfbool := Data1.sqlcmd1.FieldByName('sfbool').AsBoolean;
    end;
  except

  end;
  isshow:=True;
end;

procedure TCallCentForm.initgrid;
var
 i,j:Integer;
begin
  ComboBox2.Text:='';
  Edit12.Clear;
  Edit13.Clear;
  Edit11.Text:='1';
  Edit17.Text:='0';
  Edit18.Text:='0.00';
  ComboBox7.ItemIndex:=0;
  yhEdit.Text:='0';
  sqfEdit.Text:='0';
  zpfEdit.Text:='0';
  for j := 1 to AdvStringGrid1.RowCount do
   begin
   for I := 0 to 8 do
         AdvStringGrid1.Cells[i,j]:='';
   end;
   AdvStringGrid1.RowCount:=2;
end;

procedure TCallCentForm.jsmoney;
var
 i:Integer;
begin
  with AdvStringGrid1 do
  begin
     i:=RowCount;
     Edit17.Text:=formatFloat('0',ColumnSum(2,1,i-1));
     Edit18.Text:=formatFloat('0.00',ColumnSum(7,1,i-1));
     yhEdit.Text:=formatFloat('0.00',ColumnSum(4,1,i-1));
     sqfEdit.Text:=formatFloat('0.00',ColumnSum(5,1,i-1));
     zpfEdit.Text:=formatFloat('0.00',ColumnSum(6,1,i-1));
  end;
end;

procedure TCallCentForm.MenuItem1Click(Sender: TObject);
var
 s:string;
begin
    if Data1.cmd2.FieldByName('来电号码').AsString<>'' then
    begin
      s:=Data1.cmd2.FieldByName('来电号码').AsString;
      if selectdial(s) then
        dialnumbr:='9'+s
      else dialnumbr:=s;
      Timer1.Enabled:=True;
    end;
end;

procedure TCallCentForm.N1Click(Sender: TObject);
begin
       AdvOfficeRadioButton1.Checked:=False;
       AdvOfficeRadioButton2.Checked:=False;
end;

procedure TCallCentForm.N2Click(Sender: TObject);
begin
     if dss<>'' then
     begin
         if selectdial(dss) then
      dialnumbr:='9'+dss
      else
       dialnumbr:=dss;
      Timer1.Enabled:=True;
     end;
end;

procedure TCallCentForm.RingOutTimerTimer(Sender: TObject);
begin
   RingOutTimer.Enabled:=False;
   addbill('未接');
end;

procedure TCallCentForm.Timer1Timer(Sender: TObject);
begin
   Timer1.Interval:=1000;
   dials:=True;
   AdvPanel1.Visible:=True;
   Label16.Caption:='请在'+inttostr(times)+'秒内摘机' ;
   if times>0 then
   begin
   times:=times-1;
   end
   else
   begin
   Timer1.Enabled:=False;
   AdvPanel1.Visible:=False;
   dials:=False;;
   times:=5;
   end;
end;

procedure TCallCentForm.Timer2Timer(Sender: TObject);
begin
 try
  with Data1.UniQuery3 do
  begin
    close;
    sql.Text:='select count(id) as id from tbCustomer_info where Customer_ID=2';
    Open;
    AdvSmoothButton10.Status.Caption:=FieldByName('id').AsString;
    close;
    sql.Text:='select count(id) as id from tbisent where (shopid='''') and (ddstype=1) and (status<>1) and (status<>3) and (type<>3)';
    Open;
    AdvSmoothButton11.Status.Caption:=FieldByName('id').AsString;
    Close;
  end;
 except

 end;
end;

procedure TCallCentForm.Timer5Timer(Sender: TObject);
begin
    Timer5.Enabled:=false;
    ctisrv2.cmdDial(extid,'*27'); //取消免打扰
    Timer8.Enabled:=True;
end;

procedure TCallCentForm.Timer7Timer(Sender: TObject);
begin
    Timer7.Enabled:=false;
    ctisrv2.cmdDial(extid,'*29');
    Timer8.Enabled:=True;
end;

procedure TCallCentForm.Timer8Timer(Sender: TObject);
begin
    Timer8.Enabled:=false;
    CTISrv2.cmdOnHook(extid);
end;

end.
