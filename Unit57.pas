unit Unit57;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, AdvGlowButton, OleServer,
  AcReport_TLB, AdvSmoothMessageDialog, AdvStyleIF, AdvOfficeButtons,
  DBAdvOfficeButtons, ExtCtrls, AdvSplitter,  AcReport_TLB_Int;
type
  TForm57 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    AdvGlowButton6: TAdvGlowButton;
    ImageList1: TImageList;
    AdvGlowButton1: TAdvGlowButton;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    AdvOfficeCheckBox1: TAdvOfficeCheckBox;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    Label5: TLabel;
    Edit5: TEdit;
    AdvOfficeCheckBox2: TAdvOfficeCheckBox;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    AdvSplitter1: TAdvSplitter;
    Label12: TLabel;
    Edit13: TEdit;
    AdvSplitter2: TAdvSplitter;
    Label15: TLabel;
    Memo1: TMemo;
    AdvOfficeCheckBox3: TAdvOfficeCheckBox;
    Label16: TLabel;
    Edit15: TEdit;
    Label17: TLabel;
    Edit16: TEdit;
    Label18: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    edt1: TEdit;
    edt2: TEdit;
    Label10: TLabel;
    ComboBox1: TComboBox;
    AdvGlowButton4: TAdvGlowButton;
    AcRptEngine1: TAcRptEngine;
    AdvGlowButton3: TAdvGlowButton;
    CheckBox1: TCheckBox;
    AdvSplitter3: TAdvSplitter;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label11: TLabel;
    Label13: TLabel;
    Edit4: TEdit;
    Edit10: TEdit;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Exit(Sender: TObject);
    procedure AdvOfficeCheckBox2Click(Sender: TObject);
    procedure AdvOfficeCheckBox3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
    function Getbool(d:string):Boolean ;
  public
    { Public declarations }
    var
    ispd:Boolean;
  end;

var
  Form57: TForm57;
//  zfzpbar, zfsqg: string;

implementation

uses
  zcomm,DbUnit,MainUnit;

{$R *.dfm}
var
  bottletype: string;
  rpt_path:string;
  a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a17,atel,optdate,hykh:string;
  ss: string;
  j: Real;
  secok: Boolean = False; //�Ƿ����Ͷ��� ���ն��ٿ�ƿ
  smbool,sfbool : Boolean;

procedure TForm57.AdvGlowButton1Click(Sender: TObject);
begin
//  Form34.Timer1.Enabled := true;
  Close;
end;

procedure TForm57.AdvGlowButton2Click(Sender: TObject);
var
  zp, str, bisentids: string;
  List: TStringList;
  i: Integer;
