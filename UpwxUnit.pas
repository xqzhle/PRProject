unit UpwxUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses,dxRibbonForm ,dxRibbon,
  StdCtrls, AdvGlowButton, ImgList,AdvSmoothMessageDialog,AdvStyleIF,
   AdvOfficeButtons, ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TUpwxForm = class(TdxRibbonForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    ImageList3: TImageList;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    Label13: TLabel;
    Edit11: TEdit;
    Label14: TLabel;
    Edit12: TEdit;
    Label15: TLabel;
    ComboBox2: TComboBox;
    Label16: TLabel;
    Edit13: TEdit;
    Label17: TLabel;
    AdvOfficeCheckBox1: TAdvOfficeCheckBox;
    edt1: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    lbl1: TLabel;
    cbb3: TComboBox;
    cbb4: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    Edit10: TEdit;
    Label12: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Label18: TLabel;
    ComboBox3: TComboBox;
    Label19: TLabel;
    ComboBox4: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cbb2Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpwxForm: TUpwxForm;

implementation

uses DbUnit,WxUnit,CallCentUnit;

{$R *.dfm}


procedure TUpwxForm.AdvGlowButton1Click(Sender: TObject);
var
sqlstr,yj:string;
begin
   if AdvGlowButton1.Caption='保存' then
   begin
       if (Edit3.Text='') or (Edit5.Text='') or (Edit13.Text='') or (Edit12.Text='') or (Edit1.Text='')  or (Edit11.Text='')  then
        begin
          ShowSmoothMessage('请输入完整信息',tsOffice2007Luna);
          Exit;
        end;
        if (cbb3.Text='') or (cbb4.Text='') then
        begin
          ShowSmoothMessage('请选择区域街道',tsOffice2007Luna);
          Exit;
        end;
        if (edt1.Text<>'') and (Length(edt1.Text)<>10)  then
        begin
          ShowSmoothMessage('会员卡号必须为10位！');
          Exit;
        end;
       Data1.ds1.Close;
       Data1.ds1.sql.Text:='select id from tbCustomer_Info where tel='''+edit5.Text+''' and barcode<>'''+edit2.text+''' ';
       Data1.ds1.Open;
       if not Data1.ds1.IsEmpty then
       begin
         ShowSmoothMessage('已存在联系电话:'+edit5.text+'的信息',tsOffice2007Luna);
         Exit;
       end;
       if edt1.Text<>'' then
       begin
         Data1.ds1.Close;
         Data1.ds1.sql.Text:='select id from tbCustomer_Info where ywy='''+edt1.Text+''' and barcode<>'''+edit2.text+''' ';
         Data1.ds1.Open;
         if not Data1.ds1.IsEmpty then
         begin
           ShowSmoothMessage('已存在会员卡号:'+edt1.text+'的信息',tsOffice2007Luna);
           Exit;
         end;
       end;
       if AdvOfficeCheckBox1.Checked then
       yj:='1'    else yj:='0';
       sqlstr:='update tbCustomer_Info set psid='''+edit1.Text+''',namec='''+edit3.Text+''',contact='''+edit4.Text+''',tel='''+edit5.Text+''', '+
       ' SendPeriod='''+edit11.Text+''',typec='''+edit13.Text+''',address='''+edit12.Text+''',hynumber='''+edt1.Text+''',sqg='''+combobox3.Text+''',ywy='''+combobox4.Text+''',qyid='''+cbb3.Text+''','+
       ' jdid='''+cbb4.Text+''',grade=0,bayday='''+edit6.Text+''',kfsn='''+edit7.Text+''',yj='''+yj+''',Customer_ID=0 where barcode='''+edit2.Text+''' ';
    try
      Data1.ds1.Close;
      Data1.ds1.sql.Text:=sqlstr;
      Data1.ds1.Execute;
      callcentform.Edit5.Text:=Edit5.Text;
//      sqlstr:='select a.id as id,a.fmoney as fmoney,a.namec as namec,a.tel as tel,a.Address as Address,a.fax as fax,a.contact as contact,a.ywy as ywy,a.hynumber as hynumber,a.sqg as sqg,a.SendPeriod as SendPeriod,a.Remark as Remark,'+
//      ' a.CreateDate as CreateDate,a.psid as psid,a.Grade as Grade,a.TypeC as TypeC,b.shopname as shopname,a.qyid as qyid,a.jdid as jdid,d.namec as qyname,e.namec as jdname, '+
//      ' c.Type_Name as typename,a.BarCode as barcode,a.bayday as bayday,a.kfsn as kfsn,a.gpstype as gpstype '+
//      ' from tbCustomer_Info a left join tshop b on (a.psid=b.shopid) left join tbCustomer_Type c on (a.TypeC=c.Type_ID) left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id) ';
//      Data1.ClientDataSet3.Close;
//      Data1.ClientDataSet3.sql.Text:=sqlstr+' where a.barcode='''+edit2.Text+'''';
//      Data1.ClientDataSet3.Open;
//      Form1.Edit2.Text:=Data1.ClientDataSet3.FieldByName('psid').AsString;
//      Form1.Edit3.Text:=Data1.ClientDataSet3.FieldByName('TypeC').AsString;
//      Form1.DBComboBox1.Text:=Data1.ClientDataSet3.FieldByName('typename').AsString;
//      Form1.DBComboBox2.Text:=Data1.ClientDataSet3.FieldByName('shopname').AsString;
//      Form1.cbb3.Text:=Data1.ClientDataSet3.FieldByName('qyid').AsString;
//       Form1.cbb1.Text:=Data1.ClientDataSet3.FieldByName('qyname').AsString;
//       Form1.cbb4.Text:=Data1.ClientDataSet3.FieldByName('jdid').AsString;
//       Form1.cbb2.Text:=Data1.ClientDataSet3.FieldByName('jdname').AsString;
//       form1.ComboBox6.Text:= Data1.ClientDataSet3.FieldByName('gpstype').AsString;
//       form1.ComboBox9.Text:= Data1.ClientDataSet3.FieldByName('sqg').AsString;
//       form1.ComboBox8.Text:= Data1.ClientDataSet3.FieldByName('ywy').AsString;
       if GroupBox2.Visible=True then
       begin
         Data1.ds1.Close;
         Data1.ds1.sql.Text:='update tbisent set shopid='''+edit1.Text+''',shopname='''+combobox1.Text+''',empname='''+combobox3.Text+''',ywy='''+combobox4.Text+''','+
         ' corpname='''+edit3.Text+''',hynumber='''+edt1.Text+''',address='''+edit12.Text+''',tel='''+edit5.Text+''',Floor='''+edit11.Text+''' where bisentid='''+edit15.Text+''' ';
         Data1.ds1.Execute;
       end;
       Data1.ds1.Close;
       data1.UniQuery2.Close;
       data1.UniQuery2.open;
      ShowSmoothMessage('客户修改成功！',tsOffice2007Luna);
      Close;
    except
       on E:Exception do
       begin
         ShowSmoothMessage(e.Message);
         ShowSmoothMessage('客户修改失败！请检查',tsOffice2007Luna);
//         Close;
       end;
    end;
      Data1.ds1.Close;
  end;
end;

procedure TUpwxForm.AdvGlowButton6Click(Sender: TObject);
begin
       Close;
end;

procedure TUpwxForm.cbb1Change(Sender: TObject);
begin
  cbb3.ItemIndex:=cbb1.ItemIndex;
    cbb2.Items.Clear;
    cbb4.Items.Clear;
    Data1.ds1.SQL.Text:='select id,namec from tbkh_jd  where qyid='''+cbb3.text+''' ';
    Data1.ds1.Open;
    while not Data1.ds1.eof do
    begin
      cbb2.Items.Add(Data1.ds1.FieldByName('namec').AsString);
      cbb4.Items.Add(Data1.ds1.FieldByName('id').AsString);
      Data1.ds1.Next;
    end;
    Data1.ds1.Close;
end;

procedure TUpwxForm.cbb2Click(Sender: TObject);
begin
  cbb4.ItemIndex:=cbb2.ItemIndex;
end;

procedure TUpwxForm.ComboBox1Click(Sender: TObject);
begin
    Data1.ds1.Close;
    Data1.ds1.SQL.Text:='select shopid from tshop where shopname='''+combobox1.Text+'''';
    Data1.ds1.Open;
    if not Data1.ds1.IsEmpty then
    begin
       Edit1.Text:=Data1.ds1.FieldByName('shopid').AsString;
       ComboBox3.Clear;
       Data1.ds1.Close;
       Data1.ds1.SQL.Text:='select EmpName from tAchEmployee where shopid='''+Edit1.Text+''' ';
       Data1.ds1.Open;
       if not Data1.ds1.IsEmpty then
       begin
         while not Data1.ds1.Eof do
         begin
           ComboBox3.Items.Add(Data1.ds1.FieldByName('EmpName').AsString);
           Data1.ds1.Next;
         end;
       end;
    end;
    Data1.ds1.Close;
end;

procedure TUpwxForm.ComboBox2Click(Sender: TObject);
begin
     Data1.ds1.Close;
     Data1.ds1.sql.Text:='select type_id from tbCustomer_type where type_name='''+combobox2.Text+'''';
     Data1.ds1.Open;
      if not Data1.ds1.IsEmpty then
     begin
       Edit13.Text:=Data1.ds1.FieldByName('type_id').AsString;
     end;
     Data1.ds1.Close;
end;

procedure TUpwxForm.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then
    key:=#0;
end;

procedure TUpwxForm.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then
    key:=#0;
end;

procedure TUpwxForm.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then
    key:=#0;
end;

procedure TUpwxForm.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then
    key:=#0;
end;

procedure TUpwxForm.FormCreate(Sender: TObject);
begin
     Data1.sds111.Close;
     cbb1.Items.Clear;
     cbb3.Items.Clear;
     Data1.sds111.SQL.Text:='select id,namec from tbkh_qy ';// where name like'+''''+'%气'+'''';
     Data1.sds111.Open;
     while not Data1.sds111.eof do
     begin
         cbb1.Items.Add(Data1.sds111.FieldByName('namec').AsString);
         cbb3.Items.Add(Data1.sds111.FieldByName('id').AsString);
         Data1.sds111.Next;
     end;
     Data1.sds111.Close;
          Data1.ds1.Close;
     Data1.ds1.sql.Text:='select shopname from tshop where shopid<>0';
     Data1.ds1.Open;
     ComboBox1.Items.Clear;
     if not Data1.ds1.IsEmpty then
     begin
       while not Data1.ds1.Eof do
        begin
           ComboBox1.Items.Add(Data1.ds1.FieldByName('shopname').AsString);
           Data1.ds1.Next;
        end;
     end;
     Data1.ds1.Close;
     Data1.ds1.sql.Text:='select type_name from tbCustomer_type';
     Data1.ds1.Open;
     ComboBox2.Items.Clear;
     if not Data1.ds1.IsEmpty then
     begin
       while not Data1.ds1.Eof do
        begin
           ComboBox2.Items.Add(Data1.ds1.FieldByName('type_name').AsString);
           Data1.ds1.Next;
        end;
     end;
end;

procedure TUpwxForm.FormShow(Sender: TObject);
begin
  ComboBox4.Items:= CallCentForm.ComboBox8.Items ;
  ComboBox3.Text :='';
  ComboBox4.Text := '';
   with  Data1.ds1 do
   begin
     Close;
     SQL.Text:='select a.hynumber as ywy,a.barcode as barcode,a.namec as namec,a.typec as typec,a.tel as tel,a.Contact as contact,a.SendPeriod as lc,a.address as address,a.CreateDate as CreateDate, '+
       ' a.psid as psid ,b.type_name as type_name,c.shopname as shopname,a.qyid as qyid,a.jdid as jdid,d.namec as qyname,e.namec as jdname,a.bayday as bayday,a.kfsn as kfsn '+
       ' from tbCustomer_info a left join tbCustomer_Type b on a.typec=b.type_id '  +
       ' left join tshop c on a.psid=c.shopid left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id) where a.barcode='''+edit2.Text+''' ';
     Open;
     if not IsEmpty then
     begin
      Edit3.Text:=FieldByName('namec').AsString;
      Edit1.Text:=FieldByName('psid').AsString;
      ComboBox1.Text:=FieldByName('shopname').AsString;
      Edit4.Text:=FieldByName('Contact').AsString;
      Edit5.Text:=FieldByName('tel').AsString;
//      Edit10.Text:=FieldByName('Contact').AsString;
      Edit11.Text:=FieldByName('lc').AsString;
      Edit12.Text:=FieldByName('address').AsString;
      ComboBox2.Text:=FieldByName('type_name').AsString;
      Edit13.Text:=FieldByName('typec').AsString;
      Edit7.Text:=FieldByName('kfsn').AsString;
      Edit6.Text:=FieldByName('bayday').AsString;
//      Memo1.Text:=FieldByName('Contact').AsString;
      edt1.Text:=FieldByName('ywy').AsString;
      cbb1.Text:=FieldByName('qyname').AsString;
      cbb2.Text:=FieldByName('jdname').AsString;
      cbb3.Text:=FieldByName('qyid').AsString;
      cbb4.Text:=FieldByName('jdid').AsString;
     end;
      AdvGlowButton1.Caption:='保存';
      AdvGlowButton1.Enabled:=True;
      Data1.ds1.Close;
   end;

end;

end.
