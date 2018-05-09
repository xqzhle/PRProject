unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Grids, BaseGrid, AdvGrid, IniFiles, ComCtrls, DateUtils, ADODB, DB, ExtCtrls, OleServer, AcReport_TLB, CardUnit;

type
  TForm9 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADODataSet1: TADODataSet;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton4: TRadioButton;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    DateTimePicker2: TDateTimePicker;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Panel2: TPanel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Panel3: TPanel;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    ComboBox6: TComboBox;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    ADOQuery2: TADOQuery;
    Panel12: TPanel;
    Panel21: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    RadioButton3: TRadioButton;
    BitBtn3: TBitBtn;
    Panel42: TPanel;
    ComboBox4: TComboBox;
    ComboBox7: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    Edit18: TEdit;
    Edit2: TEdit;
    Panel22: TPanel;
    Edit8: TEdit;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Panel23: TPanel;
    Panel43: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure ComboBox7Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bo_statu, bo_right: integer;
  end;

var
  Form9: TForm9;

implementation

uses
   DbUnit;

{$R *.dfm}
var
  rpt_path: string = '';
  myini: TIniFile;
  ss: string = '';
  comp: string = '';
  tel: string = '';
  print: Boolean;

procedure TForm9.BitBtn1Click(Sender: TObject);
begin
//  if edit2.text = '' then
//  begin
//    showmessage('请读取钢瓶标签');
//    Edit2.SetFocus;
//    Exit;
//  end;
  if Edit2.Text <>'' then
  begin
  if Length(Edit2.Text)<>10 then
  begin
    showmessage('钢瓶标签为10位');
    Edit2.SetFocus;
    Exit;
  end;
  end;
  if edit3.text = '' then
  begin
    showmessage('请输入钢瓶编号');
    Edit2.SetFocus;
    Exit;
  end;
  if Length(Edit3.Text)<6 then
  begin
    showmessage('钢瓶编号至少6位');
    Edit3.SetFocus;
    Exit;
  end;
  if combobox2.Text='' then
  begin
    showmessage('请选择生成厂家');
    combobox2.SetFocus;
    exit;
  end;
  if combobox1.Text='' then
  begin
    showmessage('请选择钢瓶规格');
    combobox1.SetFocus;
    exit;
  end;
  if combobox3.Text='' then
  begin
    showmessage('请选择充装介质');
    combobox3.SetFocus;
    exit;
  end;
  if combobox4.Text='' then
  begin
    showmessage('请选择钢瓶类型');
    combobox4.SetFocus;
    exit;
  end;
  if combobox6.text='' then
  begin
    showmessage('请选择检验单位');
    combobox6.SetFocus;
    exit;
  end;
  if ComboBox7.ItemIndex=-1 then
  begin
    showmessage('请选择检测次数再保存！');
    ComboBox7.SetFocus;
    exit;
  end;
  if RadioButton1.Checked then
    bo_statu := 0;    //正常
  if RadioButton2.Checked then
    bo_statu := 1;    // 检测
  if RadioButton3.Checked then
    bo_statu := 2;    // 丢失
  if RadioButton4.Checked then
    bo_statu := 3;    //报废
  if RadioButton5.Checked then
    bo_right := 0;
  if RadioButton6.Checked then
    bo_right := 1;

  //钢瓶规格
  if ( (trim(edit3.Text) <> '') and (form9.Caption = '钢瓶信息-新增')) then
  begin
    try
      if trim(edit2.Text) <>'' then
      begin
        adodataset1.Active := false;
        adodataset1.Filtered := false;
        adodataset1.CommandText := '';
        adodataset1.CommandText := 'Select id From tbBottle_Dossier Where BottleBar=' + '''' + trim(edit2.Text) + '''';
        adodataset1.Active := true;
        if not adodataset1.IsEmpty then
        begin
          showmessage('钢瓶标签:' + trim(edit2.Text) + '已有，请重新写');
          edit2.SetFocus;
          exit;
        end;
      end;
        adodataset1.Active := false;
        adodataset1.Filtered := false;
        adodataset1.CommandText := '';
        adodataset1.CommandText := 'Select BottleID From tbBottle_Dossier Where BottleID=' + '''' + trim(edit3.Text) + '''';
        adodataset1.Active := true;
        if not adodataset1.IsEmpty then
        begin
          showmessage('钢瓶编号:' + trim(edit3.Text) + '已有，请重新写');
          edit3.SetFocus;
          exit;
        end;
      if edit8.Text<>'' then
      begin
        adodataset1.Active := false;
        adodataset1.Filtered := false;
        adodataset1.CommandText := '';
        adodataset1.CommandText := 'Select BottleID From tbBottle_Dossier Where gptm=' + '''' + trim(edit8.Text) + '''';
        adodataset1.Active := true;
        if not adodataset1.IsEmpty then
        begin
          showmessage('钢瓶条码:' + trim(edit8.Text) + '已有，请重新写');
          edit3.SetFocus;
          exit;
        end;
      end;
      try
        adoquery1.Active := false;
        adoquery1.SQL.Clear;  //PlanThick,workPressure, Waterpressure,  InitialVolume
        adoquery1.SQL.Add('Insert Into tbBottle_Dossier (Probe_id,BottleBar,FactoryId,Bottleid,BottleRight,TypeId,SpecId,Remark,CreateUser,CreateDate,MakeTime,BuysDate,Lastdate,NextProbe,ScrapDate,chickname,InitialHeft,' +
        'Instate,BottleAction,classid,chickcs,gptm)' + ' Values ( ' + '''' + edit10.text + '''' + ', ' + '''' + edit2.Text + '''' + ',:y' + ',' +
         '''' + edit3.Text + '''' + ',' + '''' + inttostr(bo_right) + '''' + ',:x,:z,' + '''' + edit7.text + '''' + ',' + '''' + edit13.Text + ''',:A,:B,:C,:D,:E,:F,:G,''' + edit9.Text + ''',' +
         ':s,:u,:j,:m,'''+trim(edit8.Text)+''')');
        adoquery1.Parameters.ParamByName('A').Value := Date;                 //建库日期
        adoquery1.Parameters.ParamByName('B').Value := datetimepicker1.Date; //生产日期
        adoquery1.Parameters.ParamByName('C').Value := datetimepicker1.Date; //购买日期，与生产日期一样
        adoquery1.Parameters.ParamByName('D').Value := datetimepicker2.Date; //检测日期，
        adoquery1.Parameters.ParamByName('E').Value := datetimepicker3.Date; //下一次检测日期
        adoquery1.Parameters.ParamByName('F').Value := datetimepicker4.Date; //报废日期
        adoquery1.Parameters.ParamByName('s').Value := IntToStr(bo_statu);
        adoquery1.Parameters.ParamByName('u').Value := '0';   //注销标记
        adoquery1.Parameters.ParamByName('m').Value := ComboBox7.ItemIndex + 1;
        ADOQuery1.Parameters.ParamByName('y').Value := ComboBox2.Text;
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;
          ADOQuery2.SQL.Add('select name_id from tb_Inspection where name=:ss');
          adoquery2.Parameters.ParamByName('ss').Value := combobox6.text;
          ADOQuery2.Open;
          if not ADOQuery2.IsEmpty then
          begin
            ADOQuery1.Parameters.ParamByName('G').Value := ADOQuery2.Fields[0].AsString;
          end;
          ADOQuery2.Close;
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;
          ADOQuery2.SQL.Add('select type_id from tbBottle_class where type_name=:ss');
          adoquery2.Parameters.ParamByName('ss').Value := combobox3.text;
          ADOQuery2.Open;
          if not ADOQuery2.IsEmpty then
          begin
            ADOQuery1.Parameters.ParamByName('x').Value := ADOQuery2.Fields[0].AsString;
          end;
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;
          ADOQuery2.SQL.Add('select spec_ID from tbbottle_spec where spec_name=:ss');
          adoquery2.Parameters.ParamByName('ss').Value := combobox1.text;
          ADOQuery2.Open;
          if not ADOQuery2.IsEmpty then
          begin
            ADOQuery1.Parameters.ParamByName('z').Value := ADOQuery2.Fields[0].AsString;
          end;
          ADOQuery2.Close;
          ADOQuery2.SQL.Clear;
          ADOQuery2.SQL.Add('select class_ID from tbBottle_Type where class_name=:ss');
          adoquery2.Parameters.ParamByName('ss').Value := combobox4.text;
          ADOQuery2.Open;
          if not ADOQuery2.IsEmpty then
          begin
            ADOQuery1.Parameters.ParamByName('j').Value := ADOQuery2.Fields[0].AsString;
          end;
          ADOQuery1.Close;

        adoquery1.ExecSQL;
        ShowMessage('钢瓶信息添加成功！');
        Edit2.Clear;
        Edit3.Clear;
//        if CheckBox4.Checked then
//        begin
//          ACRptEngine1.init;
//          ACRptEngine1.AddGlobalVariable('使用单位', ss);
//          ACRptEngine1.AddGlobalVariable('tm', edit2.Text);
//          ACRptEngine1.AddVariable('tel', tel);
//          ACRptEngine1.AddVariable('comp', comp);
//          ACRptEngine1.SetReportFile(rpt_path + 'carprint.apt');
//          ACRptEngine1.Print;
//        end;
      except
      end

    except

    end;

  end
  else if (trim(edit3.Text) <> '') and (form9.Caption = '钢瓶信息-修改') then
  begin
    try
      if trim(edit2.Text) <>'' then
      begin

        adodataset1.Active := false;
        adodataset1.Filtered := false;
        adodataset1.CommandText := '';
        adodataset1.CommandText := 'Select id From tbBottle_Dossier Where BottleBar=' + '''' + trim(edit2.Text) + ''' and id<>''' + trim(edit18.Text) + ''' ';
        adodataset1.Active := true;
        if not adodataset1.IsEmpty then
        begin
          showmessage('钢瓶标签:' + trim(edit3.Text) + '已有，请重新输入');
          edit2.SetFocus;
          exit;
        end;
      end;
        adodataset1.Active := false;
        adodataset1.Filtered := false;
        adodataset1.CommandText := '';
        adodataset1.CommandText := 'Select BottleID From tbBottle_Dossier Where BottleID=' + '''' + trim(edit3.Text) + ''' and id<>''' + trim(edit18.Text) + ''' ';
        adodataset1.Active := true;
        if not adodataset1.IsEmpty then
        begin
          showmessage('钢瓶编号:' + trim(edit3.Text) + '已有，请重新输入');
          edit3.SetFocus;
          exit;
        end;
      if edit8.Text<>'' then
      begin
        adodataset1.Active := false;
        adodataset1.Filtered := false;
        adodataset1.CommandText := '';
        adodataset1.CommandText := 'Select BottleID From tbBottle_Dossier Where gptm=' + '''' + trim(edit8.Text) + ''' and id<>''' + trim(edit18.Text) + ''' ';
        adodataset1.Active := true;
        if not adodataset1.IsEmpty then
        begin
          showmessage('钢瓶条码:' + trim(edit8.Text) + '已有，请重新写');
          edit3.SetFocus;
          exit;
        end;
      end;
      adoquery1.Active := false;
      adoquery1.SQL.Clear;                                    //WorksNumber=:j,
      adoquery1.SQL.Add('Update tbBottle_Dossier Set MakeTime=:l,Remark=:k,Probe_id=:y ,TypeId=:h,FactoryId=:g ,specid=' +
      ' :b,classid=:x,chickcs=:m,DossierID=''' + edit1.Text + ''',InitialHeft=''' + trim(Edit9.Text) + ''',gptm=''' + trim(Edit8.Text) + ''',' +
      ' ScrapDate=:z,chickname=:c,BottleID=''' + trim(edit3.Text) + ''',UpdateUser=''' + edit14.Text + ''',UpdateDate=:A,bottlebar=''' + edit2.Text + ''',stype=''0'',' +
      ' Bottleright=''' + inttostr(bo_right) + ''',Instate=''' + inttostr(bo_statu) + ''',NextProbe='''+datetostr(datetimepicker3.Date)+''',Lastdate='''+datetostr(datetimepicker2.Date)+''' Where id=''' + trim(edit18.Text) + '''');
      //initialvolume=''' + trim(edit4.Text) + ''', planthick=''' + trim(edit5.Text) + ''',  workPressure=''' + trim(edit6.Text) + ''',
      adoquery1.Parameters.ParamByName('A').Value := Date;
      adoquery1.Parameters.ParamByName('z').Value := datetimepicker4.Date; //报废日期
      adoquery1.Parameters.ParamByName('y').Value := Edit10.Text; //检验编号
//      adoquery1.Parameters.ParamByName('j').Value := Edit8.Text; //识别编号
      adoquery1.Parameters.ParamByName('k').Value := Edit7.Text; //备注
      adoquery1.Parameters.ParamByName('l').Value := datetimepicker1.Date; //生产日期
      adoquery1.Parameters.ParamByName('m').Value := ComboBox7.ItemIndex + 1; //检验次数
      ADOQuery1.Parameters.ParamByName('g').Value := ComboBox2.Text;
      ADOQuery2.Close;
      ADOQuery2.SQL.Clear;
      ADOQuery2.SQL.Add('select s.spec_id from tbbottle_spec s ,tbBottle_Dossier i where s.spec_name=:c and i.DossierID=' + '''' + trim(edit1.Text) + '''');
      adoquery2.Parameters.ParamByName('c').Value := ComboBox1.Text;
      ADOQuery2.Open;
      if not ADOQuery2.IsEmpty then
        adoquery1.Parameters.ParamByName('b').Value := ADOQuery2.Fields[0].AsString;
      ADOQuery2.Close;
      if combobox6.Text <> '' then
      begin
            // ADOQuery2.Close;
        ADOQuery2.SQL.Clear;
        ADOQuery2.SQL.Add('select name_id from tb_Inspection where name=:ss');
        adoquery2.Parameters.ParamByName('ss').Value := combobox6.text;
        ADOQuery2.Open;
        if not ADOQuery2.IsEmpty then
        begin
          ADOQuery1.Parameters.ParamByName('c').Value := ADOQuery2.Fields[0].AsString;
        end;
        ADOQuery2.Close;
        ADOQuery2.SQL.Clear;
        ADOQuery2.SQL.Add('select type_id from tbBottle_class where type_name=:ss');
        adoquery2.Parameters.ParamByName('ss').Value := combobox3.text;
        ADOQuery2.Open;
        if not ADOQuery2.IsEmpty then
        begin
          ADOQuery1.Parameters.ParamByName('h').Value := ADOQuery2.Fields[0].AsString;
        end;
        ADOQuery2.Close;
        ADOQuery2.SQL.Clear;
        ADOQuery2.SQL.Add('select class_ID from tbBottle_Type where class_name=:ss');
        adoquery2.Parameters.ParamByName('ss').Value := combobox4.text;
        ADOQuery2.Open;
        if not ADOQuery2.IsEmpty then
        begin
          ADOQuery1.Parameters.ParamByName('x').Value := ADOQuery2.Fields[0].AsString;
        end;
        ADOQuery2.Close;
      end;
      adoquery1.ExecSQL;
      ShowMessage('数据修改成功');
//      ModalResult := mrOK;
      ModalResult := mrCancel;
      Close;

    except
     ShowMessage('数据修改失败');
    end;
  end;
end;

procedure TForm9.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TForm9.BitBtn3Click(Sender: TObject);
begin
  if  (trim(edit18.Text) <> '') and (form9.Caption = '钢瓶信息-修改') then
  begin
    if application.MessageBox('确认要注销该钢瓶吗？', pwidechar(Application.Title), mb_yesno) = idno then
      abort;
    try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('delete tbBottle_Dossier  Where id=''' + trim(edit18.Text) + ''' ');
      ADOQuery1.ExecSQL;
      adoquery1.Active:=false;
      adoquery1.SQL.Clear;
      adoquery1.SQL.Add('Delete From tbZTKPIN Where BottleBar='''+trim(edit3.Text)+''' ');
      adoquery1.ExecSQL;
      adoquery1.Active:=false;
      adoquery1.SQL.Clear;
      adoquery1.SQL.Add('Delete From tbZTQPCZ Where BottleBar='''+trim(edit3.Text)+'''');
      adoquery1.ExecSQL;
      adoquery1.Active:=false;
      adoquery1.SQL.Clear;
      adoquery1.SQL.Add('Delete From tbStock_In Where BottleBar='''+trim(edit3.Text)+'''');
      adoquery1.ExecSQL;
      adoquery1.Active:=false;
      adoquery1.SQL.Clear;
      adoquery1.SQL.Add('Delete From tbMDKPZC Where BottleBar='''+trim(edit3.Text)+'''');
      adoquery1.ExecSQL;
      ModalResult := mrOK;
    except

    end;
    ADOQuery1.Close;
  end;

end;


procedure TForm9.Button1Click(Sender: TObject);
var
  s1, s2, s3: string;
  jbar: string;
begin
  if application.MessageBox('确认要重新生成条码吗？这样会改写该条码的所有数据？', '提示信息', mb_yesno) = idno then
    abort;
  if ((trim(edit3.Text) = '') or (length(trim(edit3.Text)) < 6) or (length(trim(edit3.Text)) > 6)) then
  begin
    showmessage('请输入六位钢瓶编号后再生成！');
    edit3.SetFocus;
    exit;
  end;
  adodataset1.Active := false;
  adodataset1.Filtered := false;
  adodataset1.CommandText := '';
  adodataset1.CommandText := 'Select BottleID From tbBottle_Dossier Where BottleID=' + '''' + trim(edit3.Text) + '''';
  adodataset1.Active := true;
  if not adodataset1.IsEmpty then
  begin
    showmessage('自编号重复请重新输入！');
    edit3.SetFocus;
    adodataset1.Active := false;
    exit;
  end;
  adodataset1.Active := false;
  jbar := trim(edit2.Text);
         //厂家（1位）+购入日期（4位）+检验日期（1位）
  DateTimeToString(s2, 'YYMM', datetimepicker1.Date);
  if ComboBox1.Text <> '' then
    s3 := '1'; //inttostr(combobox2.ItemIndex);
  if s3 = '-1' then
    s3 := '0';
  edit2.Text := trim(s3) + s2 + '0' + s1 + trim(edit3.Text);
  try
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.sql.Text := 'update tbMDZPXC set BottleBar=''' + edit2.Text + ''' where bottlebar=''' + jbar + ''' ';
    ADOQuery1.ExecSQL;
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.sql.Text := 'update tbMDKPZC set BottleBar=''' + edit2.Text + ''' where bottlebar=''' + jbar + ''' ';
    ADOQuery1.ExecSQL;
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.sql.Text := 'update tbSale_Out set BottleBar=''' + edit2.Text + ''' where bottlebar=''' + jbar + ''' ';
    ADOQuery1.ExecSQL;
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.sql.Text := 'update tbStock_In set BottleBar=''' + edit2.Text + ''' where bottlebar=''' + jbar + ''' ';
    ADOQuery1.ExecSQL;
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.sql.Text := 'update tbMDQPZC set BottleBar=''' + edit2.Text + ''' where bottlebar=''' + jbar + ''' ';
    ADOQuery1.ExecSQL;
    showmessage('数据更新完成!');
  except
    showmessage('数据更新失败')
  end;
end;

procedure TForm9.FormShow(Sender: TObject);
var
  s1, s2: string;
//  leng: Integer;
//  myinifile: Tinifile;
//  i: Integer;
//  tempstr, ssid: string;
begin
//  myinifile := Tinifile.create(ExtractFilePath(paramstr(0)) + 'login.ini');
//  bzstr := myinifile.ReadString('user', 'sn', '333CH');
//  leng := Length(bzstr);
//  myinifile.Free;
  if data1.ADOConnection1.Connected then
  begin
    //    ComboBox6.Clear;
    if ComboBox6.Items.Count=0 then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select name from tb_Inspection');
      ADOQuery1.Open;
      if not ADOQuery1.IsEmpty then
      begin
        while not ADOQuery1.Eof do
        begin
          ComboBox6.Items.Add(ADOQuery1.Fields[0].AsString);
          ADOQuery1.Next;
        end;
      end;
    end;
    if ComboBox4.Items.Count=0 then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select class_name from tbBottle_Type');
      ADOQuery1.Open;
      if not ADOQuery1.IsEmpty then
      begin
        while not ADOQuery1.Eof do
        begin
          ComboBox4.Items.Add(ADOQuery1.Fields[0].AsString);
          ADOQuery1.Next;
        end;
      end;
    end;
    ComboBox6.ItemIndex := 0;
    ComboBox4.ItemIndex := 1;
    ADOQuery1.Close;
    ComboBox1.ItemIndex := -1;
    if  (form9.Caption = '钢瓶信息-修改') then
    begin

     //  try
      Edit14.Text := form1.shang_log_name;
      Edit16.Text := datetostr(Date);
      s1 := form1.sp.FieldByName('状态').AsString;
      s2 := form1.sp.FieldByName('产权').AsString;
      if s1 = '在用' then
        RadioButton1.Checked := True;
      if s1 = '报废' then
        RadioButton2.Checked := True;
      if s1 = '检验' then
        RadioButton4.Checked := True;
      if s1 = '丢失' then
        RadioButton3.Checked := True;
      if s2 = '自有' then
        RadioButton5.Checked := True;
      if s2 = '非自有' then
        RadioButton6.Checked := True;
//         edit1.Text:=form1.sp.FieldByName('登记代码').AsString;
      edit2.Text := form1.sp.FieldByName('钢瓶标签').AsString;
      edit3.Text := form1.sp.FieldByName('钢瓶编号').AsString;
//      edit4.Text := form1.sp.FieldByName('钢瓶容积').AsString;
//      edit5.Text := form1.sp.FieldByName('钢瓶壁厚').AsString;
//      edit6.Text := form1.sp.FieldByName('工作压力').AsString;
      edit7.Text := form1.sp.FieldByName('备注').AsString;
//         edit8.Text:=form1.sp.FieldByName('制造编号').AsString;
      edit9.Text := form1.sp.FieldByName('钢瓶重量').AsString;
      edit8.Text := form1.sp.FieldByName('钢瓶条码').AsString;
      edit10.Text := form1.sp.FieldByName('检验编号').AsString;
      edit18.Text := form1.sp.FieldByName('序号').AsString;
//      edit11.Text := form1.sp.FieldByName('水压压力').AsString;
      combobox6.Text := form1.sp.FieldByName('检测单位').AsString;
      combobox4.Text := form1.sp.FieldByName('钢瓶类型').AsString;
      ComboBox7.ItemIndex := Form1.sp.FieldByName('检验次数').AsInteger - 1;
      datetimepicker1.DateTime := form1.sp.FieldByName('制造日期').Value;
      datetimepicker2.DateTime := form1.sp.FieldByName('最新检验日期').Value;
      datetimepicker3.DateTime := form1.sp.FieldByName('下检日期').Value;
      datetimepicker4.DateTime := form1.sp.FieldByName('报废日期').Value;
//      ssid := Trim(Edit2.Text);

      BitBtn3.Visible := True;
      Edit4.Enabled := False;
      Edit6.Enabled := False;
      Edit11.Enabled := False;
      BitBtn1.Enabled := True;
      button1.Visible := true;

    end;
    if form9.Caption = '钢瓶信息-新增' then
    begin
      try
        Edit13.Text := form1.shang_log_name;
        RadioButton1.Checked := True;
        RadioButton5.Checked := True;
        Edit15.Text := datetimetostr(date);
        ComboBox7.ItemIndex := -1;
        ComboBox4.ItemIndex := 0;
        datetimepicker1.Date := date;
        datetimepicker2.Date := date;
        datetimepicker3.date := datetimepicker2.Date + 365 * 4 + 1;
        if DateTimePicker1.Date < StrToDate('2006-07-01') then
          datetimepicker4.date := datetimepicker1.Date + 365 * 15 + 3
        else
          datetimepicker4.date := datetimepicker1.Date + 365 * 8 + 3;
        BitBtn3.Visible := False;
        adodataset1.Active := false;
        BitBtn1.Enabled := True;
        Edit4.Enabled := True;
        Edit6.Enabled := True;
        Edit11.Enabled := True;
        Edit3.Enabled := True;
        button1.Visible := false;
        edit1.Clear;
        Edit2.Clear;
        Edit3.Clear;
        edit4.Clear;
        Edit5.Clear;
        Edit6.Clear;
        Edit7.Clear;
        Edit8.Clear;
        edit9.Clear;
        Edit10.Clear;
        Edit11.Clear;
        ComboBox1.text := '';
        ComboBox2.text := '';
        ComboBox3.ItemIndex := 0;
         // CheckBox2.Visible:=True;
        rpt_path := ExtractFilePath(ParamStr(0)) + '\report\';
        myini := TIniFile.Create(ExtractFilePath(paramstr(0)) + 'login.ini');
        ss := myini.ReadString('user', 'formname', '') + '钢瓶管理系统';
        comp := myini.ReadString('user', 'comp', '');
        tel := '送气电话:' + myini.ReadString('user', 'tel', '');
        ComboBox2.Enabled := True;
        CheckBox4.Checked := False;
      except


      end;
    end;

  end
  else  showmessage('没有接数据库');
//  RadioButton9.Checked := True;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  ComboBox6.Clear;
  ComboBox4.Clear;
end;

procedure TForm9.ComboBox7Change(Sender: TObject);
begin
  case ComboBox7.ItemIndex of
    0:
      begin
        if RadioButton9.Checked then
        begin
          datetimepicker4.date := datetimepicker1.Date + 365 * 8 + 2;
          BitBtn1.Enabled := True;
        end
        else
        begin
          datetimepicker4.date := datetimepicker1.Date + 365 * 12 + 3;
          BitBtn1.Enabled := True;
        end;
      end;
    1:
      begin
        if RadioButton9.Checked then
        begin
          datetimepicker4.date := datetimepicker1.Date + 365 * 8 + 2;
          BitBtn1.Enabled := True;
        end
        else
        begin
          datetimepicker4.date := datetimepicker1.Date + 365 * 12 + 3;
          BitBtn1.Enabled := True;
        end;
      end;
     2:
      begin
        datetimepicker4.date := datetimepicker1.Date + 365 * 4 + 1;
        BitBtn1.Enabled := True;
      end;
  end;
end;

procedure TForm9.DateTimePicker1Change(Sender: TObject);
begin
  if DateTimePicker1.Date < StrToDate('2006-07-01') then
    datetimepicker4.date := datetimepicker1.Date + 365 * 15 + 3
  else   datetimepicker4.date := datetimepicker1.Date + 365 * 8 + 3;
end;

procedure TForm9.DateTimePicker2Change(Sender: TObject);
var
 s:string;
begin
  datetimepicker3.date := datetimepicker2.Date + 365 * 4 + 1;
  s := FormatDateTime('yymm' ,datetimepicker3.date);
  Edit8.Text := '08'+s+trim(Edit3.Text);
end;

procedure TForm9.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Not (key in ['0'..'9', #8,'a'..'z' ,'A'..'Z']) then  key:=#0;
end;

procedure TForm9.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
// if not (Key in ['0'..'9','.',#8,#13]) then   Key:=#0;
end;

procedure TForm9.RadioButton10Click(Sender: TObject);
begin
  datetimepicker4.date := datetimepicker1.Date + 365 * 12 + 4;
end;

procedure TForm9.RadioButton1Click(Sender: TObject);
begin//钢瓶规格
//bo_statu:=(sender as TRadioButton).TabOrder;
end;

procedure TForm9.RadioButton5Click(Sender: TObject);
begin//钢瓶产权
//bo_right:=(sender as TRadioButton).TabOrder;
end;

procedure TForm9.RadioButton9Click(Sender: TObject);
begin
  datetimepicker4.date := datetimepicker1.Date + 365 * 8 + 3;
end;

procedure TForm9.ComboBox1Change(Sender: TObject);
begin
  if combobox1.ItemIndex < 0 then  exit; //没有选择
  case combobox1.ItemIndex of
    0:
      begin//YSP2
//        edit4.Text := '8';   //容积
//        edit5.Text := '3.1';   //
//        edit6.Text := '2.1'; //工作压
//        edit11.Text := '3.2'; //水压
        edit9.Text := '2';    //钢瓶重量
        ComboBox4.ItemIndex := 0;
      end;
    1:
      begin//YSP5
//        edit4.Text := '12';
//        edit5.Text := '3.1';
//        edit6.Text := '2.1';
//        edit11.Text := '3.2'; //水压
        edit9.Text := '6.5';   //钢瓶重量
        ComboBox4.ItemIndex := 0;
      end;
    2:
      begin//YSP15
//        edit4.Text := '35.5';
//        edit5.Text := '3.1';
//        edit6.Text := '2.1';
//        edit11.Text := '3.2'; //水压
        edit9.Text := '16.5';   //钢瓶重量
        ComboBox4.ItemIndex := 0;
      end;
    3:
      begin//YSP50
//        edit4.Text := '118';
//        edit5.Text := '3.1';
//        edit6.Text := '2.1';
//        edit11.Text := '3.2'; //水压
        edit9.Text := '45';   //钢瓶重量
        ComboBox4.ItemIndex := 1;
      end;
  else


  end;
end;

end.


