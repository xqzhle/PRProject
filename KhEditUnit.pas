unit KhEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  StdCtrls, AdvGlowButton, ImgList,AdvSmoothMessageDialog,AdvStyleIF,dxRibbonForm,
  AdvOfficeButtons, dxSkinsCore, dxSkinsDefaultPainters, cxClasses, dxRibbon;

type
  TKhEditForm = class(TForm)
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
    Label9: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Memo1: TMemo;
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
    ComboBox3: TComboBox;
    AdvOfficeRadioButton2: TAdvOfficeRadioButton;
    AdvOfficeRadioButton1: TAdvOfficeRadioButton;
    Label18: TLabel;
    Edit14: TEdit;
    AdvOfficeCheckBox1: TAdvOfficeCheckBox;
    edt1: TEdit;
    lbl1: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    cbb4: TComboBox;
    Edit10: TEdit;
    Label12: TLabel;
    Label19: TLabel;
    Edit15: TEdit;
    ComboBox4: TComboBox;
    Label20: TLabel;
    AdvOfficeCheckBox3: TAdvOfficeCheckBox;
    Label10: TLabel;
    ComboBox5: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure AdvOfficeRadioButton1Click(Sender: TObject);
    procedure AdvOfficeRadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure AdvOfficeCheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KhEditForm: TKhEditForm;

implementation

uses DbUnit, KhXxUnit ,MainUnit, zcomm;

{$R *.dfm}


