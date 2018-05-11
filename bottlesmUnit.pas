unit bottlesmUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB,  PRRead_TLBUnit, bass, ExtCtrls;

type
  TForm303 = class(TForm)
    Edit7: TEdit;
    Label1: TLabel;
    Edit8: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ADOQuery1: TADOQuery;
    Memo1: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    ComboBox9: TComboBox;
    Label8: TLabel;
    ComboBox2: TComboBox;
    Button3: TButton;
    Memo2: TMemo;
    Label7: TLabel;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    Label9: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure readcount;
    procedure readcc;
    procedure MYIeProc(var MSG: TWMCopyData); message WM_COPYDATA;
  public
    { Public declarations }
  end;

var
  Form303: TForm303;

implementation

uses
  DbUnit, IniFiles,MainUnit,zcomm;

{$R *.dfm}
var
//  fipaddress: string;
//  fport: Integer;
  fczsn: Integer = 1;
  cxbool : Boolean;

procedure TForm303.readcc;
var
  shop, sdate, jydate,gpbh, s: string;
  i: Integer;
begin
  if Edit7.Text = '' then  Exit;
//   if Length(edit7.Text)>7 then
//   begin
//      s:=Edit7.Text;
//      Delete(s,1,Length(s)-10);
//      Edit7.Text:=s;
//   end;
  if Edit8.Text = '' then
  begin
    ShowMessage('请输入车牌号码');
    Edit8.SetFocus;
    Exit;
  end;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select id,bottleid,ScrapDate,NextProbe from tbBottle_Dossier where bottlebar=''' + edit7.Text + ''' or bottleid=''' + edit7.Text + ''' or gptm=''' + edit7.Text + ''' ');
  ADOQuery1.Open;
  if ADOQuery1.IsEmpty then
  begin
    ADOQuery1.Close;
    Edit7.Clear;
    Edit7.SetFocus;
    PlayMusic(6);    // 条码不存在
    exit;
  end
  else
  begin
    gpbh := ADOQuery1.FieldByName('bottleid').AsString;
    sdate := ADOQuery1.FieldByName('ScrapDate').AsString;
    jydate := ADOQuery1.FieldByName('NextProbe').AsString;
    ADOQuery1.Close;
  end;
  if Memo1.Lines.Count <> 0 then
    for I := 0 to Memo1.Lines.Count - 1 do
    begin
      if gpbh = Memo1.Lines.Strings[i] then
      begin
            //ShowMessage('已扫描过该条码');
        PlayMusic(13);
        Edit7.Clear;
        Edit7.SetFocus;
        Exit;
      end;
    end;
  if Text = '站台空瓶入库' then
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select id from tbZTKPin where bottlebar=''' + gpbh + '''');
    ADOQuery1.Open;
    if not ADOQuery1.IsEmpty then
    begin
           //ShowMessage('条码'+edit7.Text+'已经存在请重新扫描！');
      PlayMusic(13);
      Edit7.Clear;
      Edit7.SetFocus;
    end
    else
    begin
      try
        with ADOQuery1 do
        begin
          Close;
          SQL.Text:='select id,ShopCode from tbMDKPZC where bottlebar='''+gpbh+''' ';
          Open;
          if not IsEmpty then
          begin
            shop:=FieldByName('ShopCode').AsString;
            Close;
            SQL.Text:='delete from tbMDKPZC where bottlebar='''+gpbh+''' ';   //删除门店上车数据
            ExecSQL;
          end;
        end;
        ADOQuery1.Close;
        ADOQuery1.SQL.Text := 'delete from tbztqpcz where bottlebar=''' + gpbh + ''' ';   //删除重瓶库数据
        ADOQuery1.ExecSQL;
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add('Insert Into tbZTKPin (bottlebar,cdate,cuser,carid,qzid) values (''' + gpbh + ''',''' + datetimetostr(Now) + ''',''' + usercode + ''',''' + edit8.Text + ''','''+qzname+''')');
        ADOQuery1.ExecSQL;
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add('Insert Into tbZTKPinTJ (shopid,bottlebar,cdate,cuser,carid,qzid) values ('''+shop+''',''' + gpbh + ''',''' + datetimetostr(Now) + ''',''' + usercode + ''',''' + edit8.Text + ''','''+qzname+''')');
        ADOQuery1.ExecSQL;
        Memo1.Lines.Add(gpbh);
        readcount;
        PlayMusic(1);   //读取成功
        Edit7.Clear;
        Edit7.SetFocus;
      except
        ShowMessage('编号' + gpbh + '写入失败请重新扫描！');
      end;
    end;
  end;
  if Text = '站台气瓶充装' then
  begin
//    if (form29.StatusBar1.Panels[6].Text <> '充装枪') and (form29.StatusBar1.Panels[7].Text = '') then
//    begin
//      ShowMessage('请登陆充装工后才扫描');
//      Form31.ShowModal;
//      exit
//    end;
    if sdate <> '' then
      if sdate <= DateToStr(date) then
      begin
        Edit7.Clear;
        Edit7.SetFocus;
        PlayMusic(2);
            // ShowMessage('钢瓶'+edit7.Text+'已经报废！');
        exit;
      end;
    if jydate <> '' then
      if jydate <= DateToStr(Date) then
      begin
        Edit7.Clear;
        Edit7.SetFocus;
        PlayMusic(3);
            // ShowMessage('钢瓶'+edit7.Text+'已经 过期！');
        exit;
      end;
    try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select id from tbztkpin where bottlebar=''' + gpbh + ''' ');
      ADOQuery1.Open;
      if ADOQuery1.IsEmpty then
      begin
            // ShowMessage('没找到空瓶数据，确认已经空瓶入库');
        Edit7.Clear;
        Edit7.SetFocus;
        PlayMusic(5);
        exit;
      end;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select id from tbztqpcz where bottlebar=''' + gpbh + ''' ');
      ADOQuery1.Open;
      if not ADOQuery1.IsEmpty then
      begin
            // 已经充装
        Edit7.Clear;
        Edit7.SetFocus;
        PlayMusic(4);
        exit;
      end;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Insert Into tbztqpcz (bottlebar,Cdate,CUser,ctsn,cz,czzl,qzid) values (''' + gpbh + ''','+
      ' ''' + datetimetostr(Now) + ''',''' + loginname + ''',''' + log_czid + ''',''' + gettime + ''','''+edit1.Text+''','''+qzname+''')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Insert Into tbztqpczTJ (bottlebar,Cdate,CUser,ctsn,cz,czzl,qzid) values (''' + gpbh + ''','+
      ' ''' + datetimetostr(Now) + ''',''' + loginname + ''',''' + log_czid + ''',''' + gettime + ''','''+edit1.Text+''','''+qzname+''')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('delete tbztkpin where bottlebar=''' + gpbh + ''' ');
      ADOQuery1.ExecSQL;
      Memo1.Lines.Add(gpbh);
      PlayMusic(1);
      readcount;
      Edit7.Clear;
      Edit7.SetFocus;
    except
      PlayMusic(7);
    end;
  end;
  if Text = '充装后检查' then
  begin
    try
      if (ComboBox1.Text='') or (ComboBox3.Text='') then
      begin
        ShowMessage('请选择检查结果');
        Exit;
      end;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select id,stype from tbztqpcz where bottlebar=''' + gpbh + ''' ');
      ADOQuery1.Open;
      if ADOQuery1.IsEmpty then
      begin
            // 没找到充装数据
        Edit7.Clear;
        Edit7.SetFocus;
        PlayMusic(8);
        exit;
      end
      else
      begin
        if ADOQuery1.FieldByName('stype').AsString='1' then
        begin
          PlayMusic(9);;//已经检验完成
          Exit;
        end;
      end;
      if (ComboBox1.Text='合格') and (ComboBox3.Text='合格') then jydate:='1' else jydate:='0';
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('update tbztqpcz set Instate='''+jydate+''',stype=1 where bottlebar=''' + gpbh + ''' ');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('update tbztqpczTJ set stype=1,wgstype='''+ComboBox1.Text+''',fmstype='''+ComboBox3.Text+''' where bottlebar='''+gpbh+''' and stype=0');
      ADOQuery1.ExecSQL;
      Memo1.Lines.Add(gpbh);
      PlayMusic(1);
      readcount;
      Edit7.Clear;
      Edit7.SetFocus;
    except
      PlayMusic(7);
    end;
  end;
  if Text = '站台重瓶入库' then
  begin
    try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select id from tbztqpcz where bottlebar=''' + gpbh + ''' ');
      ADOQuery1.Open;
      if not ADOQuery1.IsEmpty then
      begin
            // ShowMessage('已经在重瓶库存在');
        PlayMusic(13);
         //  playmusics(playbcz);
        Edit7.Clear;
        Edit7.SetFocus;
        exit;
      end;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Insert Into tbZTZPin (bottlebar,cdate,cuser,carid,qzid) values (''' + gpbh + ''',''' + datetimetostr(Now) + ''',''' + usercode + ''',''' + edit8.Text + ''','''+qzname+''')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Insert Into tbztqpcz (bottlebar,cdate,cuser,carid,qzid) values (''' + gpbh + ''',''' + datetimetostr(Now) + ''',''' + usercode + ''',''' + edit8.Text + ''','''+qzname+''')');
      ADOQuery1.ExecSQL;
//      ADOQuery1.SQL.Clear;
//      ADOQuery1.SQL.Add('delete from tbMDZPZC where bottlebar=''' + gpbh + ''' '); //删除门店重瓶装车
//      ADOQuery1.ExecSQL;
      Memo1.Lines.Add(gpbh);
      readcount;
      PlayMusic(0);
      Edit7.Clear;
      Edit7.SetFocus;

    except
      PlayMusic(7);
    end;
  end;
  if Text = '站台重瓶出库' then
  begin
    try
      with ADOQuery1 do
      begin
//        Close;
//        SQL.Text:='select qzczsm from info ';
//        Open;
//        if not IsEmpty then
//        begin
//          cxbool := FieldByName('qzczsm').AsBoolean;
//        end;
        if cxbool then
        begin
          Close;
          SQL.Clear;
          SQL.Add('select Instate,stype from tbztqpcz where bottlebar=''' + gpbh + ''' ');
          Open;
          if ADOQuery1.IsEmpty then
          begin   //重瓶入库
            PlayMusic(12);
            Edit7.Clear;
            Edit7.SetFocus;
            exit;
          end
          else
          begin
            if ADOQuery1.FieldByName('stype').AsString = '0' then
            begin
              PlayMusic(10);
              Edit7.Clear;
             Edit7.SetFocus;
              //未检验
              Exit;
            end;
            if ADOQuery1.FieldByName('Instate').AsString = '0' then
            begin
              //检验不合格
              PlayMusic(11);
              Edit7.Clear;
              Edit7.SetFocus;
              Exit;
            end;
            ADOQuery1.Close;
            ADOQuery1.SQL.Clear;
            ADOQuery1.SQL.Add('delete from tbztqpcz where bottlebar=''' + gpbh + ''' ');
            ADOQuery1.ExecSQL;
          end;
        end
        else
        begin
           Close;
           SQL.Text:='Select BottleBar from tbZTZPOUT Where (BottleBar='''+gpbh+''') ';
           Open;
           if not IsEmpty then
           begin
             PlayMusic(13);
             Edit7.Clear;
             Edit7.SetFocus;   //已存在
             Exit;
           end;
           Close;
           SQL.Text:='Select BottleBar from tbZTKPin Where (BottleBar='''+gpbh+''') ';
           Open;
           if IsEmpty then
           begin
             PlayMusic(5);
             Edit7.Clear;
             Edit7.SetFocus;  //不存在该空瓶数据
             Exit;
           end;
           Close;
           SQL.Text:='delete from tbZTKPin where bottlebar='''+gpbh+''' ';//删除空瓶库
           ExecSQL;
        end;
      end;

      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Insert Into tbZTZPOUT (bottlebar,cdate,cuser,carid,qzid) values (''' + gpbh + ''',''' + datetimetostr(Now) + ''',''' + usercode + ''',''' + edit8.Text + ''','''+qzname+''')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Insert Into tbZTZPOUTTJ (bottlebar,cdate,cuser,carid,qzid) values (''' + gpbh + ''',''' + datetimetostr(Now) + ''',''' + usercode + ''',''' + edit8.Text + ''','''+qzname+''')');
      ADOQuery1.ExecSQL;

      Memo1.Lines.Add(gpbh);
      readcount;
      PlayMusic(1);
      Edit7.Clear;
      Edit7.SetFocus;
         ////   ShowMessage('出库成功');
    except
      PlayMusic(7);
    end;
  end;
  if Text = '站台空瓶出库' then
  begin

    try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select id from tbztkpin where bottlebar=''' + gpbh + ''' ');
      ADOQuery1.Open;
      if ADOQuery1.IsEmpty then
      begin
            // ShowMessage('没找到空瓶数据，确认已经空瓶入库');
        PlayMusic(5);
        Edit7.Clear;
        Edit7.SetFocus;
        exit;
      end;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;                                            //,djsn,pzr  单号 人
      ADOQuery1.SQL.Add('Insert Into tbZTKPOUT (bottlebar,cdate,cuser,carid,qzid) values (''' + gpbh + ''',''' + datetimetostr(Now) + ''',''' + usercode + ''',''' + edit8.Text + ''','''+qzname+''')');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('delete tbztkpin where bottlebar=''' + gpbh + ''' ');
      ADOQuery1.ExecSQL;
      Memo1.Lines.Add(gpbh);
      readcount;
      PlayMusic(1);
      Edit7.Clear;
      Edit7.SetFocus;
    except
      PlayMusic(7);
    end;
  end;
  if Text = '站台气瓶送检' then
  begin

    try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select id from tbztkpin where bottlebar=''' +gpbh + ''' ');
      ADOQuery1.Open;
      if ADOQuery1.IsEmpty then
      begin
             //ShowMessage('没找到空瓶数据，确认已经空瓶入库');
        PlayMusic(5);
        Edit7.Clear;
        Edit7.SetFocus;
        exit;
      end;
//      ADOQuery1.Close;
//      ADOQuery1.SQL.Clear;
//      ADOQuery1.SQL.Add('select * from tbMDKPZC where bottlebar=''' + edit7.Text + ''' ');
//      ADOQuery1.Open;
//      if ADOQuery1.IsEmpty then
//      begin
//            // ShowMessage('没找到门店空瓶数据，确认已经门店空瓶已装车');
//        PlayMusic(4);
//        Opentwojdq;
//        Edit7.Clear;
//        Edit7.SetFocus;
//        exit;
//      end
//      else
//        shop := ADOQuery1.FieldByName('shopcode').AsString;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Insert Into tbztqpjc (bottlebar,cdate,cuser,shopid,ttype,qzid) values (''' + gpbh + ''',''' + datetimetostr(Now) + ''',''' + usercode + ''',''' + Edit8.Text + ''',''1'','''+qzname+''')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('delete tbztkpin where bottlebar=''' + gpbh + ''' ');
      ADOQuery1.ExecSQL;
//      ADOQuery1.Close;
//      ADOQuery1.SQL.Clear;
//      ADOQuery1.SQL.Add('update tbBottle_Dossier set instate=3 where bottlebar=''' + edit7.Text + '''');
//      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      Memo1.Lines.Add(gpbh);
      readcount;
      PlayMusic(1);
      Edit7.Clear;         //tbBottle_Dossier instate
           // showmessage('送检成功');
    except
      PlayMusic(7);
    end;
    Exit;
  end;

  if Text = '气瓶送检完成' then
  begin
    if ComboBox9.ItemIndex = -1 then
    begin
      ShowMessage('请选择送检结果');
      Edit7.Clear;
      Edit7.SetFocus;
      exit;
    end;

    try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select id from tbztqpjc where bottlebar=''' + gpbh + ''' and ttype=1 ');
      ADOQuery1.Open;
      if ADOQuery1.IsEmpty then
      begin
        PlayMusic(14);
        Edit7.Clear;
        Edit7.SetFocus;
        exit;
      end;
      try
        if (jydate<>'') and (sdate<>'') then
        begin
          jydate:=DateToStr(strtodate(jydate)*365*4+1);
          if jydate>=sdate then jydate:=sdate;
          close;
          if combobox9.ItemIndex=0 then
            ADOQuery1.sql.Text:='update tbBottle_Dossier set NextProbe='''+jydate+''',Instate =''0'' where Bottleid='''+gpbh+''''
          else  ADOQuery1.sql.Text:='update tbBottle_Dossier set ScrapDate='''+FormatDateTime('yyyy-mm-dd HH:mm:ss' ,Now)+''',Instate =''1'' where Bottleid='''+gpbh+'''';
          ADOQuery1.ExecSQL;
        end;
      except

      end;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('update tbztqpjc set stype= ''' + inttostr(combobox9.ItemIndex) + ''',ttype=''0'' where bottlebar=''' + gpbh + '''');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Insert Into tbZTKPin (bottlebar,cdate,cuser,carid,stype,qzid) values (''' + gpbh + ''',''' + datetimetostr(Now) + ''',''' + usercode + ''',''' + edit8.Text + ''',2,'''+qzname+''')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Insert Into tbZTKPinTJ (bottlebar,cdate,cuser,carid,stype,qzid) values (''' + gpbh + ''',''' + datetimetostr(Now) + ''',''' + usercode + ''',''' + edit8.Text + ''',2,'''+qzname+''')');
      ADOQuery1.ExecSQL;
      ADOQuery1.Close;
      Memo1.Lines.Add(gpbh);
      readcount;
      PlayMusic(1);
      Edit7.Clear;
      Edit7.SetFocus;
         //   showmessage('送检完成成功');
    except
      PlayMusic(7);
    end;
    Exit;
  end;
end;

procedure TForm303.readcount;
begin
  Label5.Caption := IntToStr(Memo1.Lines.Count);
end;

procedure TForm303.Button3Click(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    0:
      playmusics(playbcz);
    1:
      playmusics(playcg);
    2:
      playmusics(playgq);
    3:
      playmusics(playbf);
  end;
end;

procedure TForm303.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if data1.adoconnection1.Connected then
  begin
    if Key = #13 then
    begin
      readcc;
    end;
  end;
end;

procedure TForm303.FormShow(Sender: TObject);
//var
//  ini: TIniFile;
begin
  BASS_Init(-1, 44100, 0, 0, nil);
//  ini := Tinifile.create(ExtractFilePath(paramstr(0)) + 'ReadCard.ini');
//  fipaddress := ini.ReadString(Trim(Form1.log_czq), 'ip', '192.168.1.111');
//  fport := ini.ReadInteger(trim(Form1.log_czq), 'Port', 6444);
//  ini.Free;
  if trim(log_czq) <> '' then
    fczsn := StrToInt(trim(log_czq));

  edit8.Clear;
  Edit7.Clear;
  edit1.Clear;
  Edit8.SetFocus;
  Memo1.Clear;
  Label5.Caption := '0';
  if Text = '站台气瓶充装' then
  begin
    Edit1.Visible := True;
    Label6.Visible := true;
  end
  else
  begin
    Edit1.Visible := False;
    Label6.Visible := False;
  end;
  if Text = '气瓶送检完成' then
  begin
    Label8.Visible := True;
    ComboBox9.Visible := True;
  end
  else
  begin
    Label8.Visible := False;
    ComboBox9.Visible := False;
  end;
  if Text = '充装后检查' then
  begin
    Label7.Visible := True;
    ComboBox1.Visible := True;
    Label9.Visible := True;
    ComboBox3.Visible := True;
  end
  else
  begin
    Label7.Visible := false;
    ComboBox1.Visible := False;
    Label9.Visible := False;
    ComboBox3.Visible := False;
  end;
  cxbool := True;
  if Text = '站台重瓶出库' then
  begin
    with ADOQuery1 do
    begin
       Close;
       SQL.Text:='select qzczsm from info ';
       Open;
       if not IsEmpty then
       begin
          cxbool := FieldByName('qzczsm').AsBoolean;
       end;
    end;
  end;
end;

procedure TForm303.MYIeProc(var MSG: TWMCopyData);
var
  str, ss, ss1: string;
  i, j, k: Integer;
  smu: Boolean;
begin
  if msg.CopyDataStruct^.dwData = WM_PRMSG then
  begin
    str := PAnsiChar(msg.CopyDataStruct^.lpData);  //获取参数数据
    Memo2.Lines.Add('处理前：' + str);
//      if Length(str)>=36 then
//      begin
//       j:=Length(str) div 36;
//       for  k:=1 to  j do
//      begin
//        ss1:=Copy(str,1,36);
//         ss:=Copy(ss1,13,20);
//         Delete(str,1,36) ;
//         smu:=False;
//       if Length(Trim(ss))<>20 then
//       Exit;
//        for   i:=1   to   Length(ss)   do
//       begin
//        if   (ss[i]   in   [ 'a'.. 'z', 'A'.. 'Z'])   then
//         smu:=True;
//       end;
//       if smu then Exit;
//
//        // Memo2.Lines.Add('处理中：'+str) ;
//       if memo1.Lines.Count<>0 then
//       begin
//         for I := 0 to memo1.Lines.Count-1 do
//         if ss=memo1.Lines.Strings[i] then
//         Exit;
//       end;
//       // Memo2.Lines.Add('处理后：'+ss) ;
//       Timer2.Enabled:=False;
//       Edit7.Text:=ss;
//
//     //  sendmessage(edit1.handle,WM_KEYDOWN,vk_return,0);
//      end;
//     end;
    if Length(str) >= 24 then
    begin
      j := Length(str) div 24;
      for k := 1 to j do
      begin
        ss1 := Copy(str, 1, 24);
        ss := Copy(ss1, 13, 8);
        Delete(str, 1, 24);
        smu := False;
        if Length(Trim(ss)) <> 8 then
          Exit;
        for i := 1 to Length(ss) do
        begin
          if (ss[i] in ['a'..'z', 'A'..'Z']) then
            smu := True;
        end;
        if smu then
          Exit;

        // Memo2.Lines.Add('处理中：'+str) ;
        if memo1.Lines.Count <> 0 then
        begin
          for I := 0 to memo1.Lines.Count - 1 do
            if ss = memo1.Lines.Strings[i] then
              Exit;
        end;
       // Memo2.Lines.Add('处理后：'+ss) ;
        Edit7.Text := ss;

     //  sendmessage(edit1.handle,WM_KEYDOWN,vk_return,0);
      end;
    end;
  end;

end;

end.


