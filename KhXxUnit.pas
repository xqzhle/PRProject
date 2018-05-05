unit KhXxUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ImgList,  DateUtils,
  AdvSmoothMessageDialog,AdvStyleIF, AdvGlowButton,
  AdvOfficePager, ExtCtrls, AdvPanel, Grids, BaseGrid, AdvGrid,
  DBAdvGrid, tmsAdvGridExcel, asgprev, DBCtrls, Mask,
  Menus, AdvObj,  uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame;

type
  TKhXxForm = class(TUniFrame)
    TreeView1: TTreeView;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    TreeView2: TTreeView;
    Panel1: TPanel;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvPanel1: TAdvPanel;
    AdvPanel2: TAdvPanel;
    AdvPanel3: TAdvPanel;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    AdvPanel4: TAdvPanel;
    AdvPanel5: TAdvPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBAdvGrid1: TDBAdvGrid;
    AdvOfficePager2: TAdvOfficePager;
    AdvOfficePager21: TAdvOfficePage;
    AdvOfficePager22: TAdvOfficePage;
    AdvOfficePager23: TAdvOfficePage;
    Label1: TLabel;
    AdvPanel6: TAdvPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvOfficePage1: TAdvOfficePage;
    AdvOfficePage2: TAdvOfficePage;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label15: TLabel;
    ComboBox2: TComboBox;
    AdvGlowButton4: TAdvGlowButton;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Edit2: TEdit;
    AdvGlowButton11: TAdvGlowButton;
    Edit3: TEdit;
    RadioGroup1: TRadioGroup;
    radionbutton1: TRadioButton;
    radionbutton2: TRadioButton;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    AdvGlowButton12: TAdvGlowButton;
    AdvGridExcelIO2: TAdvGridExcelIO;
    AdvPreviewDialog1: TAdvPreviewDialog;
    DBAdvGrid2: TDBAdvGrid;
    sSaveDialog1: TSaveDialog;
    advpnl1: TAdvPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    SelPageBox: TComboBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    cbbPageSizebox: TComboBox;
    lbl1: TLabel;
    tv1: TTreeView;
    AdvOfficePage3: TAdvOfficePage;
    grp1: TGroupBox;
    tv3: TTreeView;
    grp2: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    lbl4: TLabel;
    AdvGlowButton13: TAdvGlowButton;
    tv2: TTreeView;
    edt1: TEdit;
    lbl5: TLabel;
    AdvGlowButton14: TAdvGlowButton;
    lbl6: TLabel;
    edt2: TEdit;
    lbl7: TLabel;
    AdvGlowButton15: TAdvGlowButton;
    c1: TMenuItem;
    AdvGlowButton16: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    GroupBox5: TGroupBox;
    ComboBox3: TComboBox;
    Label22: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Edit4: TEdit;
    Label33: TLabel;
    procedure TreeView1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure TreeView2Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure AdvOfficePager12Show(Sender: TObject);
    procedure AdvGlowButton12Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure DBAdvGrid2Resize(Sender: TObject);
    procedure AdvOfficePager22Exit(Sender: TObject);
    procedure AdvOfficePager22Show(Sender: TObject);
    procedure DBAdvGrid1Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure SelPageBoxChange(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cbbPageSizeboxChange(Sender: TObject);
    procedure tv1Click(Sender: TObject);
    procedure tv3Click(Sender: TObject);
    procedure tv2Click(Sender: TObject);
    procedure AdvGlowButton13Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton15Click(Sender: TObject);
    procedure AdvOfficePage3Show(Sender: TObject);
    procedure AdvOfficePager11Show(Sender: TObject);
    procedure c1Click(Sender: TObject);
    procedure AdvGlowButton16Click(Sender: TObject);
    procedure AdvGlowButton17Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
  private
    { Private declarations }
//    procedure selectshop(var shopname:string);
//    procedure selecttype(var typename:string);
    //procedure saveshop;
    procedure Getdate(pages:Integer) ;
  public
    { Public declarations }
    procedure FillTreeView(TreeView: TTreeView);
    procedure FillTreeView2(TreeView: TTreeView);
    procedure FillTreeView3(TreeView: TTreeView);
  end;

var
//  Form11: TForm11;
  yy:Boolean;
implementation

uses DbUnit,zcomm, MainUnit, KhEditUnit;

{$R *.dfm}
var
ssql:string;
begintime,endtime:string;
Pagecurrent:Integer=1;  // 当前页
Pagecount:Integer=0;    //总页数
wherestr, orderbystr, fromstr, selectstr,
fdname: string;

//procedure TForm11.selectshop(var shopname:string);
//begin
//  Data1.ds21.Close;
//  Data1.ds21.SQL.Text:=ssql+' where a.psid='''+shopname+'''';
//  Data1.ds21.Open;
//  data1.cmd1.Close;
//  Data1.cmd1.SQL.Text:='select count(*) as id from tbCustomer_Info  where psid='''+shopname+'''';
//  Data1.cmd1.Open;
//  Label1.Caption:='总共：'+Data1.cmd1.FieldByName('id').AsString+' 条记录';
//  data1.cmd1.Close;
//end;
//
//procedure TForm11.selecttype(var typename:string);
//begin
//  Data1.ds21.Close;
//  Data1.ds21.SQL.Text:=ssql+' where a.typec='''+typename+'''';
//  Data1.ds21.Open;
//  data1.cmd1.Close;
//  Data1.cmd1.SQL.Text:='select count(*) as id from tbCustomer_Info  where typec='''+typename+'''';
//  Data1.cmd1.Open;
//  Label1.Caption:='总共：'+Data1.cmd1.FieldByName('id').AsString+' 条记录';
//  data1.cmd1.Close;
//end;

procedure TKhXxForm.SelPageBoxChange(Sender: TObject);
begin
     if SelPageBox.ItemIndex=-1 then Exit;
   if Pagecurrent=SelPageBox.ItemIndex+1 then Exit;
   Getdate(SelPageBox.ItemIndex+1);
end;

procedure TKhXxForm.AdvGlowButton10Click(Sender: TObject);
begin
     wherestr:='Customer_ID<>''1''';
      Getdate(1);
end;

procedure TKhXxForm.AdvGlowButton11Click(Sender: TObject);
var
sstr:string;
begin
      if radionbutton1.Checked then
       begin
         if ((Edit2.Text<>'') and  (Edit3.Text<>'')) then
          begin
           sstr:='';
           sstr:=' ((a.barcode>='''+edit2.Text+''') and (a.barcode<='''+edit3.Text+'''))';
           wherestr:=sstr;
           Getdate(1);
       end
      else
     mShowMessage('请输入完整的查询数据后查询!');
  end;
       if radionbutton2.Checked then
       begin
         sstr:='';
         sstr:=' ((a.CreateDate>='''+datetostr(DateTimePicker1.Date)+''') and (a.CreateDate<='''+datetostr(DateTimePicker2.Date)+'''))';
         wherestr:=sstr;
         Getdate(1);
       end;
end;

procedure TKhXxForm.AdvGlowButton12Click(Sender: TObject);
begin
   if sSaveDialog1.Execute then
   begin
      try
       if  pos('.', ssavedialog1.FileName)>0 then  advgridexcelio2.XLSExport(ssavedialog1.FileName)
       else   advgridexcelio2.XLSExport(ssavedialog1.FileName+'.xls');
       mshowmessage('导出成功！');
      except
         mShowMessage('导出失败！');
      end;
   end;

end;

procedure TKhXxForm.AdvGlowButton13Click(Sender: TObject);
//var
//  date1,date2:string;
begin
//   date1:=DateToStr(dtp1.Date)+' 00:00:00';
//   date2:=DateToStr(dtp2.Date)+' 23:59:59';
   if edt1.Text='' then
      wherestr:='a.hynumber<>'''' and a.fjf>0'
   else wherestr:='a.hynumber<>'''' and a.fjf>='''+edt1.Text+''' ';                                                       //a.fjf as 积分,a.fje as 消费金额
   if edt2.Text<>'' then  wherestr:=wherestr+' and a.fje>='''+edt2.Text+''' ';
  //a.bayday as 身份证号,a.kfsn as 押金单号,a.gpstype as 钢瓶类型,a.grade as 押金,
   Getdate(1);
end;

procedure TKhXxForm.AdvGlowButton15Click(Sender: TObject);
var
  i:Integer;
begin
   with data1.sqlcmd1 do
   begin
     Close;
     SQL.Text:='select a.barcode as bh,d.sl as jf,d.smoney as smoney '+
    ' from tbCustomer_Info a left join tshop b on a.psid=b.shopid left join tbCustomer_type c on a.typec=c.type_id  left join (select sum(case when b.pricename like ''14.5K%'' or b.pricename like ''15K%'' then b.sl '+
     ' when b.pricename like ''45K%'' or b.pricename like ''50K%'' then b.sl*3 '+
     ' when b.pricename like ''5K%'' or b.pricename like ''4.8%气'' then b.sl*0.3 when b.pricename like ''2.0k%'' then b.sl*0.2 when b.pricename like ''9.5K%'' then b.sl*0.7 end ) as sl,a.corpid as corpid,'+
     ' sum(case when b.pricename like ''%气'' or b.pricename like ''%瓶'' then b.money else 0 end) as smoney  from tbisent a left join tbisentprice b on (a.bisentid=b.bisentid) '+
     ' where  a.status<>''0'' and a.type<>''3'' and a.money>0 group by a.corpid) d on (a.BarCode=d.corpid) where d.sl is not null and a.ywy<>'''' ';
     Open;
     if not IsEmpty then
     begin
       for I := 0 to data1.sqlcmd1.RecordCount-1 do
       begin
         data1.sqlcmd11.Close;
         data1.sqlcmd11.SQL.Text:='update tbCustomer_Info set Fjf='''+data1.sqlcmd1.FieldByName('jf').AsString+''',Fje='''+data1.sqlcmd1.FieldByName('smoney').AsString+''' where BarCode='''+data1.sqlcmd1.FieldByName('bh').AsString+''' ';
         data1.sqlcmd11.ExecSQL;
         data1.sqlcmd1.Next;
       end;
       mShowMessage('完成！');
     end;
   end;
end;

procedure TKhXxForm.AdvGlowButton16Click(Sender: TObject);
begin
  wherestr:='a.bayday <> '''' ';
  Getdate(1);
end;

procedure TKhXxForm.AdvGlowButton17Click(Sender: TObject);
var
  memo:string;
begin
 if wherestr<>'' then
 begin
   if (IDYES = Application.MessageBox(PWideChar('确认删除客户资料？删除后无法恢复！'+label23.Caption), pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
   begin
     with Data1.ClientDataSet3 do
     begin
       try
         memo := '管理员 删除客户:'+wherestr;
         memo := StringReplace(memo, '''', '', [rfReplaceAll]);
         Close;
         sql.Text:='insert into rizhi (text,datetime) values ('''+memo+''','''+gettime+''')  ' ;
         ExecSQL;
         Close;
         sql.Text:='insert into tbCustomer_bf (Namec,TypeC,BarCode,SendPeriod,Fdw,Address,Sfaddress,imgbase,Contact,tel,psid,ywy,sqg,hynumber,Remark, '+
            ' CreateDate,CreateUser,UpdateDate,UpdateUser,kfsn,gpstype,Fmoney,Fjf,Fje,jdid,qyid,bayday) select Namec,TypeC,BarCode,SendPeriod,Fdw,Address,Sfaddress,imgbase,Contact,tel,psid,ywy,sqg,hynumber,Remark, '+
            ' CreateDate,CreateUser,UpdateDate,UpdateUser,kfsn,gpstype,Fmoney,Fjf,Fje,jdid,qyid,bayday from  tbCustomer_Info a  where '+wherestr ;
         ExecSQL;
         Close;
         SQL.Text:='delete tbCustomer_Info from tbCustomer_Info a where '+wherestr;
         ExecSQL;
         Close;
         mShowMessage('删除成功！');
         Getdate(1);
       except
         on e:Exception do
          mShowMessage('删除失败！'+e.Message);
       end;
     end;
   end;

 end;
end;

procedure TKhXxForm.AdvGlowButton1Click(Sender: TObject);
begin
     AdvPreviewDialog1.Execute;
end;

procedure TKhXxForm.AdvGlowButton2Click(Sender: TObject);
begin
  if Data1.UniStoredProc1.RecordCount<>0 then
  begin
//    if ((sel=True) or (sell=True) or (selll=True)) then
//    begin
//      if sel=True then
//      begin
//        Form25.Edit1.Text:=Data1.UniStoredProc1.FieldByName('客户条码').AsString;
//         Form25.combobox1.Text:=Data1.UniStoredProc1.FieldByName('客户名称').AsString;
//        Close;
//        Exit;
//      end;
//
//      if sell=True then  begin
//        Form27.Edit1.Text:=Data1.UniStoredProc1.FieldByName('客户条码').AsString;
//        Form27.combobox1.Text:=Data1.UniStoredProc1.FieldByName('客户名称').AsString;
//        Close;
//        Exit;
//      end ;
//      if selll=True then  begin
//        Form88.Edit3.Text:=Data1.UniStoredProc1.FieldByName('客户条码').AsString;
//        Form88.Edit4.Text:=Data1.UniStoredProc1.FieldByName('客户名称').AsString;
//        Form88.Edit5.Text:=Data1.UniStoredProc1.FieldByName('门店编号').AsString;
//        Form88.Edit6.Text:=Data1.UniStoredProc1.FieldByName('客户地址').AsString;
//        Form88.Edit7.Text:=Data1.UniStoredProc1.FieldByName('手机号码').AsString; //Data1.UniStoredProc1.FieldByName('联系电话').AsString+','+
//        Close;
//        Exit;
//      end ;
//    end
//    else
//    begin
       yy:=false;
       KhEditForm.ShowModal;
//    end;

  end;
end;

procedure TKhXxForm.AdvGlowButton3Click(Sender: TObject);
begin
   yy:=true;
  // Form12.ShowModal;
end;

procedure TKhXxForm.AdvGlowButton4Click(Sender: TObject);
var
  sbo:Boolean;
  str:string;
begin
   if Edit1.Text<>'' then
   begin
     case   ComboBox2.ItemIndex of
        0:sbo:=True;
        1:sbo:=False;
     end;
     case ComboBox1.ItemIndex of
      4: begin
        if sbo=true then  str:='  a.sqg='''+edit1.Text+''''
        else  str:='   a.sqg like ''%'+edit1.text+'%''';
      end;
      3: begin
        if sbo=true then  str:='  a.barcode='''+edit1.Text+''''
        else  str:='   a.barcode like ''%'+edit1.text+'%''';
      end;
       2: begin
        if sbo=True then  str:='  a.namec='''+edit1.Text+''''
        else  str:=' a.namec like ''%'+edit1.text+'%''';
      end;
      1: begin                                              //or (a.fax='''+edit1.Text+''')
        if sbo=True then  str:='  ((a.tel='''+edit1.Text+''') or (a.contact='''+edit1.Text+''')) '
        else  str:=' ((a.tel like ''%'+edit1.text+'%'') or (a.contact like ''%'+edit1.text+'%''))';
      end;
      0: begin
        if sbo=True then  str:='   a.hynumber='''+edit1.Text+''''
        else  str:='  a.hynumber like ''%'+edit1.text+'%''';
      end;
     end;
       wherestr:=str;
       Getdate(1);
   end
   else
     mShowMessage('请输入查询数据后查询!');
end;

procedure TKhXxForm.AdvGlowButton5Click(Sender: TObject);
var
id:string;
begin

  if Data1.UniStoredProc1.RecordCount<>0 then
   begin
     id:=Data1.UniStoredProc1.FieldByName('客户条码').AsString;
   //  AdvSmoothMessageDialog1.Caption:=form2.Caption;
       AdvSmoothMessageDialog1.HTMLText.Text:='确认要删除数据吗？';
      if (IDYES = Application.MessageBox(PWideChar('确认要删除数据吗？删除后无法恢复！'), pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
     begin
      // Data1.ds21.Close;
       try
        Data1.ds1.Close;
        Data1.ds1.SQL.Text:='delete  from tbCustomer_Info where barcode='''+id+'''';
        Data1.ds1.Execute;
        mShowMessage('数据已经成功删除,重读记录刷新数据！');
      // Data1.ds21.Open;
       except
          on e:Exception do
          mShowMessage('删除失败！'+e.Message);
       end;
       Data1.ds1.Close;

       end;
      end;

end;



procedure TKhXxForm.AdvGlowButton6Click(Sender: TObject);
begin
    //close;
end;

procedure TKhXxForm.AdvGlowButton7Click(Sender: TObject);
begin
      begintime:=datetostr(strtodate(IntToStr(YearOf(Date))+'-'+inttostr(MonthOf(Date))+'-01'));
      endtime:=gettime;
      wherestr:='a.CreateDate>='''+begintime+''' and a.CreateDate<='''+endtime+'''';
      Getdate(1);
end;

procedure TKhXxForm.AdvGlowButton8Click(Sender: TObject);
begin
   wherestr:='Customer_ID=''1''';
   Getdate(1);
   DBAdvGrid1.PopupMenu:=PopupMenu1;
end;

procedure TKhXxForm.AdvOfficePage3Show(Sender: TObject);
begin
  selectstr:=' a.psid as 门店编号,b.comname as 所属门店,a.barcode as 客户条码,a.namec as 客户名称,a.hynumber as 会员卡号,a.fjf as 积分,a.fje as 消费金额,A.tel as 手机号码,a.yhdjname as 优惠等级,a.contact as 联系电话,c.type_name as 类型,d.namec as 区域,e.namec as 街道,a.address as 客户地址,a.SendPeriod as 楼层,'+
    ' a.bayday as 身份证号,a.kfsn as 押金单号,a.gpstype as 钢瓶类型,c.type_name as 类型,a.typec as 类型编号,a.CreateDate as 登记日期,a.CreateUser as 登记人,a.UpdateDate as 修改日期,a.UpdateUser as 修改人,'+  //case when a.yj=1 then ''是'' else ''否'' end as 月结客户,
    ' a.Remark as 备注'; //,a.qyid as 区域id,a.jdid as 街道id
  fromstr:='tbCustomer_Info a left join tCompany b on a.psid=b.pid left join tbCustomer_type c on a.typec=c.type_id left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id) ';
  AdvGlowButton17.Visible :=False;
end;

procedure TKhXxForm.AdvOfficePager11Show(Sender: TObject);
begin
//    selectstr:='a.psid as 门店编号,b.shopname as 所属门店,a.barcode as 客户条码,a.namec as 客户名称,a.hynumber as 会员卡号,A.tel as 手机号码,c.type_name as 类型,a.typec as 类型编号,d.namec as 区域,e.namec as 街道,a.address as 客户地址,a.SendPeriod as 楼层,'+
//     ' a.contact as 联系电话,a.bayday as 身份证号,a.sqg as 送气工,a.ywy as 业务员,a.kfsn as 押金单号,a.gpstype as 钢瓶类型,a.CreateDate as 登记日期,a.CreateUser as 登记人,case when a.yj=1 then ''是'' else ''否'' end as 月结客户,'+
//     ' a.Remark as 备注,a.UpdateDate as 修改日期,a.UpdateUser as 修改人,a.qyid as 区域id,a.jdid as 街道id ';
   selectstr:='a.psid as 门店编号,b.comname as 所属门店,a.barcode as 客户条码,a.namec as 客户名称,a.hynumber as 会员卡号,A.tel as 手机号码,a.yhdjname as 优惠等级,g.optdate as 最近订气时间,c.type_name as 类型,a.typec as 类型编号,d.namec as 区域,e.namec as 街道,a.address as 客户地址,a.SendPeriod as 楼层,'+
    ' a.contact as 联系电话,a.bayday as 身份证号,a.sqg as 送气工,a.ywy as 业务员,a.kfsn as 押金单号,a.gpstype as 钢瓶类型,a.CreateDate as 登记日期,a.CreateUser as 登记人,a.Remark as 备注,case when a.yj=1 then ''是'' else ''否'' end as 月结客户,'+ //case when a.yj=1 then ''是'' else ''否'' end as 月结客户,
    ' a.UpdateDate as 修改日期,a.UpdateUser as 修改人,case when ajdate is NULL then ''未安检'' else ''已安检'' end as 是否安检 ,a.qyid as 区域id,a.jdid as 街道id'; //,a.qyid as 区域id,a.jdid as 街道id
   fromstr:='tbCustomer_Info a left join tCompany b on a.psid=b.id left join tbCustomer_type c on a.typec=c.type_id left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id) '+
    ' left join (select CONVERT(VARCHAR(24), MAX(optdate),120) as optdate,corpid from tbisent group by corpid ) g on a.BarCode=g.corpid';
   // if Power[0] then AdvGlowButton17.Visible :=True;
end;

procedure TKhXxForm.AdvOfficePager12Show(Sender: TObject);
begin
    DateTimePicker2.Date:=Date;
   // if Power[0] then AdvGlowButton17.Visible :=True;
//    selectstr:='a.psid as 门店编号,b.shopname as 所属门店,a.barcode as 客户条码,a.namec as 客户名称,a.hynumber as 会员卡号,A.tel as 手机号码,c.type_name as 类型,a.typec as 类型编号,d.namec as 区域,e.namec as 街道,a.address as 客户地址,a.SendPeriod as 楼层,'+
//     ' a.contact as 联系电话,a.bayday as 身份证号,a.sqg as 送气工,a.ywy as 业务员,a.kfsn as 押金单号,a.gpstype as 钢瓶类型,a.CreateDate as 登记日期,a.CreateUser as 登记人,case when a.yj=1 then ''是'' else ''否'' end as 月结客户,'+
//     'a.Remark as 备注,a.UpdateDate as 修改日期,a.UpdateUser as 修改人,a.qyid as 区域id,a.jdid as 街道id ';
   selectstr:='a.psid as 门店编号,b.comname as 所属门店,a.barcode as 客户条码,a.namec as 客户名称,a.hynumber as 会员卡号,A.tel as 手机号码,a.yhdjname as 优惠等级,c.type_name as 类型,a.typec as 类型编号,d.namec as 区域,e.namec as 街道,a.address as 客户地址,a.SendPeriod as 楼层,'+
    ' a.contact as 联系电话,a.bayday as 身份证号,a.sqg as 送气工,a.ywy as 业务员,a.kfsn as 押金单号,a.gpstype as 钢瓶类型,a.CreateDate as 登记日期,a.CreateUser as 登记人,a.Remark as 备注,case when a.yj=1 then ''是'' else ''否'' end as 月结客户,'+ //case when a.yj=1 then ''是'' else ''否'' end as 月结客户,
    ' a.UpdateDate as 修改日期,a.UpdateUser as 修改人,case when ajdate is NULL then ''未安检'' else ''已安检'' end as 是否安检 ,a.qyid as 区域id,a.jdid as 街道id'; //,a.qyid as 区域id,a.jdid as 街道id
   fromstr:='tbCustomer_Info a left join tCompany b on a.psid=b.id left join tbCustomer_type c on a.typec=c.type_id left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id) ';
end;

procedure TKhXxForm.AdvOfficePager22Exit(Sender: TObject);
begin
         Data1.cc1.Close;
end;

procedure TKhXxForm.AdvOfficePager22Show(Sender: TObject);
begin
    try
    if DBEdit1.Text='' then    Exit;

//     id:=Data1.UniStoredProc1.FieldByName('客户条码').AsString;
    Data1.cc1.Close;
    Data1.cc1.SQL.Text:='select top 10 a.optdate as 订气时间,a.empname as 送气工,case when a.status=''0'' then ''未派工'' else ''已完成'' end as 状态,b.pricename as 商品,b.dj as 单价,sum(b.sl) as 数量,sum(b.smoney) as 送气费,sum(b.yfmoney) as 优惠,sum( b.money) as 合计 from '+
          ' tbisent a left join tbisentprice b on a.bisentid=b.bisentid where a.corpid='''+DBEdit1.Text+''' group by a.optdate,a.empname,b.pricename,b.dj,b.sl,b.money,b.yfmoney,b.smoney,a.status ORDER BY a.optdate DESC ';
    Data1.cc1.Open;
    except

    end;
end;

procedure TKhXxForm.c1Click(Sender: TObject);
begin
  with Data1.ClientDataSet3 do
  begin
    Close;
    SQL.Text:='delete from tbCustomer_Info  where BarCode='''+Dbedit1.Text+''' ';
    try
      ExecSQL;
      Getdate(1);
      DBAdvGrid1.PopupMenu:=PopupMenu1;
    except

    end;

  end;
end;

procedure TKhXxForm.cbbPageSizeboxChange(Sender: TObject);
begin
   if cbbPageSizebox.ItemIndex=-1 then  Exit;
   Getdate(1);
end;

procedure TKhXxForm.DBAdvGrid1Click(Sender: TObject);
var
id:string;
begin
//     if ((sel=True) or (sell=True) or (selll=True) or (AdvOfficePager22.Showing=false)) then
//     begin
//       Exit;
//     end;
      try
       id:=Data1.UniStoredProc1.FieldByName('客户条码').AsString;
       Data1.cc1.Close;
       Data1.cc1.SQL.Text:='select top 10 a.optdate as 订气时间,a.empname as 送气工,case when a.status=''0'' then ''未派工'' else ''已完成'' end as 状态,b.pricename as 商品,b.dj as 单价,sum(b.sl) as 数量,sum(b.smoney) as 送气费,sum(b.yfmoney) as 优惠,sum( b.money) as 合计 from '+
          ' tbisent a left join tbisentprice b on a.bisentid=b.bisentid where a.corpid='''+id+''' group by a.optdate,a.empname,b.pricename,b.dj,b.sl,b.money,b.yfmoney,b.smoney,a.status ORDER BY a.optdate DESC ';
       Data1.cc1.Open;

      except

      end;
end;

procedure TKhXxForm.DBAdvGrid1Resize(Sender: TObject);
begin
        DBAdvGrid1.AutoSizeColumns(False,5); //根据内容调节列宽
end;

procedure TKhXxForm.DBAdvGrid2Resize(Sender: TObject);
begin
      DBAdvGrid2.AutoSizeColumns(False,5); //根据内容调节列宽
end;

procedure TKhXxForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then   AdvGlowButton4.Click;

end;

procedure TKhXxForm.edt1KeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in['0'..'9',#8,#13]) then
    key:=#0;

end;

procedure TKhXxForm.FillTreeView(TreeView: TTreeView);
  procedure CreateSubTree(FNodeName: string; Node: TTreeNode = nil);
   begin
     Data1.ClientDataSet2.Close;
     Data1.ClientDataSet2.SQL.Text:='Select comName from tCompany Where type =3 ORDER BY id' ;
     Data1.ClientDataSet2.Open;
     Data1.ClientDataSet2.First;
      while not Data1.ClientDataSet2.Eof do
      begin
        TreeView.Items.AddChild(Node,Data1.ClientDataSet2.FieldByName('comName').AsString);
        Data1.ClientDataSet2.Next;
      end;
      Data1.ClientDataSet2.Close;
    end;
begin
  TreeView.Items.BeginUpdate;
  TreeView.Items.Clear;
  with TreeView.Items.Add(nil, '所有门店') do
  begin
    ImageIndex := 0;
    SelectedIndex := 1;
  end;
  CreateSubTree('0', TreeView.Items[0]);
  TreeView.Items.EndUpdate;
  if TreeView.Items.Count>1 then
  TreeView.Items[1].Selected := True;
end;

procedure TKhXxForm.FillTreeView2(TreeView: TTreeView);
  procedure CreateSubTree(FNodeName: string; Node: TTreeNode = nil);
  begin
    Data1.ClientDataSet2.Close;
     Data1.ClientDataSet2.SQL.Text:='Select type_Name from tbCustomer_Type  ORDER BY type_id' ;
     Data1.ClientDataSet2.Open;
     Data1.ClientDataSet2.First;
      while not Data1.ClientDataSet2.Eof do
      begin
        TreeView.Items.AddChild(Node,Data1.ClientDataSet2.FieldByName('type_Name').AsString);
        Data1.ClientDataSet2.Next;
      end;
      Data1.ClientDataSet2.Close;
    end;
begin
  TreeView.Items.BeginUpdate;
  TreeView.Items.Clear;
  with TreeView.Items.Add(nil, '所有类型') do
  begin
    ImageIndex := 0;
    SelectedIndex := 1;
  end;
  CreateSubTree('0', TreeView.Items[0]);
  TreeView.Items.EndUpdate;
  if TreeView.Items.Count>1 then
  TreeView.Items[1].Selected := True;
end;

procedure TKhXxForm.FillTreeView3(TreeView: TTreeView);
  procedure CreateSubTree(FNodeName: string; Node: TTreeNode = nil);
  begin
    Data1.ClientDataSet2.Close;
     Data1.ClientDataSet2.SQL.Text:='Select namec from tbkh_qy  ORDER BY id' ;
     Data1.ClientDataSet2.Open;
     Data1.ClientDataSet2.First;
      while not Data1.ClientDataSet2.Eof do
      begin
        TreeView.Items.AddChild(Node,Data1.ClientDataSet2.FieldByName('namec').AsString);
        Data1.ClientDataSet2.Next;
      end;
      Data1.ClientDataSet2.Close;
    end;
begin
  TreeView.Items.BeginUpdate;
  TreeView.Items.Clear;
  with TreeView.Items.Add(nil, '所有区域') do
  begin
    ImageIndex := 0;
    SelectedIndex := 1;
  end;
  CreateSubTree('0', TreeView.Items[0]);
  TreeView.Items.EndUpdate;
  if TreeView.Items.Count>1 then
  TreeView.Items[1].Selected := True;
end;



procedure TKhXxForm.Getdate(pages:Integer);
var
  i:Integer;
  whereadd:string;
begin
 try
   whereadd := wherestr;
   if AdvOfficePager11.Showing then
   begin
       if ComboBox3.ItemIndex=2 then
       begin
        if whereadd='' then whereadd :=' a.ajdate is null ' else whereadd := whereadd+' and a.ajdate is null';
       end;
       if ComboBox3.ItemIndex=1 then
       begin
         if whereadd='' then whereadd :=' a.ajdate<>'''' ' else whereadd := whereadd+' and a.ajdate<>'''' ';
       end;
       if Edit4.Text<>'' then
       begin
         if whereadd='' then whereadd :=' (g.optdate<='''+FormatDateTime('yyyy-mm-dd' ,Now-strtoint(Edit4.Text))+''' or g.optdate is NULL) ' else  whereadd := whereadd+' and (g.optdate<='''+FormatDateTime('yyyy-mm-dd' ,Now-strtoint(Edit4.Text))+''' or g.optdate is NULL) ';
       end;
   end;
   with  data1.UniStoredProc1 do
   begin
     Close;
     Params.ParamByName('PageSize').Value :=StrToInt((cbbPageSizebox.Text));   // 每页记录数
     Params.ParamByName('PageCurrent').Value :=pages; //当前页
     Params.ParamByName('FdName').Value := FdName;       //主键
     Params.ParamByName('Selectstr').Value:= SelectStr;
     Params.ParamByName('Fromstr').Value:=FromStr  ;
     Params.ParamByName('WhereStr').Value:=whereadd;
     Params.ParamByName('OrderbyStr').Value:=OrderbyStr;
     Open;
     i:=Params.ParamValues['CountRows'];
     Pagecount:=Params.ParamValues['CountPage'];
   end;
   except

   end;
 Pagecurrent:=pages;
 Label23.Caption:=Format('共 %D 条记录',[i]);
 Label24.Caption:=Format('/ %D页 ',[pagecount]);
 label25.Caption:=Format('%D',[pages]);
 SelPageBox.Items.Clear;
 for I := 1 to Pagecount do
   SelPageBox.Items.Add('第'+IntToStr(i)+'页');
   DBAdvGrid1.PopupMenu:=PopupMenu;
end;

procedure TKhXxForm.Label26Click(Sender: TObject);
begin
     if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   Getdate(1);
end;

procedure TKhXxForm.Label27Click(Sender: TObject);
begin
      if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    Getdate(Pagecurrent-1);
end;

procedure TKhXxForm.Label28Click(Sender: TObject);
begin
    if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   Getdate(Pagecurrent+1);
end;

procedure TKhXxForm.Label29Click(Sender: TObject);
begin
    if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    Getdate(Pagecount);
end;

procedure TKhXxForm.N1Click(Sender: TObject);
begin
  with Data1.ClientDataSet3 do
  begin
    Close;
    SQL.Text:='update tbCustomer_Info set Customer_ID=''0'' where BarCode='''+Dbedit1.Text+''' ';
    try
      ExecSQL;
      Getdate(1);
      DBAdvGrid1.PopupMenu:=PopupMenu1;
    except

    end;

  end;
end;

procedure TKhXxForm.TreeView1Click(Sender: TObject);
  var
  str:string;

begin
     if TreeView1.Selected.Level<1 then
     begin
       wherestr:='';
       Getdate(1);
     end
     else
     begin
        wherestr:='b.comname='''+TreeView1.Items[TreeView1.Selected.Index+1].Text+'''';
        Getdate(1);
//        exit;
//        Data1.ClientDataSet2.Close;
//        Data1.ClientDataSet2.SQL.Text:='Select id from tCompany Where comname='''+TreeView1.Items[TreeView1.Selected.Index+1].Text+'''' ;
//        Data1.ClientDataSet2.Open;
//        if not Data1.ClientDataSet2.IsEmpty then
//        begin
//          str:=Data1.ClientDataSet2.FieldByName('id').AsString;
//          Data1.ClientDataSet2.Close;
//          wherestr:='a.psid='''+str+'''';
//          Getdate(1);
//        end;
     end;

end;

procedure TKhXxForm.TreeView2Click(Sender: TObject);
var
  str:string;
begin
    if TreeView2.Selected.Level<1 then
     begin
         wherestr:='';
         Getdate(1);
     end
      else
       begin
        Data1.ClientDataSet2.Close;
        Data1.ClientDataSet2.SQL.Text:='Select type_id from tbCustomer_Type Where type_name='''+TreeView2.Items[TreeView2.Selected.Index+1].Text+'''' ;
        Data1.ClientDataSet2.Open;
        if not Data1.ClientDataSet2.IsEmpty then
        begin
         str:=Data1.ClientDataSet2.FieldByName('type_id').AsString;
         Data1.ClientDataSet2.Close;
         wherestr:='a.typec='''+str+'''';
         Getdate(1);
        end;
       end;

end;

procedure TKhXxForm.tv1Click(Sender: TObject);
begin
  if tv1.Selected.Level<1 then
     begin
         wherestr:='';
         Getdate(1);
     end
      else
       begin
        Data1.ClientDataSet2.Close;
        Data1.ClientDataSet2.SQL.Text:='Select id from tbkh_qy Where namec='''+tv1.Items[tv1.Selected.Index+1].Text+'''' ;
        Data1.ClientDataSet2.Open;
        if not Data1.ClientDataSet2.IsEmpty then
        begin
         wherestr:='a.qyid='''+Data1.ClientDataSet2.FieldByName('id').AsString+'''';
         Data1.ClientDataSet2.Close;
         Getdate(1);
        end;
       end;
end;

procedure TKhXxForm.tv2Click(Sender: TObject);
begin
  if tv2.Selected.Level<1 then
     begin
         wherestr:='a.hynumber<>'''' ';
         Getdate(1);
     end
  else
  begin
   wherestr:='a.hynumber<>'''' and b.comname='''+tv2.Items[tv2.Selected.Index+1].Text+'''';
   Getdate(1);
//        Data1.ClientDataSet2.Close;
//        Data1.ClientDataSet2.SQL.Text:='Select shopid from tshop Where shopname='''+tv2.Items[tv2.Selected.Index+1].Text+'''' ;
//        Data1.ClientDataSet2.Open;
//        if not Data1.ClientDataSet2.IsEmpty then
//        begin
//         wherestr:='a.hynumber<>'''' and a.psid='''+Data1.ClientDataSet2.FieldByName('shopid').AsString+'''';
////         ShowMessage(wherestr);
//         Data1.ClientDataSet2.Close;
//         Getdate(1);
//        end;
  end;
end;

procedure TKhXxForm.tv3Click(Sender: TObject);
begin
  if tv3.Selected.Level<1 then
     begin
         wherestr:='a.hynumber<>'''' ';
         Getdate(1);
     end
      else
       begin
        Data1.ClientDataSet2.Close;
        Data1.ClientDataSet2.SQL.Text:='Select id from tbkh_qy Where namec='''+tv3.Items[tv3.Selected.Index+1].Text+'''' ;
        Data1.ClientDataSet2.Open;
        if not Data1.ClientDataSet2.IsEmpty then
        begin
         wherestr:='a.hynumber<>'''' and a.qyid='''+Data1.ClientDataSet2.FieldByName('id').AsString+'''';
         Data1.ClientDataSet2.Close;
         Getdate(1);
        end;
       end;
end;

procedure TKhXxForm.UniFrameCreate(Sender: TObject);
begin
     fdname:='a.id';                                                       //a.grade as 押金,
    selectstr:='a.psid as 门店编号,b.comname as 所属门店,a.barcode as 客户条码,a.namec as 客户名称,a.hynumber as 会员卡号,A.tel as 手机号码,a.yhdjname as 优惠等级,g.optdate as 最近订气时间,c.type_name as 类型,a.typec as 类型编号,d.namec as 区域,e.namec as 街道,a.address as 客户地址,a.SendPeriod as 楼层,'+
    ' a.contact as 联系电话,a.bayday as 身份证号,a.sqg as 送气工,a.ywy as 业务员,a.kfsn as 押金单号,a.gpstype as 钢瓶类型,a.CreateDate as 登记日期,a.CreateUser as 登记人,a.Remark as 备注,case when a.yj=1 then ''是'' else ''否'' end as 月结客户,'+ //case when a.yj=1 then ''是'' else ''否'' end as 月结客户,
    ' a.UpdateDate as 修改日期,a.UpdateUser as 修改人,case when ajdate is NULL then ''未安检'' else ''已安检'' end as 是否安检 ,a.qyid as 区域id,a.jdid as 街道id'; //,a.qyid as 区域id,a.jdid as 街道id
    fromstr:='tbCustomer_Info a left join tCompany b on a.psid=b.id left join tbCustomer_type c on a.typec=c.type_id left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id) '+
    ' left join (select CONVERT(VARCHAR(24), MAX(optdate),120) as optdate,corpid from tbisent group by corpid ) g on a.BarCode=g.corpid';
    orderbystr:='a.barcode';
    yy:=False;
    edt1.Clear;
    edt2.Clear;
    FillTreeView(TreeView1);
    FillTreeView2(TreeView2);
    FillTreeView(tv2);
    FillTreeView3(tv1);
    FillTreeView3(tv3);
   
//    DBAdvGrid1.SetStyle(gsOffice2007Luna);
//    DBAdvGrid2.SetStyle(gsOffice2007Luna);
end;

procedure TKhXxForm.UniFrameDestroy(Sender: TObject);
begin
    data1.UniStoredProc1.Close;
    Data1.cc1.Close;
end;

end.
