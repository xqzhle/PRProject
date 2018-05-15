unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvOfficePager, AdvOfficePagerStylers, AdvPanel, ExtCtrls,
  AdvSmoothButton, ImgList, StdCtrls,TreeUtils, TeEngine, Series, TeeProcs,
  Chart, OleCtrls, SHDocVw,ActiveX,superobject, AppEvnts,zcomm,DateUtils,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    A: TMenuItem;
    B: TMenuItem;
    C: TMenuItem;
    E: TMenuItem;
    D: TMenuItem;
    F: TMenuItem;
    G: TMenuItem;
    H: TMenuItem;
    I: TMenuItem;
    J: TMenuItem;
    M: TMenuItem;
    A1: TMenuItem;
    A2: TMenuItem;
    A3: TMenuItem;
    A4: TMenuItem;
    A5: TMenuItem;
    B1: TMenuItem;
    B2: TMenuItem;
    B3: TMenuItem;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    ImageList1: TImageList;
    AdvSmoothButton7: TAdvSmoothButton;
    AdvSmoothButton8: TAdvSmoothButton;
    AdvSmoothButton9: TAdvSmoothButton;
    AdvSmoothButton10: TAdvSmoothButton;
    D1: TMenuItem;
    D2: TMenuItem;
    D3: TMenuItem;
    D4: TMenuItem;
    D5: TMenuItem;
    D6: TMenuItem;
    D7: TMenuItem;
    D8: TMenuItem;
    C1: TMenuItem;
    C2: TMenuItem;
    C3: TMenuItem;
    C4: TMenuItem;
    C5: TMenuItem;
    E1: TMenuItem;
    E2: TMenuItem;
    E3: TMenuItem;
    E4: TMenuItem;
    M2: TMenuItem;
    M1: TMenuItem;
    F1: TMenuItem;
    F2: TMenuItem;
    F3: TMenuItem;
    F4: TMenuItem;
    F5: TMenuItem;
    N44: TMenuItem;
    F6: TMenuItem;
    N46: TMenuItem;
    F9: TMenuItem;
    F8: TMenuItem;
    F7: TMenuItem;
    N54: TMenuItem;
    F10: TMenuItem;
    G1: TMenuItem;
    G2: TMenuItem;
    G3: TMenuItem;
    H1: TMenuItem;
    H2: TMenuItem;
    H3: TMenuItem;
    H4: TMenuItem;
    H5: TMenuItem;
    G4: TMenuItem;
    G5: TMenuItem;
    M3: TMenuItem;
    J2: TMenuItem;
    J1: TMenuItem;
    I1: TMenuItem;
    I2: TMenuItem;
    J3: TMenuItem;
    Panel2: TPanel;
    KhlxBox: TComboBox;
    ShopidBox: TComboBox;
    ShopnameBox: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    N111: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    AdvPanel2: TAdvPanel;
    AdvPanelStyler2: TAdvPanelStyler;
    AdvPanel3: TAdvPanel;
    AdvPanel6: TAdvPanel;
    J4: TMenuItem;
    WebBrowser1: TWebBrowser;
    ApplicationEvents1: TApplicationEvents;
    K: TMenuItem;
    K1: TMenuItem;
    K2: TMenuItem;
    K5: TMenuItem;
    J7: TMenuItem;
    J8: TMenuItem;
    J5: TMenuItem;
    K3: TMenuItem;
    K4: TMenuItem;
    J6: TMenuItem;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    B4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure AdvOfficePager1ClosedPage(Sender: TObject; PageIndex: Integer);
    procedure D2Click(Sender: TObject);
    procedure D3Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure E4Click(Sender: TObject);
    procedure C4Click(Sender: TObject);
    procedure C5Click(Sender: TObject);
    procedure D4Click(Sender: TObject);
    procedure D5Click(Sender: TObject);
    procedure D6Click(Sender: TObject);
    procedure AdvSmoothButton7Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure F2Click(Sender: TObject);
    procedure F3Click(Sender: TObject);
    procedure F4Click(Sender: TObject);
    procedure G4Click(Sender: TObject);
    procedure H5Click(Sender: TObject);
    procedure M3Click(Sender: TObject);
    procedure H4Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure H3Click(Sender: TObject);
    procedure D7Click(Sender: TObject);
    procedure F5Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure E3Click(Sender: TObject);
    procedure J2Click(Sender: TObject);
    procedure D8Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure G3Click(Sender: TObject);
    procedure J1Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure I2Click(Sender: TObject);
    procedure J3Click(Sender: TObject);
    procedure F9Click(Sender: TObject);
    procedure F8Click(Sender: TObject);
    procedure F7Click(Sender: TObject);
    procedure F6Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure F10Click(Sender: TObject);
    procedure J4Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure WebBrowser1BeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure J5Click(Sender: TObject);
    procedure J7Click(Sender: TObject);
    procedure J8Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure K2Click(Sender: TObject);
    procedure K5Click(Sender: TObject);
    procedure K3Click(Sender: TObject);
    procedure K4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure initdata();
    procedure getuserbb(stype:Integer;isqy:Boolean);
    procedure getadduser(ismonth:Boolean);
    procedure getxsbb(ismonth:Boolean);
    procedure getmdxsbb(stype:Integer;iswc:Boolean);
    procedure getbisentbb(stype:Integer;iswc:Boolean);
    procedure gethwbb(ismonth: Boolean);
    procedure getchart;

  public
    { Public declarations }
    TreeUtil:TTreeUtils;
    procedure getuserpower(id:string);//获取用户权限  传用户id
  end;

