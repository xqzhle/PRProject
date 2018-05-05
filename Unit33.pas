unit Unit33;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses,dxRibbonForm ,dxRibbon,EncdDecd,
  StdCtrls, AdvGlowButton, ImgList,AdvSmoothMessageDialog,AdvStyleIF,
  AdvOfficeButtons, ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters, RzCmboBx;

type
  TForm33 = class(TdxRibbonForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Label1: TLabel;
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
    Label10: TLabel;
    Edit9: TEdit;
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
    AdvOfficeRadioButton1: TAdvOfficeRadioButton;
    AdvOfficeRadioButton2: TAdvOfficeRadioButton;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    Panel1: TPanel;
    Label19: TLabel;
    Edit15: TEdit;
    AdvOfficeCheckBox1: TAdvOfficeCheckBox;
    AdvGlowButton2: TAdvGlowButton;
    AdvOfficeCheckBox2: TAdvOfficeCheckBox;
    AdvGlowButton3: TAdvGlowButton;
    Edit16: TEdit;
    edt1: TEdit;
    cbb3: TComboBox;
    lbl1: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb4: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    Label20: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    Label18: TLabel;
    AdvOfficeCheckBox3: TAdvOfficeCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit6: TEdit;
    Label21: TLabel;
    Image1: TImage;
    AdvGlowButton4: TAdvGlowButton;
    CheckBox1: TCheckBox;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    ComboBox4: TComboBox;
    Label22: TLabel;
    ComboBox5: TComboBox;
    Edit7: TEdit;
    ComboBox6: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure AdvOfficeCheckBox3Click(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    var
//  istemp:Boolean;
  end;

var
  Form33: TForm33;

implementation

uses DbUnit , CallCentUnit,MainUnit, CVRDLL,zcomm;
var
  delkh :Boolean;
{$R *.dfm}

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

procedure TForm33.AdvGlowButton1Click(Sender: TObject);
var
  sqlstr,yj,bisentid,txstring:string;
begin
  if AdvGlowButton1.Caption='保存' then
  begin
       if (ComboBox6.Text='') then
        begin
          ShowSmoothMessage('请选择所属门店',tsOffice2007Luna);
          Exit;
        end;
        if (Edit3.Text='') then
        begin
          ShowSmoothMessage('请输入用户名称',tsOffice2007Luna);
          Exit;
        end;
        if (Edit5.Text='') then
        begin
          ShowSmoothMessage('请输入手机号码',tsOffice2007Luna);
          Exit;
        end;
        if (Edit12.Text='') then
        begin
          ShowSmoothMessage('请输入客户地址',tsOffice2007Luna);
          Exit;
        end;
        if (Edit13.Text='') then
        begin
          ShowSmoothMessage('请选择客户类型',tsOffice2007Luna);
          Exit;
        end;
        if (Edit11.Text='') then
        begin
          ShowSmoothMessage('请输入楼层',tsOffice2007Luna);
          Exit;
        end;
//        if (Edit3.Text='') or (Edit5.Text='') or (Edit13.Text='') or (Edit12.Text='') or (Edit1.Text='')  or (Edit11.Text='') then
//        begin
//          ShowSmoothMessage('请输入完整信息',tsOffice2007Luna);
//          Exit;
//        end;
        if (cbb3.Text='') or (cbb4.Text='') then
        begin
          ShowSmoothMessage('请选择区域街道',tsOffice2007Luna);
          Exit;
        end;
//        if (edt1.Text<>'') and (Length(edt1.Text)<>10)  then
//        begin
//          ShowSmoothMessage('会员卡号必须为10位！');
//          Exit;
//        end;
      if not AdvOfficeCheckBox3.Checked then
      begin
        if Edit2.Text='' then
        begin
          ShowSmoothMessage('客户编号不能为空',tsOffice2007Luna);
          Exit;
        end;
        Data1.ds1.Close;
        Data1.ds1.sql.Text:='select id from tbCustomer_Info where barcode='''+Edit2.Text+'''';
        Data1.ds1.Open;
        if not Data1.ds1.IsEmpty then
        begin
           ShowSmoothMessage('已存在客户编号:'+Edit2.text+'的信息',tsOffice2007Luna);
           Exit;
        end;
        bisentid:=Trim(Edit2.Text);
      end;
       Data1.ds1.Close;
       Data1.ds1.SQL.Text:='select id from tbCustomer_Info where tel='''+edit5.Text+''' or contact='''+Edit5.Text+''' ';
       Data1.ds1.Open;
       if not Data1.ds1.IsEmpty then
       begin
         ShowSmoothMessage('已存在手机号码:'+edit5.text+'的信息',tsOffice2007Luna);
         Exit;
       end;
       if Edit4.Text<>'' then
       begin
         Data1.ds1.Close;
         Data1.ds1.sql.Text:='select id from tbCustomer_Info where tel='''+Edit4.Text+''' or contact='''+Edit4.Text+''' ';
         Data1.ds1.Open;
         if not Data1.ds1.IsEmpty then
         begin
           ShowSmoothMessage('已存在联系电话:'+Edit4.text+'的信息',tsOffice2007Luna);
           Exit;
         end;
       end;
       if Edit17.Text<>'' then
       begin
         Data1.ds1.Close;
         Data1.ds1.sql.Text:='select id from tbCustomer_Info where bayday='''+Edit17.Text+''' ';
         Data1.ds1.Open;
         if not Data1.ds1.IsEmpty then
         begin
           ShowSmoothMessage('已存在身份证号:'+Edit17.text+'的信息',tsOffice2007Luna);
           Exit;
         end;
       end;
       if edt1.Text<>'' then
       begin
         Data1.ds1.Close;
         Data1.ds1.sql.Text:='select id from tbCustomer_Info where hynumber='''+edt1.Text+'''';
         Data1.ds1.Open;
         if not Data1.ds1.IsEmpty then
         begin
           ShowSmoothMessage('已存在会员卡号:'+edt1.text+'的信息',tsOffice2007Luna);
           Exit;
         end;
       end;
      if AdvOfficeCheckBox3.Checked then
      begin
       Data1.ds1.Close;
        Data1.ds1.sql.Text:='select max(barcode) as id from tbCustomer_Info where len(barcode)=7 ';
        Data1.ds1.Open;
        if Data1.ds1.FieldByName('id').AsString='' then  bisentid:='1000001'
        else  bisentid:=IntToStr(Data1.ds1.FieldByName('id').AsInteger+1);
      end;
      if Image1.Picture.Graphic = nil then  txstring:=''
      else txstring:=BitmapToString(Image1.Picture.Bitmap);
      if AdvOfficeCheckBox2.Checked then yj:='1' else yj:='0';
       sqlstr:='INSERT INTO tbCustomer_Info (barcode,psid,namec,contact,tel,CreateUser,Createdate,remark,SendPeriod,typec,address,hynumber,sqg,ywy,yj,grade,qyid,jdid,bayday,kfsn,gpstype,sfaddress,imgbase) values '+
       ' ('''+bisentid+''','''+ComboBox6.Text+''','''+edit3.Text+''','''+edit4.Text+''','''+edit5.Text+''','''+loginName+''','''+gettime+''','''+memo1.Text+''','+
       ' '''+edit11.Text+''','''+edit13.Text+''','''+edit12.Text+''','''+edt1.Text+''','''+combobox4.Text+''','''+combobox5.Text+''','''+yj+''',''0'','''+cbb3.Text+''','''+cbb4.Text+''','+
       ' '''+edit17.Text+''','''+edit18.Text+''','''+combobox3.text+''','''+edit6.Text+''','''+txstring+''')';
    try
      Data1.ds1.Close;
      Data1.ds1.SQL.Text:=sqlstr;
      Data1.ds1.ExecSQL;
      ShowSmoothMessage('客户添加成功！',tsOffice2007Luna);
      Close;
        sqlstr:='select a.id as id,a.fmoney as fmoney,a.namec as namec,a.tel as tel,a.Address as Address,a.fax as fax,a.contact as contact,a.sqg as sqg,a.hynumber as hynumber,a.ywy as ywy,a.SendPeriod as SendPeriod,a.Remark as Remark,'+
      ' a.CreateDate as CreateDate,a.psid as psid,a.Grade as Grade,a.TypeC as TypeC,b.shopname as shopname,a.qyid as qyid,a.jdid as jdid,d.namec as qyname,e.namec as jdname, '+
      ' c.Type_Name as typename,a.BarCode as barcode,a.bayday as bayday,a.ajdate as ajdate,a.kfsn as kfsn,a.gpstype as gpstype '+
      ' from tbCustomer_Info a left join tshop b on (a.psid=b.shopid) left join tbCustomer_Type c on (a.TypeC=c.Type_ID) left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id) ';
      Data1.ClientDataSet3.Close;
      Data1.ClientDataSet3.SQL.Text:=sqlstr+' where a.barcode='''+bisentid+'''';
      Data1.ClientDataSet3.Open;
      callcentform.Edit2.Text:=Data1.ClientDataSet3.FieldByName('psid').AsString;
      callcentform.Edit3.Text:=Data1.ClientDataSet3.FieldByName('TypeC').AsString;
      callcentform.DBComboBox1.Text:=Data1.ClientDataSet3.FieldByName('typename').AsString;
      callcentform.DBComboBox2.Text:=Data1.ClientDataSet3.FieldByName('shopname').AsString;
      callcentform.ComboBox9.Text:=Data1.ClientDataSet3.FieldByName('sqg').AsString;
     callcentform.ComboBox8.Text:=Data1.ClientDataSet3.FieldByName('ywy').AsString;
      callcentform.cbb3.Text:=Data1.ClientDataSet3.FieldByName('qyid').AsString;
       callcentform.cbb1.Text:=Data1.ClientDataSet3.FieldByName('qyname').AsString;
       callcentform.cbb4.Text:=Data1.ClientDataSet3.FieldByName('jdid').AsString;
       callcentform.cbb2.Text:=Data1.ClientDataSet3.FieldByName('jdname').AsString;
       callcentform.ComboBox6.Text:= Data1.ClientDataSet3.FieldByName('gpstype').AsString;
      sfshow :=True;
//      Data1.ds1.Close;


//       if (istemp) and (Edit16.Text<>'') then
//       begin
//         try
//             Data1.ds1.Close;
//             Data1.ds1.SQL.Text:='delete from tbaddtempcoust where id='''+edit16.Text+'''';
//             Data1.ds1.ExecSQL;
//         except
//
//         end;
//       end;
//       istemp:=False;

    except
        ShowSmoothMessage('客户添加失败！请检查',tsOffice2007Luna);
        Data1.ds1.Close;
        Data1.ds1.SQL.Text:='delete from tbCustomer_Info where barcode='''+edit2.Text+''' ';
        Data1.ds1.ExecSQL;
        Close;
    end;
      Data1.ds1.Close;
      Data1.cmd3.Close;
  end;
  if AdvGlowButton1.Caption='注销' then
  begin
       try
            Data1.ds1.Close;
            Data1.ds1.sql.Text:='select id from tbskbottle where barcode='''+edit2.Text+''' and type=0 and (stype=0 or stype=4) ' ;
            Data1.ds1.Open;
            if not Data1.ds1.IsEmpty then
            begin
              ShowSmoothMessage('该客户还有气瓶收费未退还');
              Exit;
            end;
            sqlstr := loginname+'  删除客户:'+edit2.Text;
            Data1.ds1.Close;
            Data1.ds1.sql.Text:='insert into rizhi (text,datetime) values ('''+sqlstr+''','''+gettime+''')  ' ;
            Data1.ds1.ExecSQL;
            if delkh then
            begin
               Data1.ds1.Close;
               Data1.ds1.sql.Text:='insert into tbCustomer_bf select * from  tbCustomer_Info where id='''+edit7.Text+''' ' ;
               Data1.ds1.ExecSQL;
               Data1.ds1.Close;
               Data1.ds1.sql.Text:='delete from tbCustomer_Info where id='''+edit7.Text+''' ' ;
               Data1.ds1.ExecSQL;
               Data1.ds1.Close;
               Data1.ds1.sql.Text:='delete from tb_khgp where khbh='''+edit2.Text+''' ' ;
               Data1.ds1.ExecSQL;
            end
            else
            begin
               Data1.ds1.Close;
               Data1.ds1.sql.Text:='update tbCustomer_Info set Customer_ID=''1'' where id='''+edit7.Text+''' ' ;
               Data1.ds1.ExecSQL;
            end;
           ShowSmoothMessage('客户注销成功!',tsOffice2007Luna);
       except
          on  E: Exception do
          begin
             ShowSmoothMessage('客户注销失败！'+e.Message,tsOffice2007Luna);
             Exit;
          end;
       end;
       Data1.ds1.Close;
       Data1.ClientDataSet3.Close;
       Data1.ClientDataSet3.Open;
       close;
  end;
end;

procedure TForm33.AdvGlowButton2Click(Sender: TObject);
begin
//    if AdvGlowButton2.Caption='退瓶' then
//    begin
//      form63.Edit1.Text:=ComboBox6.Text;
//      form63.ComboBox1.Text:=ComboBox1.Text;
//      Form63.Edit2.Text:=Edit2.Text;
//      Form63.Edit3.Text:=Edit3.Text;
//      Form63.ShowModal;
//    end;
//     if AdvGlowButton2.Caption='登记气瓶' then
//    begin
//     if (ComboBox6.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') and (ComboBox1.Text<>'') then
//     begin
//       Form27.Edit1.Text:=Edit2.Text;
//       Form27.Edit14.Text:=ComboBox6.Text;
//       Form27.ComboBox1.Text:=Edit3.Text;
//   //  Form27.ComboBox2.Text:=DBComboBox1.Text;
//       Form27.ShowModal;
//     end;
//    end;
end;

procedure TForm33.AdvGlowButton3Click(Sender: TObject);
begin
   // SeltempcountForm.ShowModal;
end;

procedure TForm33.AdvGlowButton4Click(Sender: TObject);
var
  iRet :integer;
  iFileHandle,iFileLength: Integer;
  Buffer: PWideChar;
  sWZ :WideString;
begin
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
       Edit3.Text := copy(sWZ,1,15);  //姓名
//       delete(sWZ,1,15);
//       if (copy(sWZ,1,1)='1') then     //性别
//          Memo1.Lines.Add('男')
//       else
//          Memo1.Lines.Add('女');
//       delete(sWZ,1,1);                //民族
//       sDisp:='';
//       sDisp:=copy(sWZ,1,2);
//       GetPrivateProfileStringA('PEOPLE',PChar(sDisp),'',ChPeople,33,PChar(iniFileName));
//       Memo1.Lines.Add(string(ChPeople));
//       delete(sWZ,1,2);                //出生
//       sDisp:='';
//       ChangeDateChina(copy(sWZ,1,8),sDisp);
//       Memo1.Lines.Add(sDisp);

       delete(sWZ,1,26);               //住址
       Edit6.Text := copy(sWZ,1,35);

       delete(sWZ,1,35);              //身份证号
       Edit17.Text := copy(sWZ,1,18);

//       delete(sWZ,1,18);              //签发机关
//       Memo1.Lines.Add(copy(sWZ,1,15));
//       sDisp:='';                     //有效期限
//       delete(sWZ,1,15);
//       ChangeDateDot(copy(sWZ,1,16),sDisp);
//       Memo1.Lines.Add(sDisp);
//       delete(sWZ,1,16);              //最新住址
//       Memo1.Lines.Add(copy(sWZ,1,35));
//                                     //显示照片
       Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +'zp.bmp');
       Image1.Visible := TRUE;
//       Memo1.Lines.Add(IntToStr(Image1.Picture.Bitmap.Width)+'  '+IntToStr(Image1.Picture.Bitmap.Height)) ;
//
//       windows.Beep(2800,200);
//       Memo1.Lines.Add('身份信息显示完毕');
    finally
      FreeMem(Buffer);
    end;
end;

procedure TForm33.AdvGlowButton6Click(Sender: TObject);
begin
       Close;
end;

procedure TForm33.AdvOfficeCheckBox3Click(Sender: TObject);
begin
  if AdvOfficeCheckBox3.Checked then Edit2.Enabled:=false
  else Edit2.Enabled:=True;
end;

procedure TForm33.cbb1Change(Sender: TObject);
begin
  cbb3.ItemIndex:=cbb1.ItemIndex;
  cbb2.Clear;
  cbb4.Clear;
  if cbb3.Text='' then Exit;

    Data1.ds1.SQL.Text:='select id,namec from tbkh_jd  where qyid='''+cbb3.text+''' ';
    Data1.ds1.Open;
    if not Data1.ds1.IsEmpty then
    begin
      while not Data1.ds1.eof do
      begin
        cbb2.Items.Add(Data1.ds1.FieldByName('namec').AsString);
        cbb4.Items.Add(Data1.ds1.FieldByName('id').AsString);
        Data1.ds1.Next;
      end;
    end;
    Data1.ds1.Close;
end;

procedure TForm33.cbb2Change(Sender: TObject);
begin
  cbb4.ItemIndex:=cbb2.ItemIndex;
end;

procedure TForm33.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then Edit12.Text := Edit6.Text
  else Edit12.Clear;
end;

procedure TForm33.ComboBox1Click(Sender: TObject);
begin
//    Data1.ds1.Close;
//    Data1.ds1.SQL.Text:='select shopid from tshop where shopname='''+combobox1.Text+'''';
//    Data1.ds1.Open;
//    if not Data1.ds1.IsEmpty then
//    begin
//       Edit1.Text:=Data1.ds1.FieldByName('shopid').AsString;
       ComboBox6.ItemIndex := ComboBox1.ItemIndex;
       ComboBox4.Clear;
       Data1.ds1.Close;
       Data1.ds1.SQL.Text:='select EmpName from tAchEmployee where shopid='''+ComboBox6.Text+''' ';
       Data1.ds1.Open;
       if not Data1.ds1.IsEmpty then
       begin
         while not Data1.ds1.Eof do
         begin
           ComboBox4.Items.Add(Data1.ds1.FieldByName('EmpName').AsString);
           Data1.ds1.Next;
         end;
       end;
//    end;
//    Data1.ds1.Close;
end;

procedure TForm33.ComboBox2Click(Sender: TObject);
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

procedure TForm33.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then  key:=#0;
end;

procedure TForm33.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if AdvGlowButton1.Caption='注销' then
      begin

        Data1.ClientDataSet3.Open;
      end;
//        if Form33.Caption='增加客户资料' then
//     begin
//       Data1.ds1.Close;
//      Data1.ds1.SQL.Text:='delete from tbCustomer_Info where (barcode='''+edit2.Text+''') and (namec is null) ';
//      Data1.ds1.ExecSQL;
//     end;
end;

procedure TForm33.FormCreate(Sender: TObject);
begin
     cbb1.Clear;
     cbb2.Clear;
     cbb4.Clear;
     cbb3.Clear;
     cbb1.Items := CallCentForm.cbb1.Items;
     cbb3.Items := CallCentForm.cbb3.Items;
     ComboBox1.Items :=CallCentForm.ComboBox4.Items;
     ComboBox6.Items :=CallCentForm.ComboBox10.Items;
     ComboBox2.Items := CallCentForm.DBComboBox1.Items;
     ComboBox5.Items:=CallCentForm.ComboBox8.Items;
     delkh := false;
     Data1.ds1.Close;
     Data1.ds1.sql.Text:='select delkh from info ' ;
     Data1.ds1.Open;
     if not Data1.ds1.IsEmpty then
     begin
        delkh := Data1.ds1.FieldByName('delkh').AsBoolean;
     end;
     Data1.ds1.Close;

//     Data1.sds111.Close;
//     Data1.sds111.SQL.Text:='select id,namec from tbkh_qy ';// where name like'+''''+'%气'+'''';
//     Data1.sds111.Open;
//     if not Data1.sds111.IsEmpty then
//     begin
//       while not Data1.sds111.eof do
//       begin
//         cbb1.Items.Add(Data1.sds111.FieldByName('namec').AsString);
//         cbb3.Items.Add(Data1.sds111.FieldByName('id').AsString);
//         Data1.sds111.Next;
//       end;
//     end;
//     Data1.sds111.Close;
//     Data1.ds1.SQL.Text:='select shopname from tshop where shopid<>0';
//     Data1.ds1.Open;
//     ComboBox1.Items.Clear;
//     if not Data1.ds1.IsEmpty then
//     begin
//       while not Data1.ds1.Eof do
//        begin
//           ComboBox1.Items.Add(Data1.ds1.FieldByName('shopname').AsString);
//           Data1.ds1.Next;
//        end;
//     end;
//     Data1.ds1.Close;
//     Data1.ds1.SQL.Text:='select type_name from tbCustomer_type';
//     Data1.ds1.Open;
//     ComboBox2.Items.Clear;
//     if not Data1.ds1.IsEmpty then
//     begin
//       while not Data1.ds1.Eof do
//        begin
//           ComboBox2.Items.Add(Data1.ds1.FieldByName('type_name').AsString);
//           Data1.ds1.Next;
//        end;
//     end;
//     Data1.ds1.Close;
//     Data1.ds1.SQL.Text:='SELECT Spec_Name FROM tbBottle_SPEC';
//     Data1.ds1.Open;
//     ComboBox3.Items.Clear;
//     if not Data1.ds1.IsEmpty then
//     begin
//       while not Data1.ds1.Eof do
//        begin
//           ComboBox3.Items.Add(Data1.ds1.FieldByName('Spec_Name').AsString);
//           Data1.ds1.Next;
//        end;
//     end;
end;

procedure TForm33.FormShow(Sender: TObject);
//var
// i:Integer;
// temp:string;
begin
   if Form33.Caption='增加客户资料' then
   begin
     ComboBox1.Text:='';
     ComboBox6.Text:='';
     ComboBox2.Text:='';
     ComboBox3.Text:='';
     ComboBox4.Text:='';
     ComboBox5.Text:='';
     Edit2.Text:='';
     Edit3.Text:='';
     Edit4.Text:='';
     Edit9.Text:='';
     Memo1.Text:='';
     Edit11.Text:='';
     Edit12.Text:='';
     Edit13.Text:='';
     Edit17.Text:='';
     Edit18.Text:='';
     Edit6.Clear;
     Image1.Picture.Graphic :=nil;
     Panel1.Visible:=False;
//     ComboBox3.Items:=Form1.ComboBox6.Items;
//     ComboBox5.Items:=Form1.ComboBox8.Items;
     if  cbb1.Items.Count>0 then
     begin
       cbb1.ItemIndex:=0;
       cbb3.ItemIndex:=0;
       cbb2.Clear;
       cbb4.Clear;
       if cbb3.Text<>'' then
       begin
         Data1.ds1.SQL.Text:='select id,namec from tbkh_jd  where qyid='''+cbb3.text+''' ';
         Data1.ds1.Open;
         if not Data1.ds1.IsEmpty then
         begin
          while not Data1.ds1.eof do
          begin
            cbb2.Items.Add(Data1.ds1.FieldByName('namec').AsString);
            cbb4.Items.Add(Data1.ds1.FieldByName('id').AsString);
            Data1.ds1.Next;
          end;
         end;
        Data1.ds1.Close;
       end;
     end
     else
     begin
       cbb1.Text:='';
       cbb3.Text:='';
     end;
     cbb2.Text:='';
     cbb4.Text:='';
     edt1.Text:='';

//     AdvGlowButton2.Caption:='登记气瓶';
//     AdvGlowButton2.Visible:=True;
     AdvGlowButton1.Enabled:=True;
//     AdvGlowButton3.Visible:=True;
//      istemp:=False;
     end ;
    if Form33.Caption='注销客户资料' then
     begin
      Edit2.Text:=CallCentForm.DBEdit1.Text;
      Edit3.Text:=CallCentForm.DBEdit2.Text;
      ComboBox6.Text:=CallCentForm.Edit2.Text;
      ComboBox1.Text:=CallCentForm.DBComboBox2.Text;
      Edit4.Text:=CallCentForm.DBEdit4.Text;
      Edit5.Text:=CallCentForm.DBEdit3.Text;
      Edit11.Text:=CallCentForm.DBEdit7.Text;
      Edit12.Text:=CallCentForm.DBEdit6.Text;
      ComboBox3.Text:=CallCentForm.DBEdit8.Text;
      ComboBox2.Text:=CallCentForm.DBComboBox1.Text;
      Edit13.Text:=CallCentForm.Edit3.Text;
      Memo1.Text:=CallCentForm.DBMemo1.Text;
      Edit17.Text:=CallCentForm.DBEdit10.Text;
      Edit18.Text:=CallCentForm.DBEdit11.Text;
      ComboBox3.Text:=CallCentForm.ComboBox6.Text;
      edt1.Text:=CallCentForm.DBEdit8.Text;
      cbb1.Text:=CallCentForm.cbb1.Text;
      cbb2.Text:=CallCentForm.cbb2.Text;
      ComboBox5.Text:=CallCentForm.ComboBox8.Text;
      ComboBox4.Text:=CallCentForm.ComboBox9.Text;
//      AdvGlowButton3.Visible:=False;
      { if (Edit14.Text<>'0') and (Edit14.Text<>'') then
        begin
          Panel1.Visible:=True;
          Label19.Caption:='收回钢瓶条码';
          AdvOfficeCheckBox1.Visible:=True;
        end
         else
         begin
           Panel1.Visible:=True;
           Label19.Caption:='退回钢瓶条码';
           AdvOfficeCheckBox1.Visible:=False;
         end; }

      //AdvGlowButton1.Caption:='注销';
     {Data1.ds1.Close;
     Data1.ds1.CommandText:='';
     Data1.ds1.CommandText:='select * from tbottlesk where ccode='''+edit2.Text+''' ';
     Data1.ds1.Open;
     if not Data1.ds1.IsEmpty then
     begin
       AdvGlowButton1.Enabled:=False;
       AdvGlowButton2.Caption:='退瓶';
      AdvGlowButton2.Visible:=True;
     end
     else
     begin
      AdvGlowButton1.Enabled:=True;
      AdvGlowButton2.Visible:=False;
     end; }
//      AdvGlowButton2.Caption:='退瓶';
//      AdvGlowButton2.Visible:=True;
      AdvGlowButton1.Enabled:=True;
     Data1.ds1.Close;
     end;
end;

end.