begin
  if Edit6.Text = '' then
  begin
    ShowMessage('����������ԭ��');
    exit;
  end;
  AdvSmoothMessageDialog1.Caption := Application.Title;
  AdvSmoothMessageDialog1.HTMLText.Text := 'ȷ��Ҫ���϶�����';
  case AdvSmoothMessageDialog1.ExecuteDialog of
    mryes:
      begin
        zp := Data1.ss6.FieldByName('��ƿ���').AsString;
        try
          if zp<>'' then
          begin
            Data1.sqlcmd11.Close;
            Data1.sqlcmd11.SQL.Text:='select id from tbisent  where bisentid=''' + Edit2.Text + '''  ';
            Data1.sqlcmd11.open;
            if not Data1.sqlcmd11.IsEmpty then
            begin
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text := 'delete from tb_khgp where bistid='''+data1.sqlcmd11.FieldByName('id').AsString+''' ';
              Data1.sqlcmd1.ExecSQL;
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text := 'delete from tb_khgpTJ where bistid='''+data1.sqlcmd11.FieldByName('id').AsString+''' ';
              Data1.sqlcmd1.ExecSQL;
            end;
           try
            List := TStringList.Create;
            List.CommaText := zp;
            for i := 0 to List.Count - 1 do
            begin
              Data1.sqlcmd11.Close;
              Data1.sqlcmd11.SQL.Text := 'select Bottleid as BottleBar from tbBottle_Dossier Where Bottleid=''' + list[i] + '''';
              Data1.sqlcmd11.Open;
              if not Data1.sqlcmd11.IsEmpty then
              begin
                Data1.sqlcmd1.Close;            //д��ƿ�³����ݿ�
                Data1.sqlcmd1.SQL.Text := 'Insert Into tbMDZPXC (ID, ShopCode,BottleBar,cDate, CreateDate,Instate) Values ' + ' (''0'',''' + shopid + ''',''' + Data1.sqlcmd11.FieldByName('bottlebar').AsString + ''',''' + gettime + ''',''' + gettime + ''',0)';
                Data1.sqlcmd1.ExecSQL;

              end;
            end;
           finally
             List.Free;
           end;
          end;
          Data1.sqlcmd1.Close;


          Data1.sqlcmd11.Close;
          Data1.sqlcmd11.SQL.Text := 'update  tbisent set type=3,zfyy=''' + edit6.Text + ''',hddate=GETDATE() where bisentid=''' + Edit2.Text + '''  ';
          Data1.sqlcmd11.ExecSQL;
          Data1.sqlcmd11.Close;
          if (edit15.Text <> '') and (Edit16.Text <> '') then
          begin
            try
              Data1.sds111.Close;
              Data1.sds111.SQL.Text := 'select max(bisentid) as maxid from tbisent where optdate>='''+FormatDateTime('yyyy-mm-dd' ,Now)+''' ';
              Data1.sds111.Open;
              if Data1.sds111.FieldByName('maxid').AsString <> '' then
              begin
                str := Data1.sds111.FieldByName('maxid').AsString;
                bisentids := 'SN' + FormatDateTime('yymmdd' ,Now) + inttostr(strtoint(copy(str, 9, 6)) + 1)
              end
              else
              begin
                bisentids := 'SN' + FormatDateTime('yymmdd' ,Now) + '100001';
              end;
              Data1.sds111.Close;
              Data1.sds111.SQL.Text := 'INSERT INTO tbisentprice (bisentid,pricename,sl,dw,dj,yfmoney,smoney,money,priceid)' + ' VALUES(''' + bisentids + ''',''�������ɹ���������'',''' + edit15.Text + ''',''��'',''' + edit16.Text + ''',''0'',''' + edit16.Text + ''',''0'',''1'')';
              Data1.sds111.Execute;
              Data1.sds111.Close;
              Data1.sds111.SQL.Text := 'INSERT INTO tbisent (bisentid,shopid,shopname,sl,status,hmoney,yhmoney,smoney,money,corpname,optid,pddate,optdate,empname,corpid,address)' + ' VALUES(''' + bisentids + ''',''' + shopid + ''',''' + shopname + ''',''' + edit15.Text + ''',''1'',''0'',''0'',''' + edit16.Text + ''',''0'',''' + edit7.Text + ''',' + ' ''' + usname + ''',''' + gettime + ''',''' + gettime + ''',''' + edit3.Text + ''',''' + edit17.Text + ''',''' + edit18.Text + ''' )';
              Data1.sds111.ExecSQL;
            except
              WriteLog('�������ɹ��շ�д��ʧ��');
              Data1.sds111.Close;
              Data1.sds111.SQL.Text := 'delete from  tbisent where bisentid=''' + bisentids + ''' ';
              Data1.sds111.ExecSQL;
              Data1.sds111.Close;
              Data1.sds111.SQL.Text := 'delete from  tbisentprice where bisentid=''' + bisentids + ''' ';
              Data1.sds111.ExecSQL;
            end;
          end;
          try
            if ispd then
             begin
               Data1.ss6.Close;
               Data1.ss6.Open;
             end
             else
             begin
               Data1.ss7.Close;
               Data1.ss7.Open;
             end;
          except

          end;
          Form57.Close;

        except
          WriteLog('��������ʧ��');
          ShowMessage('����ʧ�ܣ�');
        end;
      end;
  end;
end;

procedure TForm57.AdvGlowButton3Click(Sender: TObject);
begin

   a12:=ss;
      try


          ACRptEngine1.Init;
          ACRptEngine1.AddGlobalVariable('optdate', optdate) ;
          ACRptEngine1.AddGlobalVariable('a17', a17) ;
          ACRptEngine1.AddGlobalVariable('a10', a10) ;
          ACRptEngine1.AddGlobalVariable('a8', a8) ;
          ACRptEngine1.AddGlobalVariable('a1', Edit2.Text) ;
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
          if CheckBox1.Checked then  AcRptEngine1.Print
          else  ACRptEngine1.Preview;
//          ACRptEngine1.Preview;
//        AcRptEngine1.ShowDesigner;
//          AcRptEngine1.Print;
//          AdvGlowButton2.Enabled:=True;
      except
          ShowSmoothMessage('��ӡ���������ӡ����');
      end;
end;

procedure TForm57.AdvGlowButton4Click(Sender: TObject);
begin
  Edit1.Clear;
  Memo1.Clear;
  ss :='';
  Edit1.Enabled:=True;
end;

procedure TForm57.AdvGlowButton6Click(Sender: TObject);
var
  i: Integer;
  sms :string;
begin
  if (bottletype<>'') and smbool then
  begin
    if Edit1.Enabled then
    begin
      ShowSmoothMessage('���ȡ��ƿ����');
      Exit;
    end;
  end;
  if sfbool then
  begin
    if (Edit4.Text='') or (Edit10.Text='') then
    begin
      ShowSmoothMessage('����д�����������Ϣ');
      Exit;
    end;

  end;
  try
    sms:='0';
    Data1.sqlcmd11.Close;
    Data1.sqlcmd11.SQL.Text := 'select id from tbisent where bisentid=''' + Edit2.Text + '''  ';
    Data1.sqlcmd11.Open;
    if not Data1.sqlcmd11.IsEmpty then
    begin
       sms:=data1.sqlcmd11.FieldByName('id').AsString;
    end;
    Data1.sqlcmd11.Close;                                                                                                                  //''' + datetimetostr(sdatetime) + '''
    Data1.sqlcmd11.SQL.Text := 'update  tbisent set kpbar=''' + ss + ''',status=1,jsname='''+edit4.text+''',jssfnumber='''+edit10.text+''',hddate=GETDATE() where bisentid=''' + Edit2.Text + '''  ';
    Data1.sqlcmd11.ExecSQL;
    for I := 0 to Memo1.Lines.Count-1 do
    begin
      if Memo1.Lines.Strings[i]<>'' then
      begin
        Data1.sqlcmd1.Close;
        Data1.sqlcmd1.SQL.Text := 'delete from tb_khgp  where gptm=''' + memo1.Lines.Strings[i] + ''' ';
        Data1.sqlcmd1.ExecSQL;
        Data1.sqlcmd1.Close;          //д��ƿ�������ݿ� InID, '''+idstr+''',
        Data1.sqlcmd1.SQL.Text:='Insert Into tbStock_In (ShopCode,BottleBar,  InDate, CreateDate,Instate,inuser,CreateUser) Values '+
                 ' ('''+shopid+''','''+memo1.Lines.Strings[i]+''','''+gettime+''',GETDATE(),0,'''+usname+''','''+usname+''')';
        Data1.sqlcmd1.ExecSQL;
        Data1.sqlcmd1.Close;          //д��ƿ�������ݿ�
        Data1.sqlcmd1.SQL.Text:='Insert Into tbStock_Intj (ShopCode,BottleBar,  InDate, CreateDate,Instate,inuser,CreateUser,bistid) Values '+
                 ' ('''+shopid+''','''+memo1.Lines.Strings[i]+''','''+gettime+''',GETDATE(),0,'''+usname+''','''+usname+''','''+sms+''')';
        Data1.sqlcmd1.ExecSQL;
        Data1.sqlcmd1.Close;
        Data1.sqlcmd1.SQL.Text:='Update tbBottle_Dossier set type=2,upuser='''+usname+''',address='''+shopid+''',endtime=GETDATE() WHERE Bottleid='''+memo1.Lines.Strings[i]+''' ';
        Data1.sqlcmd1.ExecSQL;
        Data1.sqlcmd1.Close;
      end;
    end;
      if (edt1.Text<>'') and (edt1.Text<>'0') and (edt2.Text<>'') then
      begin
        Data1.sqlcmd1.Close;
        Data1.sqlcmd1.SQL.Text := 'update tbCustomer_Info set Fjf=Fjf+'''+edt1.Text+''',Fje=Fje+'''+edt2.Text+''' where ywy='''+edit13.Text+''' ';
        Data1.sqlcmd1.ExecSQL;
      end;
      try
         Data1.ss3.Close;
         Data1.ss3.Open;
         Data1.ss6.Close;
         Data1.ss6.Open;
      except

      end;
    Form57.Close;
  except
    on e:Exception do
    begin
      ShowSmoothMessage('�ص�ʧ�ܣ�'+e.Message, tsOffice2007Luna);
    end;
  end;
end;

procedure TForm57.AdvOfficeCheckBox2Click(Sender: TObject);
begin
  if AdvOfficeCheckBox2.Checked then
   // Form39.Show;
end;

procedure TForm57.AdvOfficeCheckBox3Click(Sender: TObject);
begin
  AdvGlowButton2.Enabled := AdvOfficeCheckBox3.Checked;
end;

procedure TForm57.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
  s: string;
begin
    if Key = #13 then
    begin
      if Length(Trim(Edit1.Text)) < 6 then Exit;
      if j >= 1 then
      begin
        if Memo1.Lines.Count<>0 then
          for I := 0 to Memo1.Lines.Count - 1 do
          begin
            if Edit1.Text = Memo1.Lines.Strings[i] then
            begin
              ShowSmoothMessage('��ɨ���������');
              Edit1.Clear;
              Edit1.SetFocus;
              Exit;
            end;
          end;
        Data1.sqlcmd11.Close;
        Data1.sqlcmd11.SQL.Text := 'select Bottleid from tbBottle_Dossier where ((bottlebar=''' + Trim(Edit1.Text) + ''') or (Bottleid=''' + Trim(Edit1.Text) + ''') or (gptm=''' + Trim(Edit1.Text) + ''')) ';
        Data1.sqlcmd11.Open;
        if Data1.sqlcmd11.IsEmpty then
        begin
          ShowSmoothMessage('��ƿ������');
          Edit1.Clear;
          Edit1.SetFocus;
          Exit;
        end
        else s:=Data1.sqlcmd11.FieldByName('Bottleid').AsString;

        Data1.sqlcmd11.Close;
        Data1.sqlcmd11.SQL.Text := 'select id from tbStock_In where bottlebar=''' + s + '''';
        Data1.sqlcmd11.Open;
        if not Data1.sqlcmd11.IsEmpty then
        begin
          ShowSmoothMessage('��ƿ���Ѿ��и�����');
          Edit1.Clear;
          Edit1.SetFocus;
          Exit;
        end;
        ss:='';
        Data1.sqlcmd11.Close;   //,a.ScrapDate as ScrapDate,a.ScrapDate as ScrapDate
        Data1.sqlcmd11.SQL.Text := 'select a.Bottleid as Bottleid from tbBottle_Dossier a left join  ' +
        ' tbBottle_SPEC b on a.specid=b.spec_id  where (a.Bottleid=''' + s + ''') and (b.spec_name=''' + bottletype + ''')';
        Data1.sqlcmd11.Open;
        if not Data1.sqlcmd11.IsEmpty then
        begin
          if ss='' then  ss:= s
          else  ss := ss +','+ s ; //��ƿ���
          Memo1.Lines.Add(s);
          if ComboBox1.Items.Count <>0  then
          begin
            if Getbool(s)=False then   ShowSmoothMessage('�ͻ�ƿ�Ų�һ��,����');
          end;
          Edit1.Clear;
          Edit1.SetFocus;
          if smbool then
          begin
            j:=j-1;
            if j=0 then
            begin
              ShowSmoothMessage('��ƿ��ȡ��ɣ�',tsOffice2007Luna);
              Edit1.Enabled:=False;
            end;
          end;                                  //��ƿ����
        end
        else
        begin
          ShowSmoothMessage('��ƿ���Ͳ���ȷ��');
          Edit1.Clear;
          Edit1.SetFocus;
        end;
        Data1.sqlcmd11.Close;
      end;

    end;

end;

function TForm57.Getbool(d: string): Boolean;
var
 I:Integer;
 h:Boolean;
begin
  h:=False;
  for I := 0 to ComboBox1.Items.Count-1 do
  begin
    if d=ComboBox1.Items[i] then
    begin
       h:=True;
       Break;
    end;
  end;
  Result := h;
end;

procedure TForm57.RadioButton1Click(Sender: TObject);
begin
  Edit4.Text :=Edit7.Text;
  Edit10.Text :=a17;
end;

procedure TForm57.RadioButton2Click(Sender: TObject);
begin
  Edit4.Text :='';
  Edit10.Text :='';
end;

procedure TForm57.Edit5Exit(Sender: TObject);
begin
  j := StrToFloat(Edit5.Text);
end;

procedure TForm57.FormShow(Sender: TObject);
begin
  smbool := False;
  sfbool := False;
  Data1.sqlcmd11.Close;
  Data1.sqlcmd11.SQL.Text:='Select kpsm,sfbool from info ';
  Data1.sqlcmd11.Open;
  if not Data1.sqlcmd11.IsEmpty then
  begin
    smbool := Data1.sqlcmd11.FieldByName('kpsm').AsBoolean;
    sfbool := Data1.sqlcmd11.FieldByName('sfbool').AsBoolean;
  end;
  rpt_path := ExtractFilePath(ParamStr(0)) + '\report\';

  ss := '';
  Memo1.Lines.Clear;
  edit1.clear;
  Edit15.Clear;
  Edit16.Clear;
  Edit1.Enabled := True;
  AdvGlowButton6.Enabled := True;
  edit1.SetFocus;
  if ispd then
  begin
    edit5.text := Data1.ss6.FieldByName('����').AsString;
    edit9.Text := Edit5.Text;
  if edit5.text <> '' then   j := StrToFloat(Edit5.Text);
  Edit7.Text := Data1.ss6.FieldByName('�ͻ�').AsString;
  Edit8.Text := Data1.ss6.FieldByName('��ϵ�绰').AsString;
  Edit17.Text := Data1.ss6.FieldByName('�ͻ����').AsString;
  Edit18.Text := Data1.ss6.FieldByName('������ַ').AsString;
  Edit13.Text := Data1.ss6.FieldByName('��Ա����').AsString;
  a2:=Data1.ss6.FieldByName('�ͻ����').AsString;
   a4:=Data1.ss6.FieldByName('�ͻ�').AsString;
   a5:=Data1.ss6.FieldByName('����').AsString;
   a6:=Data1.ss6.FieldByName('�˷�').AsString;
   a7:=Data1.ss6.FieldByName('����').AsString;
   atel:=Data1.ss6.FieldByName('��ϵ�绰').AsString;
   a9:=Data1.ss6.FieldByName('ʵ�ս��').AsString;
   hykh := Data1.ss6.FieldByName('��Ա����').AsString;
//    a11:=Data1.ss6.FieldByName('��ƿ����').AsString;
   a11:=shopname;
   a8:=Data1.ss6.FieldByName('������').AsString;
   a12:='';
   a10:=Data1.ss6.FieldByName('��ƿ���').AsString;
   a13:=Data1.ss6.FieldByName('������ַ').AsString;//+':'+Data1.ss6.FieldByName('�绰').AsString;
   a14:=Data1.ss6.FieldByName('�µ���').AsString;
    a17:=Data1.ss6.FieldByName('��ע').AsString;
//   a17:=Data1.ss6.FieldByName('���֤').AsString;
   optdate:=Data1.ss6.FieldByName('����ʱ��').AsString;
   a3 := Data1.ss6.FieldByName('��Ʒ����').AsString;
  end
  else
  begin
    with data1.ss7 do
    begin
         edit5.text := FieldByName('����').AsString;
       edit9.Text := Edit5.Text;
     if edit5.text <> '' then   j := StrToFloat(Edit5.Text);
      Edit7.Text :=FieldByName('�ͻ�').AsString;
     Edit8.Text := FieldByName('��ϵ�绰').AsString;
      Edit17.Text := FieldByName('�ͻ����').AsString;
     Edit18.Text := FieldByName('������ַ').AsString;
     Edit13.Text := FieldByName('��Ա����').AsString;
     a2:=FieldByName('�ͻ����').AsString;
     a4:=FieldByName('�ͻ�').AsString;
     a5:=FieldByName('����').AsString;
     a6:=FieldByName('�˷�').AsString;
     a7:=FieldByName('����').AsString;
     atel:=FieldByName('��ϵ�绰').AsString;
     a9:=FieldByName('ʵ�ս��').AsString;
     hykh := FieldByName('��Ա����').AsString;
//    a11:=Data1.ss6.FieldByName('��ƿ����').AsString;
     a11:=shopname;
     a8:=FieldByName('������').AsString;
     a12:='';
     a10:=FieldByName('��ƿ���').AsString;
     a13:=FieldByName('������ַ').AsString;//+':'+Data1.ss6.FieldByName('�绰').AsString;
     a14:=FieldByName('�µ���').AsString;
     a17:=FieldByName('��ע').AsString;
//   a17:=Data1.ss6.FieldByName('���֤').AsString;
     optdate:=FieldByName('����ʱ��').AsString;
     a3 := FieldByName('��Ʒ����').AsString;
    end;
  end;
  AdvOfficeCheckBox3.Checked := False;
  AdvGlowButton2.Enabled := False;

  ComboBox1.Clear;
  with Data1.sqlcmd11 do
  begin
    close;
    sql.Text:='select stype from tpriceinfo where name='''+a3+''' ';
    Open;
    if not IsEmpty then  bottletype:=FieldByName('stype').AsString
    else bottletype:='';
    close;
    sql.Text:='select gptm from tb_khgp where khbh='''+Edit17.Text+''' ';
    open;
    if not IsEmpty then
    begin
      while not Eof do
      begin
        ComboBox1.Items.Add(FieldByName('gptm').AsString);
        Next;
      end;
    end;
    Close;
  end;

   RadioButton1.Checked := true;
   Edit4.Text :=Edit7.Text;
   Edit10.Text :=a17;
end;



end.