var
  MainForm: TMainForm;
  Loginname,UsName,ext:string;
  Shopid,shopname:string;
  log_czid,qzname,log_czq,usercode:string;
  Userinfo:FUserInfo;
implementation

uses
  ComapUnit,SpLxUnit,SpXxUnit,GpjUnit,MdJgUnit,DjYfUnit, KhLxUnit,DqSzUnit,
  KhXxUnit,TsYhUnit,GsKhYhUnit, DbUnit,DeptInfoUnit,GwInfoUnit,YgInfoUnit,
  CallCentUnit, PowerUnit, UserInfoUnit, MdPgUnit, MdHdUnit, DdListUnit, Unit28,
  BottleTypeUnit, BottleSpecUnit, BottleClassUnit, BottleWorkUnit,LPGUnit,
  CustBillUnit, LogUnit,CodeUnit,LetterUnit,CustMoneyUnit,CustBlendUnit,
  GiveUnitpas, BottleInsUnit, PzUnit, DtelUnit, XstypeUnit, YwyUnit, QzUnit,
  CarUnit, GMoneyUnit, MdgpUnit, khgpUnit, CustwaingUnit, LzUnit, DUnitpas, BottleListUnit,
  BottleinfoUnit, YpDayUnit, YpTjUnit, BottleManUnit, CharUnit, SelajUnit,Sqgbb,
  YwybbUnit, SqgUnitpas, SqgInfo, BaseInfo, CustInfo, Gpinfo;

{$R *.dfm}
var
  isshow:Boolean=False;

procedure TMainForm.AdvOfficePager1ClosedPage(Sender: TObject;
  PageIndex: Integer);
begin
   AdvOfficePager1.AdvPages[PageIndex].Free;
  // AdvOfficePager1.RemoveAdvPage(AdvOfficePager1.AdvPages[PageIndex]);

end;

procedure TMainForm.AdvSmoothButton7Click(Sender: TObject);
begin
   CallCentForm.Show;
end;

procedure TMainForm.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
  var
   i:Integer;
begin
if (Msg.message = wm_rbuttondown) or (Msg.message = wm_rbuttonup) or
    (msg.message = WM_RBUTTONDBLCLK)   then
  begin
    for i := 1 to 1 do
    begin
    if IsChild(TWebBrowser(Self.FindComponent('Webbrowser'+IntToStr(i))).Handle, Msg.hwnd) then
      Handled := true;
    end;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
    Caption:=Application.Title;



end;

procedure TMainForm.FormShow(Sender: TObject);
begin
    if isshow then Exit;
    getuserpower(Userinfo.userid); //用户权限
    initdata;
    WebBrowser1.Navigate(extractfilepath(paramstr(0))+'Html\Main_chart.html');
     AdvOfficeStatusBar1.Panels.Items[2].Text:=UserInfo.usname;
     AdvOfficeStatusBar1.Panels.Items[4].Text:=UserInfo.usertypename;
     AdvOfficeStatusBar1.Panels.Items[6].Text:=UserInfo.shopname;
     isshow:=True;
end;

procedure TMainForm.getadduser(ismonth: Boolean);
var
  i:Integer;
  sqlstr,wherestr,date2,date1:string;
  xdate,ydate:string;
