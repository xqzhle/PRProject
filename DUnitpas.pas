unit DUnitpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, StdCtrls, RzButton,
  tmsAdvGridExcel, DB, ADODB,ShellAPI, AdvPanel, AdvUtil, MemDS, DBAccess, Uni,
  ImgList;

type
  TDForm = class(TForm)
    Panel1: TPanel;
    Memo2: TMemo;
    StringGrid1: TAdvStringGrid;
    Label23: TLabel;
    ComboBox6: TComboBox;
    Label13: TLabel;
    ComboBox13: TComboBox;
    Label6: TLabel;
    ComboBox5: TComboBox;
    ComboBox8: TComboBox;
    Label5: TLabel;
    ComboBox7: TComboBox;
    Label12: TLabel;
    ComboBox12: TComboBox;
    Label11: TLabel;
    ComboBox14: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    RzToolButton9: TRzToolButton;
    RzToolButton8: TRzToolButton;
    RzToolButton10: TRzToolButton;
    AdvGridExcelIO2: TAdvGridExcelIO;
    OpenDialog1: TOpenDialog;
    AdvPanel7: TAdvPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    ADOQuery1: TUniQuery;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure RzToolButton10Click(Sender: TObject);
    procedure ComboBox12Change(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DForm: TDForm;

implementation

uses DbUnit,MainUnit;

{$R *.dfm}
var
  dsum:Integer;
procedure TDForm.ComboBox12Change(Sender: TObject);
begin
  ComboBox9.ItemIndex:=ComboBox12.ItemIndex;
end;

procedure TDForm.ComboBox8Change(Sender: TObject);
begin
  ComboBox11.ItemIndex:=ComboBox8.ItemIndex;
end;

procedure TDForm.FormShow(Sender: TObject);
begin
  ComboBox5.ItemIndex:=0;
  ComboBox6.Clear;
  ComboBox7.Clear;
  ComboBox13.Clear;
  ComboBox14.Clear;
  ComboBox10.Clear;
  ComboBox6.Items:=MainForm.ComboBox3.Items;
  ComboBox7.Items:=MainForm.ComboBox4.Items;
  ComboBox13.Items:=MainForm.ComboBox2.Items;
  ComboBox12.Clear;
  ComboBox9.Clear;
  ComboBox8.Clear;
  ComboBox11.Clear;
  with ADOQuery1 do
  begin
    Close;
    sql.Text:='select name,name_id from tb_Inspection';
    Open;
    if not ADOQuery1.IsEmpty then
    begin
      while not ADOQuery1.Eof do
      begin
        ComboBox12.Items.Add(ADOQuery1.FieldByName('name').AsString);
        ComboBox9.Items.Add(ADOQuery1.FieldByName('name_id').AsString);
        ADOQuery1.Next;
      end;
    end;
    Close;
    sql.Text:='select class_ID,class_name from tbBottle_Type';
    Open;
    if not ADOQuery1.IsEmpty then
    begin
      while not ADOQuery1.Eof do
      begin
        ComboBox8.Items.Add(ADOQuery1.FieldByName('class_name').AsString);
        ComboBox11.Items.Add(ADOQuery1.FieldByName('class_ID').AsString);
        ADOQuery1.Next;
      end;
    end;
  end;
  label1.Caption :='';
  AdvPanel7.visible := False;
end;

procedure TDForm.RzToolButton10Click(Sender: TObject);
var
  I,d,ii:Integer;
  date1,sqlstr,gpbq:string;
begin
//  if trim(StringGrid1.Cells[0,1])='' then
//  begin
//    ShowMessage('没有数据不能导入');
//    Exit;
//  end;
  if ComboBox6.Text = '' then
  begin
    ShowMessage('请选择钢瓶规格');
    Exit;
  end;
  if ComboBox5.Text = '' then
  begin
    ShowMessage('请选择钢瓶产权');
    Exit;
  end;
  if ComboBox13.Text = '' then
  begin
    ShowMessage('请选择生产厂家');
    Exit;
  end;
  if ComboBox12.Text = '' then
  begin
    ShowMessage('请选择检验单位');
    Exit;
  end;
  if ComboBox7.Text = '' then
  begin
    ShowMessage('请选择充装介质');
    Exit;
  end;
  if ComboBox8.Text = '' then
  begin
    ShowMessage('请选择钢瓶类型');
    Exit;
  end;

  Memo2.Clear;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text:='select spec_ID from tbbottle_spec where spec_name=''' +combobox6.Text+''' ';
  ADOQuery1.Open;
  if not ADOQuery1.IsEmpty  then
  begin
    ComboBox14.Text:=ADOQuery1.FieldByName('spec_ID').AsString;
  end;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text:='select type_id from tbBottle_class where type_name=''' +combobox7.Text+''' ';
  ADOQuery1.Open;
  if not ADOQuery1.IsEmpty  then
  begin
    ComboBox10.Text:=ADOQuery1.FieldByName('type_id').AsString;
  end;
  AdvPanel7.visible := True;
  try
    for I := 1 to stringgrid1.RowCount - 1 do
    begin
      Application.ProcessMessages;
      Label3.Caption:=IntToStr(i)+'/'+inttostr(stringgrid1.RowCount - 1);
      if  (trim(StringGrid1.Cells[1,i])<>'') and (trim(StringGrid1.Cells[3,i])<>'') and (trim(StringGrid1.Cells[4,i])<>'') then
      begin
        gpbq := trim(StringGrid1.Cells[0,i]);
//        if Length(gpbq)<10 then
//        begin
//          for ii := Length(gpbq) to 9 do
//          begin
//            gpbq := '0'+gpbq;
//          end;
//        end;
//        ADOQuery1.Close;
//        ADOQuery1.SQL.Text:='Select id From tbBottle_Dossier Where BottleBar=''' +gpbq+''' ';
//        ADOQuery1.Open;
//        if ADOQuery1.IsEmpty  then
//        begin
          ADOQuery1.Close;
          ADOQuery1.SQL.Text:='Select id From tbBottle_Dossier Where BottleID=''' +trim(StringGrid1.Cells[1,i])+''' ';
          ADOQuery1.Open;
          if ADOQuery1.IsEmpty then
          begin
            if trim(StringGrid1.Cells[6,i]) <>'' then
            begin
              ADOQuery1.Close;
              ADOQuery1.SQL.Text:='Select id From tbBottle_Dossier Where gptm=''' +trim(StringGrid1.Cells[6,i])+''' ';
              ADOQuery1.Open;
              if ADOQuery1.IsEmpty then
              begin
                date1:=trim(StringGrid1.Cells[4,i]);
                date1:=IntToStr(StrToInt(Copy(date1,1,4))+4)+copy(date1,5);
                                          //   条码 厂家 编号  产权  充装介质 规格id   创建人  创建时间  生成日期 购买日期 检验日期 下检日期，报废日期  检验单位id
                sqlstr:='Insert Into tbBottle_Dossier (BottleBar,FactoryId,Bottleid,BottleRight,TypeId,SpecId,CreateUser,CreateDate,MakeTime,BuysDate,Lastdate,NextProbe,ScrapDate,chickname,'+
                 'Instate,BottleAction,classid,Remark,gptm,InitialHeft)'+ //状态 注销标记 钢瓶类型id ,chickcs第几次检验  备注
                 ' Values ('''+gpbq+''','''+combobox13.Text+''','''+trim(StringGrid1.Cells[1,i])+''','''+inttostr(ComboBox5.ItemIndex)+''','''+combobox10.Text+''','''+combobox14.Text+''','+
                 ' '''+usname+''','''+datetostr(Date)+''','''+trim(StringGrid1.Cells[2,i])+''','''+trim(StringGrid1.Cells[2,i])+''','''+trim(StringGrid1.Cells[4,i])+''','+
                 ' '''+date1+''','''+trim(StringGrid1.Cells[3,i])+''','''+combobox9.Text+''',''0'',''0'','''+combobox11.Text+''','''+trim(StringGrid1.Cells[5,i])+''','''+trim(StringGrid1.Cells[6,i])+''','''+trim(StringGrid1.Cells[7,i])+''')';
                try
                  ADOQuery1.Close;
                  ADOQuery1.SQL.Text:=sqlstr;
                  ADOQuery1.ExecSQL;
//                  Memo2.Lines.Add('钢瓶编号：'+trim(StringGrid1.Cells[1,i])+'导入成功！');
                  Inc(d);
                except
                   Memo2.Lines.Add('钢瓶编号：'+trim(StringGrid1.Cells[1,i])+'导入失败！');
                end;
              end
              else  Memo2.Lines.Add('钢瓶条码：'+trim(StringGrid1.Cells[6,i])+'已经存在！');
            end
            else
            begin
              date1:=trim(StringGrid1.Cells[4,i]);
              date1:=IntToStr(StrToInt(Copy(date1,1,4))+4)+copy(date1,5);
                                          //   条码 厂家 编号  产权  充装介质 规格id   创建人  创建时间  生成日期 购买日期 检验日期 下检日期，报废日期  检验单位id
              sqlstr:='Insert Into tbBottle_Dossier (BottleBar,FactoryId,Bottleid,BottleRight,TypeId,SpecId,CreateUser,CreateDate,MakeTime,BuysDate,Lastdate,NextProbe,ScrapDate,chickname,'+
               'Instate,BottleAction,classid,Remark,gptm,InitialHeft)'+ //状态 注销标记 钢瓶类型id ,chickcs第几次检验  备注
               ' Values ('''+gpbq+''','''+combobox13.Text+''','''+trim(StringGrid1.Cells[1,i])+''','''+inttostr(ComboBox5.ItemIndex)+''','''+combobox10.Text+''','''+combobox14.Text+''','+
               ' '''+usname+''','''+datetostr(Date)+''','''+trim(StringGrid1.Cells[2,i])+''','''+trim(StringGrid1.Cells[2,i])+''','''+trim(StringGrid1.Cells[4,i])+''','+
               ' '''+date1+''','''+trim(StringGrid1.Cells[3,i])+''','''+combobox9.Text+''',''0'',''0'','''+combobox11.Text+''','''+trim(StringGrid1.Cells[5,i])+''','''','''+trim(StringGrid1.Cells[7,i])+''')';
              try
                ADOQuery1.Close;
                ADOQuery1.SQL.Text:=sqlstr;
                ADOQuery1.ExecSQL;
//                Memo2.Lines.Add('钢瓶编号：'+trim(StringGrid1.Cells[1,i])+'导入成功！');
                Inc(d);
              except
                 Memo2.Lines.Add('钢瓶编号：'+trim(StringGrid1.Cells[1,i])+'导入失败！');
              end;
            end;
          end
          else
          begin
            Memo2.Lines.Add('钢瓶编号：'+trim(StringGrid1.Cells[1,i])+'已经存在！');
            if trim(StringGrid1.Cells[6,i]) <>'' then
            begin
              ADOQuery1.Close;
              ADOQuery1.SQL.Text:='Select id From tbBottle_Dossier Where gptm=''' +trim(StringGrid1.Cells[6,i])+''' and BottleID<>''' +trim(StringGrid1.Cells[1,i])+''' ';
              ADOQuery1.Open;
              if ADOQuery1.IsEmpty then
              begin
                date1:=trim(StringGrid1.Cells[4,i]);
                date1:=IntToStr(StrToInt(Copy(date1,1,4))+4)+copy(date1,5);
//                                          //   条码 厂家 编号  产权  充装介质 规格id   创建人  创建时间  生成日期 购买日期 检验日期 下检日期，报废日期  检验单位id
//                sqlstr:='Insert Into tbBottle_Dossier (BottleBar,FactoryId,Bottleid,BottleRight,TypeId,SpecId,CreateUser,CreateDate,MakeTime,BuysDate,Lastdate,NextProbe,ScrapDate,chickname,'+
//                 'Instate,BottleAction,classid,Remark,gptm,InitialHeft)'+ //状态 注销标记 钢瓶类型id ,chickcs第几次检验  备注
//                 ' Values ('''+gpbq+''','''+combobox13.Text+''','''+trim(StringGrid1.Cells[1,i])+''','''+inttostr(ComboBox5.ItemIndex)+''','''+combobox10.Text+''','''+combobox14.Text+''','+
//                 ' UpdateUser='''+form1.shang_log_name+''',UpdateDate='''+datetostr(Date)+''',MakeTime='''+trim(StringGrid1.Cells[2,i])+''',BuysDate='''+trim(StringGrid1.Cells[2,i])+''',Lastdate='''+trim(StringGrid1.Cells[4,i])+''','+
//                 ' NextProbe='''+date1+''',ScrapDate='''+trim(StringGrid1.Cells[3,i])+''',chickname='''+combobox9.Text+''',classid='''+combobox11.Text+''',Remark='''+trim(StringGrid1.Cells[5,i])+''',gptm='''+trim(StringGrid1.Cells[6,i])+''',InitialHeft='''+trim(StringGrid1.Cells[7,i])+''')';

                 sqlstr:='update tbBottle_Dossier set BottleBar='''+gpbq+''',FactoryId='''+combobox13.Text+''',BottleRight='''+inttostr(ComboBox5.ItemIndex)+''',TypeId='''+combobox10.Text+''',SpecId='''+combobox14.Text+''','+
                 ' UpdateUser='''+usname+''',UpdateDate='''+datetostr(Date)+''',MakeTime='''+trim(StringGrid1.Cells[2,i])+''',BuysDate='''+trim(StringGrid1.Cells[2,i])+''',Lastdate='''+trim(StringGrid1.Cells[4,i])+''','+
                 ' NextProbe='''+date1+''',ScrapDate='''+trim(StringGrid1.Cells[3,i])+''',chickname='''+combobox9.Text+''',classid='''+combobox11.Text+''',Remark='''+trim(StringGrid1.Cells[5,i])+''',gptm='''+trim(StringGrid1.Cells[6,i])+''', '+
                 ' InitialHeft='''+trim(StringGrid1.Cells[7,i])+''' where BottleID=''' +trim(StringGrid1.Cells[1,i])+''' ';
                try
                  ADOQuery1.Close;
                  ADOQuery1.SQL.Text:=sqlstr;
                  ADOQuery1.ExecSQL;
                  Inc(d);
                except
                   Memo2.Lines.Add('钢瓶编号：'+trim(StringGrid1.Cells[1,i])+'导入失败！');
                end;
              end
              else  Memo2.Lines.Add('钢瓶条码：'+trim(StringGrid1.Cells[6,i])+'已经存在！');
            end
            else
            begin
              date1:=trim(StringGrid1.Cells[4,i]);
              date1:=IntToStr(StrToInt(Copy(date1,1,4))+4)+copy(date1,5);
                                          //   条码 厂家 编号  产权  充装介质 规格id   创建人  创建时间  生成日期 购买日期 检验日期 下检日期，报废日期  检验单位id
              sqlstr:='update tbBottle_Dossier set BottleBar='''+gpbq+''',FactoryId='''+combobox13.Text+''',BottleRight='''+inttostr(ComboBox5.ItemIndex)+''',TypeId='''+combobox10.Text+''',SpecId='''+combobox14.Text+''','+
                 ' UpdateUser='''+usname+''',UpdateDate='''+datetostr(Date)+''',MakeTime='''+trim(StringGrid1.Cells[2,i])+''',BuysDate='''+trim(StringGrid1.Cells[2,i])+''',Lastdate='''+trim(StringGrid1.Cells[4,i])+''','+
                 ' NextProbe='''+date1+''',ScrapDate='''+trim(StringGrid1.Cells[3,i])+''',chickname='''+combobox9.Text+''',classid='''+combobox11.Text+''',Remark='''+trim(StringGrid1.Cells[5,i])+''',gptm='''+trim(StringGrid1.Cells[6,i])+''', '+
                 ' InitialHeft='''+trim(StringGrid1.Cells[7,i])+''' where BottleID=''' +trim(StringGrid1.Cells[1,i])+''' ';
              try
                ADOQuery1.Close;
                ADOQuery1.SQL.Text:=sqlstr;
                ADOQuery1.ExecSQL;
//                Memo2.Lines.Add('钢瓶编号：'+trim(StringGrid1.Cells[1,i])+'导入成功！');
                Inc(d);
              except
                 Memo2.Lines.Add('钢瓶编号：'+trim(StringGrid1.Cells[1,i])+'导入失败！');
              end;
            end;
          end;

//        end
//        else Memo2.Lines.Add('钢瓶标签：'+trim(StringGrid1.Cells[0,i])+'已经存在！');
      end;
    end;
    AdvPanel7.visible := False;
    ShowMessage('已导入'+inttostr(d)+'条数据');
  except
    on e:Exception do
    begin
      Memo2.Lines.Add(e.Message)
    end;

  end;
end;

procedure TDForm.RzToolButton8Click(Sender: TObject);
var
  I: Integer;
begin
  if OpenDialog1.Execute then
  begin
    try
      dsum:=0;
      Memo2.clear;
      stringgrid1.clear;
      advgridexcelio2.XLSImport(opendialog1.FileName);
      stringgrid1.AutoSize := true;
      for I := 1 to stringgrid1.RowCount - 1 do
      begin
        Application.ProcessMessages;
       if trim(StringGrid1.Cells[0,i])<>'' then
       begin
         dsum:=dsum+1;
       end
      end;
      label1.Caption := '共' + inttostr(dsum) + '个钢瓶信息';
    except
      ShowMessage('读入失败,请重试');
    end;
  end;
end;

procedure TDForm.RzToolButton9Click(Sender: TObject);
var
  filename: string;
begin
  filename := extractfilepath(paramstr(0)) + '\RsFile\导入钢瓶.xls';
  if not FileExists(filename) then
  begin
    ShowMessage('没有找到模板文件');
    exit;
  end;
  ShellExecute(0, 'open', PWideChar(filename), nil, nil, SW_SHOWNORMAL);
end;

end.
