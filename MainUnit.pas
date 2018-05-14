unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvOfficePager, AdvOfficePagerStylers, AdvPanel, ExtCtrls,
  AdvSmoothButton, ImgList, StdCtrls,TreeUtils, TeEngine, Series, TeeProcs,
  Chart, OleCtrls, SHDocVw,ActiveX,superobject, AppEvnts,DateUtils;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    ImageList1: TImageList;
    AdvSmoothButton7: TAdvSmoothButton;
    AdvSmoothButton51: TAdvSmoothButton;
    AdvSmoothButton38: TAdvSmoothButton;
    AdvSmoothButton18: TAdvSmoothButton;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N12: TMenuItem;
    N21: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    k1: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    m1: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
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
    g1: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    AdvPanel2: TAdvPanel;
    AdvPanelStyler2: TAdvPanelStyler;
    AdvPanel3: TAdvPanel;
    AdvPanel6: TAdvPanel;
    s1: TMenuItem;
    WebBrowser1: TWebBrowser;
    ApplicationEvents1: TApplicationEvents;
    j1: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure AdvOfficePager1ClosedPage(Sender: TObject; PageIndex: Integer);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure AdvSmoothButton7Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N66Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N67Click(Sender: TObject);
    procedure m1Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure s1Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure WebBrowser1BeforeNavigate2(ASender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure N75Click(Sender: TObject);
    procedure N73Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure N77Click(Sender: TObject);
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
  end;

var
  MainForm: TMainForm;
  Loginname,UsName,ext:string;
  Shopid,shopname:string;
  log_czid,qzname,log_czq,usercode:string;
implementation

uses
  ComapUnit,SpLxUnit,SpXxUnit,GpjUnit,MdJgUnit,DjYfUnit, KhLxUnit,DqSzUnit,
  KhXxUnit,TsYhUnit,GsKhYhUnit, DbUnit,DeptInfoUnit,GwInfoUnit,YgInfoUnit, zcomm,
  CallCentUnit, PowerUnit, UserInfoUnit, MdPgUnit, MdHdUnit, DdListUnit, Unit28,
  BottleTypeUnit, BottleSpecUnit, BottleClassUnit, BottleWorkUnit,LPGUnit,
  CustBillUnit, LogUnit,CodeUnit,LetterUnit,CustMoneyUnit,CustBlendUnit,
  GiveUnitpas, BottleInsUnit, PzUnit, DtelUnit, XstypeUnit, YwyUnit, QzUnit,
  CarUnit, GMoneyUnit, MdgpUnit, khgpUnit, CustwaingUnit, LzUnit, DUnitpas, BottleListUnit,
  BottleinfoUnit, YpDayUnit, YpTjUnit, BottleManUnit, CharUnit, SelajUnit,Sqgbb,
  YwybbUnit, SqgUnitpas, SqgInfo, BaseInfo, CustInfo, Gpinfo;

{$R *.dfm}
var
 htmlstr:string;
 first:Boolean=True;
procedure TMainForm.AdvOfficePager1ClosedPage(Sender: TObject;
  PageIndex: Integer);
begin
   // ShowMessage(IntToStr(PageIndex));
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
      Handled := true;//如果有其他需要处理的，在这里加上你要处理的代码
    end;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
    Caption:=Application.Title;
    initdata;
    WebBrowser1.Navigate(extractfilepath(paramstr(0))+'Html\Main_chart.html');
end;

procedure TMainForm.FormPaint(Sender: TObject);
begin
//  ShowMessage('1');
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  if not first then
  begin
//    WebBrowser1.OleObject.document.parentWindow.execScript('getnow()','JavaScript');
  end;
  first := False;
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

procedure TMainForm.k1Click(Sender: TObject);
begin
  LetterForm.ShowModal;
end;

procedure TMainForm.m1Click(Sender: TObject);
begin
  MdgpForm.ShowModal;
end;

procedure TMainForm.N12Click(Sender: TObject);
 var
 comap:TBottleTypeFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N12.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N12.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleTypeFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N13Click(Sender: TObject);
  var
 comap:TForm28;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N13.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N13.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TForm28.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N18Click(Sender: TObject);
var
 comap:TMdPgFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N18.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N18.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TMdPgFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N19Click(Sender: TObject);
var
 comap:TMdHdFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N19.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N19.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TMdHdFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N20Click(Sender: TObject);
var
 comap:TDdListFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N20.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N20.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDdListFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N21Click(Sender: TObject);
var
 comap:TBottleSpecFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N21.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N21.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleSpecFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N22Click(Sender: TObject);
var
 comap:TComapFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N22.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N22.Caption;
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

procedure TMainForm.N23Click(Sender: TObject);
var
 comap:TSpLxiFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N23.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N23.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TSpLxiFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N24Click(Sender: TObject);
var
 comap:TSpXxFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N24.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N24.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TSpXxFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N25Click(Sender: TObject);
var
 comap:TDeptInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N25.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N25.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDeptInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N26Click(Sender: TObject);
var
 comap:TGwInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N26.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N26.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TGwInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N27Click(Sender: TObject);
var
 comap:TYgInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N27.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N27.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TYgInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N28Click(Sender: TObject);
begin
  GiveForm.ShowModal;
end;

procedure TMainForm.N29Click(Sender: TObject);
begin
  YwyForm.ShowModal;
end;

procedure TMainForm.N30Click(Sender: TObject);
var
 comap:TGpjFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N30.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N30.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TGpjFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N31Click(Sender: TObject);
var
 comap:TMdJgFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N31.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N31.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TMdJgFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N32Click(Sender: TObject);
var
 comap:TDjYfFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N32.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N32.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDjYfFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N33Click(Sender: TObject);
var
 comap:TTsYhFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N33.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N33.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TTsYhFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N34Click(Sender: TObject);
var
 comap:TGsKhYhFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N34.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N34.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TGsKhYhFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N35Click(Sender: TObject);
var
 comap:TKhLxFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N35.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N35.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TKhLxFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N36Click(Sender: TObject);
var
 comap:TDqSzFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N36.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N36.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDqSzFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N37Click(Sender: TObject);
begin
  DtelForm.ShowModal;
end;

procedure TMainForm.N38Click(Sender: TObject);
var
 comap:TKhXxForm;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N38.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N38.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TKhXxForm.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N39Click(Sender: TObject);
var
 comap:TUserInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N39.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N39.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TUserInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N40Click(Sender: TObject);
begin
  PzForm.ShowModal;
end;

procedure TMainForm.N41Click(Sender: TObject);
var
 comap:TBottleClassFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N41.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N41.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleClassFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N42Click(Sender: TObject);
var
 comap:TBottleWorkFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N41.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N41.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleWorkFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N43Click(Sender: TObject);
var
 comap:TBottleInsFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N43.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N43.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleInsFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N45Click(Sender: TObject);
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

procedure TMainForm.N47Click(Sender: TObject);
begin
  lzForm.ShowModal;
end;

procedure TMainForm.N48Click(Sender: TObject);
begin
  DForm.ShowModal;
end;

procedure TMainForm.N49Click(Sender: TObject);
var
 comap:TBottleListFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N49.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;
   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N49.Caption;
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

procedure TMainForm.N55Click(Sender: TObject);
begin
   BottleManForm.show;
end;

procedure TMainForm.N56Click(Sender: TObject);
 var
 comap:TQzFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N56.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;
   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N56.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TQzFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N58Click(Sender: TObject);
begin
  CarForm.ShowModal;
end;

procedure TMainForm.N59Click(Sender: TObject);
begin
  CustMoneyForm.ShowModal;
end;

procedure TMainForm.N60Click(Sender: TObject);
begin
  CustBlendForm.ShowModal;
end;

procedure TMainForm.N61Click(Sender: TObject);
begin
  CodeForm.ShowModal;
end;

procedure TMainForm.N62Click(Sender: TObject);
begin
  CustBillForm.ShowModal;
end;

procedure TMainForm.N63Click(Sender: TObject);
begin
  LPGForm.Show;
end;

procedure TMainForm.N65Click(Sender: TObject);
begin
  LogForm.ShowModal;
end;

procedure TMainForm.N66Click(Sender: TObject);
begin
  XstypeForm.ComboBox1.Clear;
  XstypeForm.ComboBox1.Items := ShopnameBox.Items;
  XstypeForm.ShowModal;
end;

procedure TMainForm.N67Click(Sender: TObject);
begin
  GMoneyForm.ComboBox1.Clear;
  GMoneyForm.ComboBox1.Items := ShopnameBox.Items;
  GMoneyForm.ShowModal;
end;

procedure TMainForm.N68Click(Sender: TObject);
begin
  khgpForm.ShowModal;
end;

procedure TMainForm.N69Click(Sender: TObject);
begin
  initdata;
  CustwaingForm.ComboBox1.Items := ShopnameBox.Items;
  CustwaingForm.ComboBox3.Items := ShopidBox.Items;
  CustwaingForm.DBComboBox1.Items := KhlxBox.Items;
  CustwaingForm.ShowModal;
end;

procedure TMainForm.N70Click(Sender: TObject);
begin
  Form94.ComboBox2.Items := ShopnameBox.Items;
  Form94.ComboBox3.Items := ShopidBox.Items;
  Form94.Panel1.Visible := True;
  Form94.Caption :='送气工位置信息';
  Form94.Show;
  Form94.getsqgadress;
end;

procedure TMainForm.N71Click(Sender: TObject);
begin
//  SqgInfoForm.ComboBox1.Items := Form1.ComboBox3.Items;
  SqgInfoForm.ShowModal;
end;

procedure TMainForm.N72Click(Sender: TObject);
begin
//  BaseInfoForm.ComboBox3.Items := Form1.ComboBox3.Items;
  BaseInfoForm.ComboBox1.Items := ShopnameBox.Items;
  BaseInfoForm.ComboBox2.Items := ShopidBox.Items;
  BaseInfoForm.ShowModal;
end;

procedure TMainForm.N73Click(Sender: TObject);
begin
  SqgbbForm.ComboBox1.Clear;
  SqgbbForm.ComboBox1.Items:=ShopnameBox.Items;
  SqgbbForm.ShowModal;
end;

procedure TMainForm.N74Click(Sender: TObject);
begin
  YwybbForm.ComboBox1.Items.Clear;
  YwybbForm.ComboBox1.Items:=ShopnameBox.Items;
  YwybbForm.ShowModal;
end;

procedure TMainForm.N75Click(Sender: TObject);
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

procedure TMainForm.N76Click(Sender: TObject);
begin
  CustInfoForm.ComboBox1.Items := ShopnameBox.Items;
  CustInfoForm.ComboBox2.Items := ShopidBox.Items;
  CustInfoForm.ShowModal;
end;

procedure TMainForm.N77Click(Sender: TObject);
begin
  GpinfoForm.ShowModal;
end;

procedure TMainForm.s1Click(Sender: TObject);
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