procedure TKhEditForm.AdvGlowButton1Click(Sender: TObject);
var
sqlstr,yj,yjs:string;
recno:Integer;
begin
  if AdvOfficeRadioButton2.Checked then
     yj:=Edit14.Text else yj:='0';
  if AdvOfficeCheckBox1.Checked then
     yjs:='1' else yjs:='0';
  if yy=false then
  begin
    sqlstr:='update tbCustomer_Info set grade='''+yj+''',ywy='''+edt1.Text+''',psid='''+edit1.Text+''',namec='''+edit3.Text+''',contact='''+edit5.Text+''',tel='''+edit4.Text+''',address='''+edit12.Text+''','+
      'remark='''+memo1.Text+''',SendPeriod='''+edit11.Text+''',typec='''+edit13.Text+''',UpdateUser='''+loginName+''',UpdateDate='''+gettime+''',yj='''+yjs+''','+
      ' bayday='''+edit10.Text+''',kfsn='''+edit15.Text+''',gpstype='''+combobox4.Text+''',qyid='''+cbb3.Text+''',jdid='''+cbb4.Text+''',yhdjname='''+combobox5.Text+''' where barcode='''+edit2.Text+''''  ;
  end
  else
  begin
      if (Edit3.Text='') or (Edit4.Text='') or (Edit13.Text='') or (Edit12.Text='') or (Edit11.Text='')  then
      begin
          ShowSmoothMessage('请输入完整信息',tsOffice2007Luna);
          Exit;
      end;
    if not AdvOfficeCheckBox3.Checked then
    begin
       if Edit2.Text='' then
       begin
         ShowSmoothMessage('请输入客户编号',tsOffice2007Luna);
         Exit;
       end;
       Data1.ds1.Close;
       Data1.ds1.SQL.Text:='select id from tbCustomer_Info where barcode='''+edit2.Text+''' ';
       Data1.ds1.Open;
       if not Data1.ds1.IsEmpty then
       begin
         ShowSmoothMessage('客户编号:'+edit2.Text+'重复',tsOffice2007Luna);
         Exit;
       end;
    end;
    Data1.ds1.Close;
    Data1.ds1.SQL.Text:='select id from tbCustomer_Info where tel='''+edit4.Text+''' or contact='''+edit4.Text+''' ';
    Data1.ds1.Open;
    if not Data1.ds1.IsEmpty then
    begin
         ShowSmoothMessage('已存在手机号码:'+edit4.text+'的信息',tsOffice2007Luna);
         Exit;
    end;
    Data1.ds1.Close;
    Data1.ds1.SQL.Text:='select id from tbCustomer_Info where tel='''+edit5.Text+''' or contact='''+edit5.Text+''' ';
    Data1.ds1.Open;
    if not Data1.ds1.IsEmpty then
    begin
         ShowSmoothMessage('已存在联系号码:'+edit5.text+'的信息',tsOffice2007Luna);
         Exit;
    end;
    Data1.ds1.Close;
    Data1.ds1.SQL.Text:='select id from tbCustomer_Info where ywy='''+edt1.Text+''' ';
    Data1.ds1.Open;
    if not Data1.ds1.IsEmpty then
    begin
         ShowSmoothMessage('已存在会员卡号:'+edt1.text+'的信息',tsOffice2007Luna);
         Exit;
    end;
    if AdvOfficeCheckBox3.Checked then
    begin
     Data1.ds1.Close;
     Data1.ds1.SQL.Text:='select max(barcode) as id from tbCustomer_Info';
     Data1.ds1.Open;
     if Data1.ds1.FieldByName('id').AsString='' then  Edit2.Text:='1000001'
     else Edit2.Text:=IntToStr(Data1.ds1.FieldByName('id').AsInteger+1);
    end;

      sqlstr:='INSERT INTO tbCustomer_Info (barcode,psid,namec,contact,tel,CreateUser,Createdate,remark,SendPeriod,typec,address,ywy,yj,grade,qyid,jdid,bayday,kfsn,gpstype,yhdjname) values '+
       ' ('''+Edit2.Text+''','''+edit1.Text+''','''+edit3.Text+''','''+edit5.Text+''','''+edit4.Text+''','''+edit6.Text+''','''+edit7.Text+''','''+memo1.Text+''','+
       ' '''+edit11.Text+''','''+edit13.Text+''','''+edit12.Text+''','''+edt1.Text+''','''+yjs+''','''+yj+''','''+cbb3.Text+''','''+cbb4.Text+''','''+edit10.Text+''','''+edit15.Text+''','''+combobox4.Text+''','''+combobox5.Text+''')';
  end;
  try
      Data1.ds1.Close;
      Data1.ds1.SQL.Text:=sqlstr;
      Data1.ds1.Execute;
      ShowSmoothMessage('数据保存成功！',tsOffice2007Luna);
      Close;
      data1.UniStoredProc1.Close;
      data1.UniStoredProc1.Open;
  except
         ShowSmoothMessage('数据保存失败！请检查',tsOffice2007Luna);
//         if yy then
//         begin
//           Data1.ds1.Close;
//           Data1.ds1.SQL.Text:='delete from tbCustomer_Info where barcode='''+edit2.Text+''' ';
//           Data1.ds1.ExecSQL;
//         end;
//         Close;
  end;
  Data1.ds1.Close;
end;

procedure TKhEditForm.AdvGlowButton6Click(Sender: TObject);
begin
       Close;
end;

procedure TKhEditForm.AdvOfficeCheckBox3Click(Sender: TObject);
begin
  if AdvOfficeCheckBox3.Checked then Edit2.Enabled:=false
  else Edit2.Enabled:=True;
end;

procedure TKhEditForm.AdvOfficeRadioButton1Click(Sender: TObject);
begin
     if AdvOfficeRadioButton1.Checked then Edit14.Enabled:=False;
end;

procedure TKhEditForm.AdvOfficeRadioButton2Click(Sender: TObject);
begin
      if AdvOfficeRadioButton2.Checked then Edit14.Enabled:=True;
end;

procedure TKhEditForm.cbb1Change(Sender: TObject);
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

procedure TKhEditForm.cbb2Change(Sender: TObject);
begin
  cbb4.ItemIndex:=cbb2.ItemIndex;
end;

procedure TKhEditForm.ComboBox1Click(Sender: TObject);
begin
      Data1.ds1.Close;
     Data1.ds1.SQL.Text:='select id from tCompany where comname='''+combobox1.Text+'''';
     Data1.ds1.Open;
      if not Data1.ds1.IsEmpty then
     begin
       Edit1.Text:=Data1.ds1.FieldByName('id').AsString;
     end;
     Data1.ds1.Close;
end;

procedure TKhEditForm.ComboBox2Click(Sender: TObject);
begin
     Data1.ds1.Close;
     Data1.ds1.SQL.Text:='select type_id from tbCustomer_type where type_name='''+combobox2.Text+'''';
     Data1.ds1.Open;
      if not Data1.ds1.IsEmpty then
     begin
       Edit13.Text:=Data1.ds1.FieldByName('type_id').AsString;
     end;
     Data1.ds1.Close;
end;

procedure TKhEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

      Data1.ds1.Close;
      Data1.ds1.SQL.Text:='delete from tbCustomer_Info where (barcode='''+edit2.Text+''') and (namec is null) ';
      Data1.ds1.Execute;

end;

procedure TKhEditForm.FormCreate(Sender: TObject);
begin
  Data1.ds1.Close;
  cbb1.Items.Clear;
  cbb3.Items.Clear;
  Data1.ds1.SQL.Text:='select id,namec from tbkh_qy ';// where name like'+''''+'%气'+'''';
  Data1.ds1.Open;
  while not Data1.ds1.eof do
  begin
     cbb1.Items.Add(Data1.ds1.FieldByName('namec').AsString);
     cbb3.Items.Add(Data1.ds1.FieldByName('id').AsString);
     Data1.ds1.Next;
  end;
  Data1.ds1.Close;
  Data1.ds1.SQL.Text:='SELECT Spec_Name FROM tbBottle_SPEC';
  Data1.ds1.Open;
  ComboBox4.Items.Clear;
  if not Data1.ds1.IsEmpty then
  begin
    while not Data1.ds1.Eof do
    begin
      ComboBox4.Items.Add(Data1.ds1.FieldByName('Spec_Name').AsString);
      Data1.ds1.Next;
    end;
  end;
end;

procedure TKhEditForm.FormShow(Sender: TObject);
begin
     Data1.ds1.Close;
     Data1.ds1.SQL.Text:='select comName from tCompany Where type =3';
     Data1.ds1.Open;
     ComboBox1.Items.Clear;
     if not Data1.ds1.IsEmpty then
     begin
       while not Data1.ds1.Eof do
        begin
           ComboBox1.Items.Add(Data1.ds1.FieldByName('comname').AsString);
           Data1.ds1.Next;
        end;
     end;
     Data1.ds1.Close;
     Data1.ds1.SQL.Text:='select type_name from tbCustomer_type';
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
     Data1.ds1.Close;
     Data1.ds1.SQL.Text:='select name from tb_djyh';
     Data1.ds1.Open;
     ComboBox5.Items.Clear;
     if not Data1.ds1.IsEmpty then
     begin
       while not Data1.ds1.Eof do
        begin
           ComboBox5.Items.Add(Data1.ds1.FieldByName('name').AsString);
           Data1.ds1.Next;
        end;
     end;
     Data1.ds1.Close;
  if yy=false then
   begin

     Edit1.Text:=Data1.UniStoredProc1.FieldByName('门店编号').AsString;
     ComboBox1.Text:=Data1.UniStoredProc1.FieldByName('所属门店').AsString;
     Edit2.Text:=Data1.UniStoredProc1.FieldByName('客户条码').AsString;
     Edit3.Text:=Data1.UniStoredProc1.FieldByName('客户名称').AsString;
     Edit4.Text:=Data1.UniStoredProc1.FieldByName('手机号码').AsString;
     Edit5.Text:=Data1.UniStoredProc1.FieldByName('联系电话').AsString;
     Edit6.Text:=Data1.UniStoredProc1.FieldByName('登记人').AsString;
     Edit7.Text:=Data1.UniStoredProc1.FieldByName('登记日期').AsString;
     Edit8.Text:=Data1.UniStoredProc1.FieldByName('修改人').AsString;
     Memo1.Text:=Data1.UniStoredProc1.FieldByName('备注').AsString;
     Edit10.Text:=Data1.UniStoredProc1.FieldByName('身份证号').AsString;
     Edit15.Text:=Data1.UniStoredProc1.FieldByName('押金单号').AsString;
     ComboBox4.Text:=Data1.UniStoredProc1.FieldByName('钢瓶类型').AsString;
     Edit11.Text:=Data1.UniStoredProc1.FieldByName('楼层').AsString;
     Edit12.Text:=Data1.UniStoredProc1.FieldByName('客户地址').AsString;
     Edit13.Text:=Data1.UniStoredProc1.FieldByName('类型编号').AsString;
     ComboBox2.Text:=Data1.UniStoredProc1.FieldByName('类型').AsString;
     edt1.Text:=Data1.UniStoredProc1.FieldByName('会员卡号').AsString;
     cbb1.Text:=Data1.UniStoredProc1.FieldByName('区域').AsString;
     cbb2.Text:=Data1.UniStoredProc1.FieldByName('街道').AsString;
     cbb3.Text:=Data1.UniStoredProc1.FieldByName('区域id').AsString;
     cbb4.Text:=Data1.UniStoredProc1.FieldByName('街道id').AsString;
     ComboBox5.Text:=Data1.UniStoredProc1.FieldByName('优惠等级').AsString;
     if Data1.UniStoredProc1.FieldByName('月结客户').AsString='是' then
     AdvOfficeCheckBox1.Checked:=True
     else
      AdvOfficeCheckBox1.Checked:=False;
     if (Edit14.Text<>'0') and (Edit14.Text<>'') then
      AdvOfficeRadioButton2.Checked:=True;
   end
   else
   begin
//     Data1.ds1.Close;
//     Data1.ds1.SQL.Text:='select max(barcode) as id from tbCustomer_Info';
//     Data1.ds1.Open;
//      if Data1.ds1.FieldByName('id').AsString='' then  Edit2.Text:='1000001'
//     else
//     Edit2.Text:=IntToStr(Data1.ds1.FieldByName('id').AsInteger+1);
//     Data1.ds1.Close;
//     Data1.ds1.SQL.Text:='INSERT INTO tbCustomer_Info (barcode) values ('''+edit2.Text+''') ';
//     Data1.ds1.ExecSQL;
     Edit1.Text:='';
     Edit3.Text:='';
     Edit4.Text:='';
     Edit5.Text:='';
     Edit8.Text:='';
     cbb1.Text:='';
     cbb2.Text:='';
     cbb3.Text:='';
     cbb4.Text:='';
     edt1.Text:='';
     Edit15.Text:='';
     Edit6.Text:=Loginname;
     Edit7.Text:=gettime;
     Memo1.Text:='';
     Edit10.Text:='';
     Edit11.Text:='';
     Edit12.Text:='';
     Edit13.Text:='';
     ComboBox4.Text:='';
     ComboBox5.Text:='';
   end;
end;

end.