begin
  xdate:='[]';
  ydate:='[]';
  if ismonth then
  begin
    date1:=datetostr(strtodate(IntToStr(YearOf(now))+'-'+inttostr(MonthOf(now))+'-01'));
    date2:=datetostr(now);
    date1:=date1+' 00:00:00';
    date2:=date2+' 23:59:59';
    wherestr := ' where CreateDate>='''+date1+''' and CreateDate<='''+date2+''' ';
  end
  else
  begin
     wherestr :=' where CreateDate>=''2010-01-01 00:00:00'' and CreateDate<='''+DateTimeToStr(Now)+''' ';
  end;
  sqlstr := 'SELECT COUNT(id) as sl,CONVERT(VARCHAR(10), CreateDate,120) as cdate FROM tbCustomer_Info ';
  with Data1.sqlcmd1 do
  begin
    Close;
    sql.Text:=sqlstr+wherestr+' group by CONVERT(VARCHAR(10), CreateDate,120) order by CONVERT(VARCHAR(10), CreateDate,120)';
    open;
    if not IsEmpty then
    begin
      xdate:='';
      ydate:='';
      for I := 0 to RecordCount-1 do
      begin
         xdate:=xdate+formatdatetime('yyyymmdd',FieldByName('cdate').AsDateTime)+',';
         ydate:=ydate+FieldByName('sl').AsString+',';
         Next;
      end;
      System.Delete(xdate,Length(xdate),1);
      System.Delete(ydate,Length(ydate),1);
      xdate:='['+xdate+']';
      ydate:='['+ydate+']';

    end;
    WebBrowser1.OleObject.document.parentWindow.execScript('resfdate2('''+xdate+''','''+ydate+''')','JavaScript');
    Close;
  end;

end;

procedure TMainForm.getbisentbb(stype: Integer; iswc: Boolean);
var
  i:Integer;
  sqlstr,date1,str,wherestr:string;
  sj,aj:ISuperObject;
begin
  with Data1.sqlcmd1 do
  begin
      str := '订单来源分布';
      if stype=1 then
      begin
        date1:=DateToStr(Now)+' 00:00:00';
        wherestr := ' and optdate>='''+date1+''' ';
        str := '本日'+str;
      end
      else if stype=2 then
      begin
        date1:=datetostr(strtodate(IntToStr(YearOf(now))+'-'+inttostr(MonthOf(now))+'-01'));
        date1:=date1+' 00:00:00';
        wherestr := ' and optdate>='''+date1+''' ';
        str := '本月'+str;
      end;
      if iswc then
      begin
        sqlstr:='SELECT COUNT(id) as sl,case when  ddstype=2 then ''门店员'' when ddstype=5 then ''送气工'' when ddstype=0 then ''接线员'' when ddstype=1 then ''微信订单'' end as name FROM tbisent where (status=1) and (type<>''3'') '+wherestr+' group by ddstype order by sl desc ';
      end
      else
      begin
        sqlstr:='SELECT COUNT(id) as sl,case when  ddstype=2 then ''门店员'' when ddstype=5 then ''送气工'' when ddstype=0 then ''接线员'' when ddstype=1 then ''微信订单'' end as name FROM tbisent where (type<>''3'') '+wherestr+' group by ddstype order by sl desc ';
      end;
      Close;
      sql.Text:=sqlstr;
      open;
      if not IsEmpty then
      begin
         aj := SA([]);
         for I := 0 to RecordCount-1 do
         begin
           sj := SO();//创建列
           sj.O['value']:=SO(FieldByName('sl').AsString) ;
           sj.O['name']:=SO(FieldByName('name').AsString+' '+FieldByName('sl').AsString);
           aj.AsArray.Add(sj);
           Next;
         end;
         WebBrowser1.OleObject.document.parentWindow.execScript('resfdate5('''+Trim(aj.AsString)+''','''+str+''')','JavaScript');
      end
      else WebBrowser1.OleObject.document.parentWindow.execScript('resfdate5(''[]'','''+str+''')','JavaScript');
    Close;
  end;

end;

procedure TMainForm.getchart;
begin
  getuserbb(1,True);
  getmdxsbb(3,False); //1本日 2 本月 3 全部
  getbisentbb(3,False); //1本日 2 本月 3 全部
  getadduser(False);
  getxsbb(False);
  gethwbb(False);
end;

procedure TMainForm.gethwbb(ismonth: Boolean);
var
  i:Integer;
  sqlstr,wherestr,date1,date2:string;
  sj,aj:ISuperObject;
  hwy,yj,wj,zs:string;
begin
  with Data1.sqlcmd1 do
  begin
    hwy:='[]';
    wj:='[]';
    yj:='[]';
    zs:='[]';
    sqlstr := 'select count(id) as sl from ttbill ';
    wherestr := 'where ext<>''''';
    if ismonth then
    begin
      date1:=datetostr(strtodate(IntToStr(YearOf(now))+'-'+inttostr(MonthOf(now))+'-01'));
      date2:=datetostr(now);
      date1:=date1+' 00:00:00';
      date2:=date2+' 23:59:59';
      wherestr := wherestr+' and billdate>='''+date1+''' and billdate<='''+date2+''' ';
    end;
       sqlstr := 'select count(id) as sl,SUM(case when type=''未接'' then 1 end) as wj,SUM(case when type=''已接'' then 1 end) as yj,ext from ttbill '+wherestr+' group by ext ';
       Close;
       sql.Text:=sqlstr;
       open;
       if not IsEmpty then
       begin
        aj := SA([]);
         hwy:='';yj:='';wj:=''; zs:='';
         for I := 0 to RecordCount-1 do
         begin
           sj := SO();//创建列
           sj.O['value']:=SO(FieldByName('sl').AsString) ;
           sj.O['name']:=SO('话务: '+FieldByName('ext').AsString+' 数量: '+FieldByName('sl').AsString);
           aj.AsArray.Add(sj);
           hwy:=hwy+'"话务: '+FieldByName('ext').AsString+'",';
           wj:=wj+FieldByName('wj').AsString+',';
           yj:=yj+FieldByName('yj').AsString+',';
           zs:=zs+FieldByName('sl').AsString+',';
           Next;
         end;
         System.Delete(hwy,Length(hwy),1);
         System.Delete(wj,Length(wj),1);
         System.Delete(yj,Length(yj),1);
         System.Delete(zs,Length(zs),1);
         hwy:='['+hwy+']';
         wj:='['+wj+']';
         yj:='['+yj+']';
         zs:='['+zs+']';
       end;
       WebBrowser1.OleObject.document.parentWindow.execScript('resfdate6('''+hwy+''','''+wj+''','''+yj+''','''+zs+''')','JavaScript');
  end;

end;

procedure TMainForm.getmdxsbb(stype: Integer; iswc: Boolean);
var
  i:Integer;
  sqlstr,str,date1,wherestr:string;
  sj,aj:ISuperObject;
begin
  with Data1.sqlcmd1 do
  begin
      str := '门店销售比例分析';
      if stype=1 then
      begin
        date1:=DateToStr(Now)+' 00:00:00';
        wherestr := ' and a.hddate>='''+date1+''' ';
        str := '本日'+str;
      end
      else if stype=2 then
      begin
        date1:=datetostr(strtodate(IntToStr(YearOf(now))+'-'+inttostr(MonthOf(now))+'-01'));
        date1:=date1+' 00:00:00';
        wherestr := ' and a.hddate>='''+date1+''' ';
        str := '本月'+str;
      end;
      sqlstr:='SELECT COUNT(a.id) as sl,sum(a.money) as money,case when b.shopname IS null then ''未知门店'' else b.shopname end as name '+
        ' FROM tbisent a left join tshop b on (a.shopid=b.shopid) where a.shopid<>''anyType{}'' and (a.status=1) and (a.type<>''3'') '+wherestr+' group by b.shopname order by sl desc ';
      Close;
      sql.Text:=sqlstr;
      open;
      if not IsEmpty then
      begin
         aj := SA([]);
         for I := 0 to RecordCount-1 do
         begin
           sj := SO();//创建列
           sj.O['value']:=SO(FieldByName('money').AsString) ;
           sj.O['name']:=SO(FieldByName('name').AsString+' '+FieldByName('sl').AsString);
           aj.AsArray.Add(sj);
           Next;
         end;
         WebBrowser1.OleObject.document.parentWindow.
         execScript('resfdate4('''+Trim(aj.AsString)+''','''+str+''')','JavaScript');
      end
      else WebBrowser1.OleObject.document.parentWindow.execScript('resfdate4(''[]'','''+str+''')','JavaScript');
     Close;
  end;
end;

procedure TMainForm.getuserbb(stype: Integer; isqy: Boolean);
var
  ssum,i:Integer;
  sqlstr:string;
  sj,aj:ISuperObject;
  sstr,titlestr:string;
begin
  with Data1.sqlcmd1 do
  begin
      if isqy then
      begin
        titlestr:='用户区域分布';                                                                                                               //where a.CreateDate>='''+DateTimeToStr(now)+'''
        sqlstr:='SELECT COUNT(a.id) as sl,case when b.namec IS NULL then ''未知区域'' else b.namec end as name FROM tbCustomer_Info a left join tbkh_qy b on (a.qyid=b.id)  group by b.namec order by sl desc ';
      end
      else
      begin
        titlestr:='用户街道分布';
         sqlstr:='SELECT COUNT(a.id) as sl,case when b.namec IS NULL then ''未知区域'' else b.namec end as name FROM tbCustomer_Info a left join tbkh_jd b on (a.jdid=b.id)  group by b.namec order by sl desc ';
      end;
       Close;
       sql.Text:=sqlstr;
       open;
       if not IsEmpty then
       begin
          aj := SA([]);
          sstr:='';
         for I := 0 to RecordCount-1 do
         begin
           sj := SO();//创建列
           sj.O['value']:=SO(FieldByName('sl').AsString) ;
           sj.O['name']:=SO(FieldByName('name').AsString+' '+FieldByName('sl').AsString);
           aj.AsArray.Add(sj);
           Next;
         end;
         sstr:='['+sstr+']';
         WebBrowser1.OleObject.document.parentWindow.execScript('resfdate1('''+Trim(aj.AsString)+''','''+titlestr+''')','JavaScript');
       end
       else  WebBrowser1.OleObject.document.parentWindow.execScript('resfdate1(''[]'',''用户分布'')','JavaScript');

    Close;
  end;

end;

procedure TMainForm.getuserpower(id: string);
var i:Integer;
begin
  Data1.ClientDataSet2.Close;
  Data1.ClientDataSet2.SQL.Text:='Select a,a1,a2,a3,a4,a5,b,b1,b2,b3,c,c1,c2,c3,c4,c5,d,d1,d2,d3,d4,d5,d6,d7,d8,e,e1,e2,e3,e4,'+
  'f,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,g,g1,g2,g3,g4,h,h1,h2,h3,h4,h5,i,i1,i2,j,j1,j2,j3,j4,j5,j6,j7,k,k1,k2,k3,k4,k5,m,m1,m2,m3,b4 '+
  ' from tbpower Where id='''+id+''' ' ;
  Data1.ClientDataSet2.Open;
  if not Data1.ClientDataSet2.IsEmpty then
  begin
     for i := 0 to Data1.ClientDataSet2.FieldCount - 1 do
     begin
        //Fields[i].FieldName
        TMenuItem(FindComponent(Data1.ClientDataSet2.Fields[i].FieldName)).Visible :=Data1.ClientDataSet2.Fields[i].Value;
     end;
     AdvSmoothButton7.Enabled:=Data1.ClientDataSet2.FieldByName('b4').Value;
     AdvSmoothButton8.Enabled:=Data1.ClientDataSet2.FieldByName('b1').Value;
     AdvSmoothButton9.Enabled:=Data1.ClientDataSet2.FieldByName('b2').Value;
     AdvSmoothButton10.Enabled:=Data1.ClientDataSet2.FieldByName('b3').Value;
  end;
     Data1.ClientDataSet2.Close;
end;

procedure TMainForm.getxsbb(ismonth: Boolean);
var
  i:Integer;
  sqlstr,wherestr,date2,date1:string;
  xdate,ydate:string;
begin
  if ismonth then
  begin
    date1:=datetostr(strtodate(IntToStr(YearOf(now))+'-'+inttostr(MonthOf(now))+'-01'));
    date2:=datetostr(now);
    date1:=date1+' 00:00:00';
    date2:=date2+' 23:59:59';
    wherestr := ' and hddate>='''+date1+''' and hddate<='''+date2+''' ';
  end
  else
  begin
     wherestr :=' and hddate>=''2010-01-01 00:00:00'' and hddate<='''+DateTimeToStr(Now)+''' ';
  end;
  sqlstr := 'select sum(money) as money,CONVERT(VARCHAR(10), hddate,120) as hddate from tbisent where (status=1) and (type<>''3'')';
  with Data1.sqlcmd1 do
  begin
    Close;
    sql.Text:=sqlstr+wherestr+' group by CONVERT(VARCHAR(10), hddate,120) order by CONVERT(VARCHAR(10), hddate,120)';
    open;
    if not IsEmpty then
    begin
      for I := 0 to RecordCount-1 do
      begin
         xdate:=xdate+formatdatetime('yyyymmdd',FieldByName('hddate').AsDateTime)+',';
         ydate:=ydate+FieldByName('money').AsString+',';
         Next;
      end;
      System.Delete(xdate,Length(xdate),1);
      System.Delete(ydate,Length(ydate),1);
      xdate:='['+xdate+']';
      ydate:='['+ydate+']';
    end
    else
    begin
      xdate := '[]';
      ydate := '[]';
    end;
    WebBrowser1.OleObject.document.parentWindow.execScript('resfdate3('''+xdate+''','''+ydate+''')','JavaScript');
    Close;
  end;

end;

procedure TMainForm.initdata;
var
 i:Integer;
begin
  ShopnameBox.Clear;
    ShopidBox.Clear;
    KhlxBox.Clear;
    combobox2.Clear;
    combobox3.Clear;
    combobox4.Clear;
    with Data1.work do
    begin
      Close;
      SQL.Text := 'select id,comname from tcompany where type=3';;
      Open;
      if not Data1.work.IsEmpty then
      begin
        for I := 0 to Data1.work.RecordCount-1 do
        begin
          ShopnameBox.Items.Add(FieldByName('comname').AsString);
          ShopidBox.Items.Add(FieldByName('id').AsString);
          Next;
        end;
      end;
      Close;
      SQL.Text := 'select type_name from tbCustomer_Type';;
      Open;
      if not Data1.work.IsEmpty then
      begin
        for I := 0 to Data1.work.RecordCount-1 do
        begin
          KhlxBox.Items.Add(FieldByName('type_name').AsString);
          Next;
        end;
      end;
      Close;
      SQL.Clear;
      SQL.Add('Select Factory_ID,NameC From tbWorks_Info Order By Factory_ID');
      Open;
      if RecordCount>0 then
      begin
        for i:=1 to  RecordCount do
        begin
          combobox2.Items.Append(Fields.Fields[1].AsString);
          Next;
        end;
      end;
          //查钢瓶规格
      Close;
      SQL.Clear;
      SQL.Add('Select Spec_ID,Spec_Name From tbBottle_Spec Order By Spec_ID');
      Open;
      if RecordCount>0 then
      begin
        for i:=1 to RecordCount do
        begin
          combobox3.Items.Append(Fields.Fields[1].AsString);
          Next;
        end;
      end;
           //查充气介质
      Close;
      SQL.Clear;
      SQL.Add('Select Type_ID,Type_Name From tbBottle_Class Order By Type_ID');
      Open;
      if RecordCount>0 then
      begin
        for i:=1 to RecordCount do
        begin
          combobox4.Items.Append(Fields.Fields[1].AsString);
          Next;
        end;
      end;
      Close;
    end;

end;

procedure TMainForm.H1Click(Sender: TObject);
begin
  LetterForm.ShowModal;
end;

procedure TMainForm.I1Click(Sender: TObject);
begin
  MdgpForm.ShowModal;
end;

procedure TMainForm.F1Click(Sender: TObject);
 var
 comap:TBottleTypeFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=F1.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := F1.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleTypeFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.A1Click(Sender: TObject);
  var
 comap:TForm28;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=A1.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := A1.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TForm28.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.B1Click(Sender: TObject);
var
 comap:TMdPgFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=B1.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := B1.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TMdPgFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.B2Click(Sender: TObject);
var
 comap:TMdHdFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=B2.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := B2.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TMdHdFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.B3Click(Sender: TObject);
var
 comap:TDdListFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=B3.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := B3.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDdListFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.F2Click(Sender: TObject);
var
 comap:TBottleSpecFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=F2.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := F2.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleSpecFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.D1Click(Sender: TObject);
var
 comap:TComapFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=D1.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := D1.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=tcomapframe.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
   with comap do
   begin
     for I := 1 to 7 do
      TEdit(FindComponent('edit'+inttostr(i))).Text:='';
      Memo1.Text:='';
       TreeUtil := TTreeUtils.Create(TreeView1,'tCompany');
      TreeUtil.FillTree;
   end;
end;

procedure TMainForm.D2Click(Sender: TObject);
var
 comap:TSpLxiFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=D2.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := D2.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TSpLxiFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.D3Click(Sender: TObject);
var
 comap:TSpXxFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=D3.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := D3.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TSpXxFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.D4Click(Sender: TObject);
var
 comap:TDeptInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=D4.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := D4.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDeptInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.D5Click(Sender: TObject);
var
 comap:TGwInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=D5.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := D5.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TGwInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.D6Click(Sender: TObject);
var
 comap:TYgInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=D6.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := D6.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TYgInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.D7Click(Sender: TObject);
begin
  GiveForm.ShowModal;
end;

procedure TMainForm.D8Click(Sender: TObject);
begin
  YwyForm.ShowModal;
end;

procedure TMainForm.C1Click(Sender: TObject);
var
 comap:TGpjFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=C1.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := C1.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TGpjFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.C2Click(Sender: TObject);
var
 comap:TMdJgFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=C2.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := C2.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TMdJgFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.C3Click(Sender: TObject);
var
 comap:TDjYfFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=C3.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := C3.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDjYfFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.C4Click(Sender: TObject);
var
 comap:TTsYhFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=C4.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := C4.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TTsYhFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.C5Click(Sender: TObject);
var
 comap:TGsKhYhFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=C5.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := C5.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TGsKhYhFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.E1Click(Sender: TObject);
var
 comap:TKhLxFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=E1.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := E1.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TKhLxFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.E2Click(Sender: TObject);
var
 comap:TDqSzFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=E2.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := E2.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDqSzFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.E3Click(Sender: TObject);
begin
  DtelForm.ShowModal;
end;

procedure TMainForm.E4Click(Sender: TObject);
var
 comap:TKhXxForm;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=E4.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := E4.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TKhXxForm.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.M2Click(Sender: TObject);
var
 comap:TUserInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=M2.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := M2.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TUserInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.M1Click(Sender: TObject);
begin
  PzForm.ShowModal;
end;

procedure TMainForm.F3Click(Sender: TObject);
var
 comap:TBottleClassFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=F3.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := F3.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleClassFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.F4Click(Sender: TObject);
var
 comap:TBottleWorkFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=F4.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := F4.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleWorkFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.F5Click(Sender: TObject);
var
 comap:TBottleInsFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=F5.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := F5.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleInsFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.F6Click(Sender: TObject);
begin
   initdata;
   with BottleInfoForm do
   begin
      Caption:='钢瓶信息-新增';
      ComboBox1.Items:=Self.combobox3.Items; //钢瓶规格
      ComboBox2.Items:=Self.combobox2.Items; //厂家名称
      ComboBox3.Items:=Self.combobox4.Items; //充气介质
      Edit13.Text:=Loginname;
      Edit15.Text:=gettime;
      Edit14.Text:='';
      Edit16.Text:='';
      ShowModal;
   end;
end;

procedure TMainForm.F9Click(Sender: TObject);
begin
  lzForm.ShowModal;
end;

procedure TMainForm.F8Click(Sender: TObject);
begin
  DForm.ShowModal;
end;

procedure TMainForm.F7Click(Sender: TObject);
var
 comap:TBottleListFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=F7.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;
   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := F7.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleListFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N50Click(Sender: TObject);
var
 comap:TYpDaycFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N50.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;
   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N50.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TYpDaycFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N51Click(Sender: TObject);
 var
 comap:TYpTjFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N51.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;
   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N51.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TYpTjFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.F10Click(Sender: TObject);
begin
   BottleManForm.show;
end;

procedure TMainForm.G1Click(Sender: TObject);
 var
 comap:TQzFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=G1.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;
   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := G1.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TQzFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.G3Click(Sender: TObject);
begin
  CarForm.ShowModal;
end;

procedure TMainForm.H2Click(Sender: TObject);
begin
  CustMoneyForm.ShowModal;
end;

procedure TMainForm.H3Click(Sender: TObject);
begin
  CustBlendForm.ShowModal;
end;

procedure TMainForm.H4Click(Sender: TObject);
begin
  CodeForm.ShowModal;
end;

procedure TMainForm.H5Click(Sender: TObject);
begin
  CustBillForm.ShowModal;
end;

procedure TMainForm.G4Click(Sender: TObject);
begin
  LPGForm.Show;
end;

procedure TMainForm.M3Click(Sender: TObject);
begin
  LogForm.ShowModal;
end;

procedure TMainForm.J2Click(Sender: TObject);
begin
  XstypeForm.ComboBox1.Clear;
  XstypeForm.ComboBox1.Items := ShopnameBox.Items;
  XstypeForm.ShowModal;
end;

procedure TMainForm.J1Click(Sender: TObject);
begin
  GMoneyForm.ComboBox1.Clear;
  GMoneyForm.ComboBox1.Items := ShopnameBox.Items;
  GMoneyForm.ShowModal;
end;

procedure TMainForm.I2Click(Sender: TObject);
begin
  khgpForm.ShowModal;
end;

procedure TMainForm.J3Click(Sender: TObject);
begin
  initdata;
  CustwaingForm.ComboBox1.Items := ShopnameBox.Items;
  CustwaingForm.ComboBox3.Items := ShopidBox.Items;
  CustwaingForm.DBComboBox1.Items := KhlxBox.Items;
  CustwaingForm.ShowModal;
end;

procedure TMainForm.K1Click(Sender: TObject);
begin
  Form94.ComboBox2.Items := ShopnameBox.Items;
  Form94.ComboBox3.Items := ShopidBox.Items;
  Form94.Panel1.Visible := True;
  Form94.Caption :='送气工位置信息';
  Form94.Show;
  Form94.getsqgadress;
end;

procedure TMainForm.K2Click(Sender: TObject);
begin
//  SqgInfoForm.ComboBox1.Items := Form1.ComboBox3.Items;
  SqgInfoForm.ShowModal;
end;

procedure TMainForm.K5Click(Sender: TObject);
begin
//  BaseInfoForm.ComboBox3.Items := Form1.ComboBox3.Items;
  BaseInfoForm.ComboBox1.Items := ShopnameBox.Items;
  BaseInfoForm.ComboBox2.Items := ShopidBox.Items;
  BaseInfoForm.ShowModal;
end;

procedure TMainForm.J7Click(Sender: TObject);
begin
  SqgbbForm.ComboBox1.Clear;
  SqgbbForm.ComboBox1.Items:=ShopnameBox.Items;
  SqgbbForm.ShowModal;
end;

procedure TMainForm.J8Click(Sender: TObject);
begin
  YwybbForm.ComboBox1.Items.Clear;
  YwybbForm.ComboBox1.Items:=ShopnameBox.Items;
  YwybbForm.ShowModal;
end;

procedure TMainForm.J5Click(Sender: TObject);
begin
  SelajForm.DBComboBox1.Clear;
  SelajForm.DBComboBox1.Items := KhlxBox.Items;
  SelajForm.ComboBox1.Clear;
  SelajForm.ComboBox1.Items := ShopnameBox.Items;
  SelajForm.ComboBox2.Clear;
  SelajForm.ComboBox2.Items := ShopidBox.Items;
  SelajForm.Edit3.Text := '1';
  SelajForm.ShowModal;
end;

procedure TMainForm.K3Click(Sender: TObject);
begin
  CustInfoForm.ComboBox1.Items := ShopnameBox.Items;
  CustInfoForm.ComboBox2.Items := ShopidBox.Items;
  CustInfoForm.ShowModal;
end;

procedure TMainForm.K4Click(Sender: TObject);
begin
  GpinfoForm.ShowModal;
end;

procedure TMainForm.J4Click(Sender: TObject);
begin
   CharForm.Show;
end;

procedure TMainForm.WebBrowser1BeforeNavigate2(ASender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
begin
    if Pos('#Submitqy',URL)>0 then
    begin
       getuserbb(1,True);
       Cancel:=True;
       Exit;
    end;
    if Pos('#Submitjd',URL)>0 then
    begin
       getuserbb(1,False);
       Cancel:=True;
       Exit;
    end;
    if Pos('#Submitsx',URL)>0 then
    begin
       getchart;
       Cancel:=True;
       Exit;
    end;
    if Pos('#Xsday',URL)>0 then
    begin
       getmdxsbb(1,True);
       Cancel:=True;
       Exit;
    end;
    if Pos('#Xsmonth',URL)>0 then
    begin
       getmdxsbb(2,True);
       Cancel:=True;
       Exit;
    end;
    if Pos('#Xsall',URL)>0 then
    begin
       getmdxsbb(3,True);
       Cancel:=True;
       Exit;
    end;

    if Pos('#Ddday',URL)>0 then
    begin
       getbisentbb(1,False);
       Cancel:=True;
       Exit;
    end;
    if Pos('#Ddmonth',URL)>0 then
    begin
       getbisentbb(2,False);
       Cancel:=True;
       Exit;
    end;
    if Pos('#Ddall',URL)>0 then
    begin
       getbisentbb(3,False);
       Cancel:=True;
       Exit;
    end;
end;

procedure TMainForm.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
  var
   web:TWebBrowser;
begin
   if WebBrowser1.Application = pDisp then
   begin
     getchart;
   end;
    web:=(asender as TWebBrowser);
    Web.OleObject.Document.Body.Scroll := 'no';
    Web.OleObject.Document.Body.style.border := 'none';
    web.OleObject.Document.Body.Style.margin := '0px';
//    case web.Tag of
////       0: getuserbb(1,True);
////       1: getadduser(False);
////       2: getxsbb(False);
////       3: getmdxsbb(1,False);
////       4: getbisentbb(1,False);
////       5: gethwbb;
//       0: begin
//         getuserbb(1,True);
//         getadduser(False);
//         getxsbb(False);
//         getmdxsbb(1,False);
//         getbisentbb(1,False);
//         gethwbb;
//       end;
//    end;

end;

end.
