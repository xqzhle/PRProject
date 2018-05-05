unit Unit38;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
   iniFiles,
  StdCtrls, ImgList, AdvGlowButton, AcReport_TLB,
  AdvSmoothMessageDialog,AdvStyleIF,
  AdvOfficeButtons,
  ExtCtrls, OleServer, AcReport_TLB_Int;

type
  TForm38 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    AdvGlowButton6: TAdvGlowButton;
    ImageList1: TImageList;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    AdvSmoothMessageDialog2: TAdvSmoothMessageDialog;
    AdvOfficeCheckBox1: TAdvOfficeCheckBox;
    Label3: TLabel;
    edit2: TComboBox;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Memo1: TMemo;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    AcRptEngine1: TAcRptEngine;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form38: TForm38;

implementation

uses DbUnit, MainUnit, zcomm,Unit57;

{$R *.dfm}
var
 rpt_path,ss,botteltype:string;
 a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a17,atel,optdate,hykh:string;
 j:Real;
 smbool : Boolean;

procedure TForm38.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm38.AdvGlowButton2Click(Sender: TObject);
var
  sms,idstr,tm:string;
//  List: TStringList;
  jf :Real;
  i:Integer;
begin
      // AdvSmoothMessageDialog1.Caption:=Form34.Caption;
       //AdvSmoothMessageDialog1.HTMLText.Text:='ȷ���������Ѿ���ӡ��ɣ�';
     //  case AdvSmoothMessageDialog1.ExecuteDialog of
    //   mryes:begin
    if (botteltype<>'') and smbool then
    begin
      if Edit1.Enabled then
      begin
        ShowMessage('���ȡ��ƿ����');
        Exit;
      end;
    end;
      try
        sms:='0';
        Data1.sqlcmd11.Close; //'zpbf='''++'''  �޸�ǰ
        Data1.sqlcmd11.SQL.Text:='update  tbisent set status=2,pddate=GETDATE(),empname='''+edit2.Text+''','+
        'zpbar='''+ss+''' where bisentid='''+a1+'''  ';
        Data1.sqlcmd11.ExecSQL;
        Data1.sqlcmd11.Close;
        Data1.sqlcmd11.SQL.Text:='select id from tbisent  where bisentid='''+a1+'''  ';
        Data1.sqlcmd11.open;
        if not Data1.sqlcmd11.IsEmpty then
        begin
          sms:=data1.sqlcmd11.FieldByName('id').AsString;
        end;
        Data1.sqlcmd11.Close;
         if Memo1.Lines.Count<>0 then
         for I := 0 to Memo1.Lines.Count-1 do
         begin
            tm :=Trim(Memo1.Lines.Strings[i]);
           if tm <> '' then
           begin
            Data1.sqlcmd11.Close;            // OutID,��ƿ instat=0   ��ƿ�����¼            OutDate, OutTime, OutUser,  ,'''+datetostr(sdatetime)+''','''+timetostr(sdatetime)+''','''+usname+'''
            Data1.sqlcmd11.SQL.Text:='Insert Into tbSale_Out (shopcode, BottleBar, Instate, CreateUser, CreateDate) Values '+
            ' ('''+shopid+''','''+tm+''',0,'''+usname+''',GETDATE())';
            Data1.sqlcmd11.ExecSQL;
            Data1.sqlcmd11.Close;
            Data1.sqlcmd11.SQL.Text:='delete from tbMDZPXC where bottlebar='''+tm+'''';
            Data1.sqlcmd11.ExecSQL;
            Data1.sqlcmd11.Close;
            Data1.sqlcmd11.SQL.Text:='select id from tb_khgp where gptm='''+tm+'''';
            Data1.sqlcmd11.Open;
            if data1.sqlcmd11.IsEmpty then
            begin
              idstr:='insert into tb_khgp (gptm,khbh,ywy,cuser,cdate,bistid,shopid) values ('''+tm+''','''+a2+''','+
               ' '''+Data1.ss6.FieldByName('��Ա����').AsString+''','''+usname+''',GETDATE(),'''+sms+''','''+shopid+''') ';
            end
            else
            begin
              idstr:='update tb_khgp set khbh='''+a2+''',ywy='''+Data1.ss6.FieldByName('��Ա����').AsString+''',cuser='''+usname+''','+
               ' cdate=GETDATE(),bistid='''+sms+''',shopid='''+shopid+''' where id='''+data1.sqlcmd11.FieldByName('id').AsString+''' ';
            end;
            Data1.sqlcmd11.Close;
            Data1.sqlcmd11.SQL.Text:=idstr;
            Data1.sqlcmd11.ExecSQL;
            Data1.sqlcmd11.Close;
            Data1.sqlcmd11.SQL.Text:='insert into tb_khgpTJ (gptm,khbh,cuser,cdate,bistid,shopid) values ('''+tm+''','''+a2+''','+
               ' '''+usname+''',GETDATE(),'''+sms+''','''+shopid+''') ';
            Data1.sqlcmd11.ExecSQL;
            Data1.sqlcmd11.Close;
            Data1.sqlcmd11.SQL.Text:='Update tbBottle_Dossier set type=3,upuser='''+usname+''',address='''+a2+''',endtime=GETDATE() WHERE Bottleid='''+tm+''' ';
            Data1.sqlcmd11.ExecSQL;
            Data1.sqlcmd11.Close;
           end;
         end;
         if CheckBox2.Checked then
         begin
           Form38.Close;
            if Data1.ss6.FieldByName('��Ա����').AsString<>'' then
            begin
              Data1.sds111.Close;
              Data1.sds111.SQL.Text:='select onejf from tpriceinfo where name='''+Data1.ss6.FieldByName('��Ʒ����').AsString+'''';
              Data1.sds111.Open;
              if not Data1.sds111.IsEmpty then
              begin
                if Data1.sds111.FieldByName('onejf').AsString<>'0' then
                begin
                 jf:=jf+ strtofloat(Data1.sds111.FieldByName('onejf').AsString)* strtofloat(Data1.ss6.FieldByName('����').AsString);
                end;
              end;
               Form57.edt1.Text:=FloatToStr(jf);
               Form57.edt2.Text:=Data1.ss6.FieldByName('ʵ�ս��').AsString;
            end
            else
            begin
              Form57.edt1.Clear;
              Form57.edt2.Clear;
            end;
            Form57.Edit2.Text:=Data1.ss6.FieldByName('����').AsString;
            Form57.Edit3.Text:=Data1.ss6.FieldByName('������').AsString;
            form57.ispd:=True;
            Form57.Show;
         end
         else
         begin
           // Data1.ss3.Close;
         //   Data1.ss3.Open;
            Data1.ss6.Close;
            Data1.ss6.Open;
            Form38.Close;
         end;
//        AdvSmoothMessageDialog1.Caption:=Form34.Caption;
//        AdvSmoothMessageDialog1.HTMLText.Text:='�Ƿ������ص���';
//        case AdvSmoothMessageDialog1.ExecuteDialog of
//          mryes:begin
//
//          end;
//          mrNo:
//          begin
//
//          end;
//        end;
      except
       on e:Exception do
          ShowMessage('�ɹ�ʧ�ܣ�'+e.Message);
         // Form34.WriteLog('�ɹ�ʧ��');
      end;
end;

procedure TForm38.AdvGlowButton3Click(Sender: TObject);
begin
    AdvSmoothMessageDialog1.Caption:=Application.Title;
    AdvSmoothMessageDialog1.HTMLText.Text:='ȷ��Ҫ���϶�����';
    case AdvSmoothMessageDialog1.ExecuteDialog of
       mryes:begin
         Data1.sds111.Close;
         Data1.sds111.SQL.Text:='update  tbisent set type=''3'',hddate=GETDATE() where bisentid='''+a1+''' ';
         try
           Data1.sds111.ExecSQL;
           ShowSmoothMessage('�������ϳɹ�');
           Data1.ss6.Close;
           Data1.ss6.Open;
           Form38.Close;
         except
          ShowMessage('��������ʧ��');
         end;
       end;
    end;
end;

procedure TForm38.AdvGlowButton4Click(Sender: TObject);
begin
  Edit1.Clear;
  Memo1.Clear;
  Edit1.Enabled:=True;
  ss :='';
  j := StrToFloat(a7);
end;

procedure TForm38.AdvGlowButton6Click(Sender: TObject);
begin
      a10:=ss;
      if not CheckBox3.Checked then  a12 :='';
      try
          ACRptEngine1.Init;
          ACRptEngine1.AddGlobalVariable('optdate', optdate) ;
          ACRptEngine1.AddGlobalVariable('a17', a17) ;
          ACRptEngine1.AddGlobalVariable('a10', a10) ;
          ACRptEngine1.AddGlobalVariable('a8', Edit2.Text) ;
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
          ACRptEngine1.SetReportFile(rpt_path+'sqd.apt');
//          ACRptEngine1.Preview;
        //AcRptEngine1.ShowDesigner;
          if CheckBox1.Checked then  AcRptEngine1.Print
          else  ACRptEngine1.Preview;
          AdvGlowButton2.Enabled:=True;
      except
          ShowMessage('��ӡ���������ӡ����');
      end;
//      end
//      else
//          ShowSmoothMessage('����ɨ�����룡');
end;

procedure TForm38.Edit1KeyPress(Sender: TObject; var Key: Char);
var
 i:Integer;
 s:string;
begin
   if Key=#13 then
   begin
      if j>=1 then
      begin

        Data1.sqlcmd11.Close;
        Data1.sqlcmd11.SQL.Text:='select Bottleid from tbBottle_Dossier where ((bottlebar=''' + Trim(Edit1.Text) + ''') or (Bottleid=''' + Trim(Edit1.Text) + ''') or (gptm=''' + Trim(Edit1.Text) + '''))';
        Data1.sqlcmd11.Open;
        if  Data1.sqlcmd11.IsEmpty then
        begin
           ShowMessage('���벻����');
           Edit1.Clear;
           Edit1.SetFocus;
           Exit;
        end
        else s:=Data1.sqlcmd11.FieldByName('Bottleid').AsString;
        if Memo1.Lines.Count<>0 then
         for I := 0 to Memo1.Lines.Count-1 do
         begin
           if Edit1.Text=Memo1.Lines.Strings[i] then
           begin
            ShowMessage('��ɨ���������');
            Edit1.Clear;
            Edit1.SetFocus;
            Exit;
           end;
         end;
        Data1.sqlcmd11.Close;
        Data1.sqlcmd11.SQL.Text:='select bottlebar from tbBottle_Dossier a  left join tbBottle_Spec C On C.Spec_ID=A.SpecID '+
        ' where (a.Bottleid='''+s+''') and (C.Spec_name='''+botteltype+''')';
        Data1.sqlcmd11.Open;
        if not Data1.sqlcmd11.IsEmpty then
        begin
           Data1.sqlcmd1.Close;
           Data1.sqlcmd1.SQL.Text:='select  bottlebar from tbMDZPXC where bottlebar='''+edit1.Text+''' ';
           Data1.sqlcmd1.Open;
           if not Data1.sqlcmd1.IsEmpty then
           begin
             if ss='' then ss:= s
             else  ss:=ss+','+s;
             Memo1.Lines.Add(s);
             j:=j-1;
             Edit1.Clear;
             Edit1.SetFocus;
             if j=0 then
             begin
               ShowMessage('��ƿ��ȡ��ɣ�');
               Edit1.Enabled:=False;
             end;
           end
           else
           begin
             ShowMessage('���벻�ڱ��ŵ꣡');
             Edit1.Clear ;
             Edit1.SetFocus;
           end;

        end
        else
          begin
            ShowMessage('��ƿ���Ͳ���ȷ��');
            Edit1.Clear ;
            Edit1.SetFocus;
          end;
       Data1.sqlcmd11.Close;
       Data1.sqlcmd1.Close;
      end ;
     end;
end;

procedure TForm38.FormShow(Sender: TObject);
begin
  smbool := False;
  Data1.sqlcmd11.Close;
  Data1.sqlcmd11.SQL.Text:='Select zpsm from info ';
  Data1.sqlcmd11.Open;
  if not Data1.sqlcmd11.IsEmpty then
  begin
    smbool := Data1.sqlcmd11.FieldByName('zpsm').AsBoolean;
  end;
  Data1.sqlcmd11.Close;
  rpt_path := ExtractFilePath(ParamStr(0)) + '\report\';
    ss:='';
    Edit1.Enabled:=True;
    AdvGlowButton2.Enabled:=True;
    AdvGlowButton6.Enabled:=True;
    a1:=Data1.ss6.FieldByName('����').AsString;
//    Data1.sqlcmd11.Close;
//    Data1.sqlcmd11.SQL.Text:='select sl from tbisentprice where (pricename like ''%��%'') and (bisentid='''+a1+''') ';
//    Data1.sqlcmd11.Open;
//    if not Data1.sqlcmd11.IsEmpty then j:=Data1.sqlcmd11.FieldByName('sl').AsInteger
//    else j:=0;
//    Data1.sqlcmd11.Close;
    a2:=Data1.ss6.FieldByName('�ͻ����').AsString;
    a3:=Data1.ss6.FieldByName('��Ʒ����').AsString;
    a4:=Data1.ss6.FieldByName('�ͻ�').AsString;
    Edit4.Text:=a4;
    a5:=Data1.ss6.FieldByName('����').AsString;
    a6:=Data1.ss6.FieldByName('�˷�').AsString;
    a7:=Data1.ss6.FieldByName('����').AsString;
    hykh := Data1.ss6.FieldByName('��Ա����').AsString;
    Edit3.Text:=a7;
    j:=StrToFloat(a7);
    atel:=Data1.ss6.FieldByName('��ϵ�绰').AsString;
    Edit5.Text:=atel;
    a9:=Data1.ss6.FieldByName('ʵ�ս��').AsString;
    a11:=shopname;
    a12:='';
    a13:=Data1.ss6.FieldByName('������ַ').AsString;
    a14:=Data1.ss6.FieldByName('�µ���').AsString;
    a17:=Data1.ss6.FieldByName('��ע').AsString;
//    a17:=Data1.ss6.FieldByName('���֤').AsString;
    optdate:=Data1.ss6.FieldByName('����ʱ��').AsString;
    if Data1.ss6.FieldByName('��������').AsString='ԤԼ'  then
    begin
      a15:=Data1.ss6.FieldByName('ԤԼʱ��').AsString;
      Delete(a15,1,5);
      a15:=Copy(a15,1,11);
    end
    else a15:='';
   a12 :='';
   with Data1.sqlcmd1 do
   begin
      close;
      sql.Text:='select stype from tpriceinfo where name='''+a3+''' ';
      Open;
      if not IsEmpty then  botteltype:=FieldByName('stype').AsString
      else botteltype:='';
      Close;
      sql.Text:='select gptm from tb_khgp where khbh='''+a2+''' ';
      open;
      if not IsEmpty then
      begin
        while not Eof do
        begin
          if a12='' then  a12 := '�ͻ�ƿ��:'+FieldByName('gptm').AsString
          else a12 := a12+','+FieldByName('gptm').AsString;
          Next;
        end;
      end;
      Close;
   end;
    Data1.sqlcmd1.Close;
      Data1.sqlcmd1.SQL.Text:='select  empname from tb_yginfo where gwname like ''%��%''  order by empname';
      Data1.sqlcmd1.Open;
      edit2.Items.Clear;
       if not Data1.sqlcmd1.IsEmpty then
       begin
         while not Data1.sqlcmd1.Eof do
         begin
            edit2.Items.Add(Data1.sqlcmd1.FieldByName('empname').AsString);
            Data1.sqlcmd1.Next;
         end;
       end;
       data1.sqlcmd1.Close;
       edit2.ItemIndex:=-1;
   Memo1.Lines.Clear;
   edit1.clear;
   Edit1.SetFocus;
end;


end.
