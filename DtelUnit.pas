unit DtelUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, tmsAdvGridExcel, W7Buttons, StdCtrls, W7Classes, W7Panels,
  AdvObj, BaseGrid, AdvGrid, ExtCtrls, AdvPanel, Menus, DB, MemDS, DBAccess, Uni,
  AdvMemo, ImgList, AdvUtil;

type
  TDtelForm = class(TForm)
    W7Panel1: TW7Panel;
    W7ToolButton1: TW7ToolButton;
    OpenDialog1: TOpenDialog;
    AdvGridExcelIO2: TAdvGridExcelIO;
    StringGrid1: TAdvStringGrid;
    AdvPanel7: TAdvPanel;
    Label2: TLabel;
    Label3: TLabel;
    W7ToolButton2: TW7ToolButton;
    W7ToolButton3: TW7ToolButton;
    Label4: TLabel;
    Memo1: TMemo;
    W7ToolButton4: TW7ToolButton;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    cbb4: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbb5: TComboBox;
    cbb6: TComboBox;
    cbb7: TComboBox;
    cbb8: TComboBox;
    il1: TImageList;
    procedure W7ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure W7ToolButton3Click(Sender: TObject);
    procedure W7ToolButton2Click(Sender: TObject);
    procedure W7ToolButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbb1Click(Sender: TObject);
    procedure cbb3Click(Sender: TObject);
    procedure cbb5Click(Sender: TObject);
    procedure cbb7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtelForm: TDtelForm;
  dsum: integer;

implementation

uses
  DbUnit, ShellAPI;
{$R *.dfm}

procedure TDtelForm.cbb1Click(Sender: TObject);
begin
  cbb2.ItemIndex:=cbb1.ItemIndex;
end;

procedure TDtelForm.cbb3Click(Sender: TObject);
begin
  cbb4.ItemIndex:=cbb3.ItemIndex;
end;

procedure TDtelForm.cbb5Click(Sender: TObject);
begin
  cbb6.ItemIndex:=cbb5.ItemIndex;
    cbb7.Items.Clear;
    cbb8.Items.Clear;
    Data1.ds1.SQL.Text:='select id,namec from tbkh_jd  where qyid='''+cbb6.text+''' ';
    Data1.ds1.Open;
    while not Data1.ds1.eof do
    begin
      cbb7.Items.Add(Data1.ds1.FieldByName('namec').AsString);
      cbb8.Items.Add(Data1.ds1.FieldByName('id').AsString);
      Data1.ds1.Next;
    end;
    Data1.ds1.Close;
end;

procedure TDtelForm.cbb7Click(Sender: TObject);
begin
  cbb8.ItemIndex:=cbb7.ItemIndex;
end;

procedure TDtelForm.FormCreate(Sender: TObject);
begin
  cbb1.Clear;
  cbb2.Clear;
  cbb3.Clear;
  cbb4.Clear;
  Data1.ClientDataSet2.Close;
  Data1.ClientDataSet2.SQL.Text:='select shopname,shopid from tshop where shopid<>0' ;
  Data1.ClientDataSet2.Open;
  if not Data1.ClientDataSet2.IsEmpty then
     begin
       while not Data1.ClientDataSet2.Eof do
        begin
           cbb1.Items.Add(Data1.ClientDataSet2.FieldByName('shopname').AsString);
           cbb2.Items.Add(Data1.ClientDataSet2.FieldByName('shopid').AsString);
           Data1.ClientDataSet2.Next;
        end;
     end;
   Data1.ds1.Close;
   Data1.ds1.SQL.Text:='select type_name,type_id from tbCustomer_type';
   Data1.ds1.Open;
   if not Data1.ds1.IsEmpty then
   begin
     while not Data1.ds1.Eof do
     begin
           cbb3.Items.Add(Data1.ds1.FieldByName('type_name').AsString);
           cbb4.Items.Add(Data1.ds1.FieldByName('type_id').AsString);
           Data1.ds1.Next;
     end;
   end;
  Data1.sds111.Close;
  cbb5.Items.Clear;
  cbb6.Items.Clear;
  Data1.sds111.SQL.Text:='select id,namec from tbkh_qy ';// where name like'+''''+'%气'+'''';
  Data1.sds111.Open;
  while not Data1.sds111.eof do
  begin
    cbb5.Items.Add(Data1.sds111.FieldByName('namec').AsString);
    cbb6.Items.Add(Data1.sds111.FieldByName('id').AsString);
    Data1.sds111.Next;
  end;
     Data1.sds111.Close;

end;

procedure TDtelForm.FormShow(Sender: TObject);
begin
  dsum := 0;
  AdvPanel7.Visible := False;
  stringgrid1.Clear;
  Memo1.Clear;
  label1.Caption := '';
  cbb1.ItemIndex:=-1;
  cbb2.ItemIndex:=-1;
  cbb3.ItemIndex:=-1;
  cbb4.ItemIndex:=-1;
  cbb5.ItemIndex:=-1;
  cbb6.ItemIndex:=-1;
  cbb7.ItemIndex:=-1;
  cbb8.ItemIndex:=-1;
  CheckBox1.Checked := True;
end;



procedure TDtelForm.W7ToolButton1Click(Sender: TObject);
var
  I: Integer;
//  cf: Boolean;
//  sstr:string;
begin
  if OpenDialog1.Execute then
  begin
    try
      memo1.clear;
      dsum := 0;
      stringgrid1.clear;
      advgridexcelio2.XLSImport(opendialog1.FileName);
      stringgrid1.AutoSize := true;

      for I := 1 to stringgrid1.RowCount - 1 do
      begin
        Application.ProcessMessages;
       if trim(StringGrid1.Cells[0,i])<>'' then
       begin
         dsum:=dsum+1;
//         s:=MainForm.Selecttel(trim(StringGrid1.Cells[0,i]));
//         if CheckBox1.Checked=False then
//         begin
//           if s=3 then
//           begin
//             Memo1.Lines.Add(trim(StringGrid1.Cells[0,i]+'是国内长途'));
//             StringGrid1.Cells[0,i]:='';
//           end
//           else   dsum:=dsum+1;
//         end
//         else
//         begin
//           if s=3 then
//           begin
//             StringGrid1.Cells[0,i]:='0'+StringGrid1.Cells[0,i];
//           end;
//           dsum:=dsum+1;
//         end;
       end
      end;
      label1.Caption := '共' + inttostr(dsum) + '个客户';
    except
      ShowMessage('读入失败,请重试');
    end;
  end;
end;

procedure TDtelForm.W7ToolButton2Click(Sender: TObject);
var
  filename: string;
begin
  filename := extractfilepath(paramstr(0)) + '\导入客户模板文件.xls';
  if not FileExists(filename) then
  begin
    ShowMessage('没有找到模板文件');
    exit;
  end;
  ShellExecute(0, 'open', PWideChar(filename), nil, nil, SW_SHOWNORMAL);
end;

procedure TDtelForm.W7ToolButton3Click(Sender: TObject);
var
  i, d: Integer;
  bisentid,shopid,typeid:string;
begin
  if dsum = 0 then
  begin
    ShowMessage('没有客户不能导入！');
    Exit;
  end;
  if cbb1.Text='' then
  begin
    ShowMessage('请选择门店！');
    Exit;
  end;
  if cbb3.Text='' then
  begin
    ShowMessage('请选择客户类型！');
    Exit;
  end;
  if (cbb5.Text='') or (cbb7.Text='') then
  begin
    ShowMessage('请选择客户区域街道！');
    Exit;
  end;
  try
    d:=0;
    AdvPanel7.visible := True;
    for i := 1 to stringgrid1.RowCount - 1 do
    begin
      Application.ProcessMessages;
      Label3.Caption:=IntToStr(i)+'/'+inttostr(stringgrid1.RowCount - 1);
//      if (StringGrid1.Cells[0,i]<>'') and (StringGrid1.Cells[1,i]<>'') and (StringGrid1.Cells[3,i]<>'') and (StringGrid1.Cells[4,i]<>'') then
//      begin
//        if Trim(StringGrid1.Cells[12,i])='' then
//        begin
          Data1.ds1.Close;
          Data1.ds1.sql.Text:='select max(barcode) as id from tbCustomer_Info where len(barcode)=7';
            Data1.ds1.Open;
          if Data1.ds1.FieldByName('id').AsString='' then  bisentid:='1000001'
          else  bisentid:=IntToStr(Data1.ds1.FieldByName('id').AsInteger+1);
//        end
//        else  bisentid := Trim(StringGrid1.Cells[12,i]);
//        Data1.ds1.Close;
//        Data1.ds1.sql.Text:='select shopid from tshop where shopname='''+StringGrid1.Cells[13,i]+''' ';
//        Data1.ds1.Open;
//        if Data1.ds1.IsEmpty then  shopid:='50'
//        else  shopid:=Data1.ds1.FieldByName('shopid').AsString;
//        if trim(StringGrid1.Cells[14,i])='居民客户' then  typeid:='101'
//        else typeid:='102' ;
        typeid := cbb4.Text;
        shopid := cbb2.Text;
        if CheckBox1.Checked=False then
        begin
          with Data1.ClientDataSet2 do
          begin
            Close;                                                                                                                  //,ywy,yj,grade,qyid,jdid   CreateUser
            sql.Text:='INSERT INTO tbCustomer_Info (barcode,psid,namec,contact,tel,Createdate,SendPeriod,typec,address,qyid,jdid,hynumber,bayday,kfsn,gpstype,Remark,sqg,ywy) values '+
            ' ('''+bisentid+''','''+shopid+''','''+StringGrid1.Cells[0,i]+''','''+StringGrid1.Cells[2,i]+''','''+StringGrid1.Cells[1,i]+''','''+DateTimeToStr(Now)+''','+
            ' '''+StringGrid1.Cells[4,i]+''','''+typeid+''','''+StringGrid1.Cells[3,i]+''','''+cbb6.Text+''','''+cbb8.Text+''','''+StringGrid1.Cells[5,i]+''','+
            ' '''+StringGrid1.Cells[6,i]+''','''+StringGrid1.Cells[7,i]+''','''+StringGrid1.Cells[8,i]+''','''+StringGrid1.Cells[9,i]+''','''+StringGrid1.Cells[10,i]+''','''+StringGrid1.Cells[11,i]+''')';     //,'''+edt1.Text+''','''+yj+''',''0'','''+cbb3.Text+''','''+cbb4.Text+'''
            try
              ExecSQL;
            except

            end;

          end;
          d:=d+1;
        end
        else
        begin
          if StringGrid1.Cells[1,i]<>'' then
          begin
            Data1.ds1.Close;
            Data1.ds1.SQL.Text:='select id from tbCustomer_Info where tel='''+StringGrid1.Cells[1,i]+''' ';
            Data1.ds1.Open;
            if not Data1.ds1.IsEmpty then
            begin
              Memo1.Lines.Add('客户电话'+StringGrid1.Cells[1,i]+'已存在！');
            end
            else
            begin
              with Data1.ClientDataSet2 do
              begin
                Close;                                                                                                                  //,ywy,yj,grade,qyid,jdid   CreateUser
                sql.Text:='INSERT INTO tbCustomer_Info (barcode,psid,namec,contact,tel,Createdate,SendPeriod,typec,address,qyid,jdid,hynumber,bayday,kfsn,gpstype,Remark,sqg,ywy) values '+
                ' ('''+bisentid+''','''+shopid+''','''+StringGrid1.Cells[0,i]+''','''+StringGrid1.Cells[2,i]+''','''+StringGrid1.Cells[1,i]+''','''+DateTimeToStr(Now)+''','+
                ' '''+StringGrid1.Cells[4,i]+''','''+typeid+''','''+StringGrid1.Cells[3,i]+''','''+cbb6.Text+''','''+cbb8.Text+''','''+StringGrid1.Cells[5,i]+''','+
                ' '''+StringGrid1.Cells[6,i]+''','''+StringGrid1.Cells[7,i]+''','''+StringGrid1.Cells[8,i]+''','''+StringGrid1.Cells[9,i]+''','''+StringGrid1.Cells[10,i]+''','''+StringGrid1.Cells[11,i]+''')';
                try
                  ExecSQL;
                except

                end;
              end;
              d:=d+1;
            end;
          end
          else
          begin
              with Data1.ClientDataSet2 do
              begin
                Close;                                                                                                                  //,ywy,yj,grade,qyid,jdid   CreateUser
                sql.Text:='INSERT INTO tbCustomer_Info (barcode,psid,namec,contact,tel,Createdate,SendPeriod,typec,address,qyid,jdid,hynumber,bayday,kfsn,gpstype,Remark,sqg,ywy) values '+
                ' ('''+bisentid+''','''+shopid+''','''+StringGrid1.Cells[0,i]+''','''+StringGrid1.Cells[2,i]+''','''+StringGrid1.Cells[1,i]+''','''+DateTimeToStr(Now)+''','+
                ' '''+StringGrid1.Cells[4,i]+''','''+typeid+''','''+StringGrid1.Cells[3,i]+''','''+cbb6.Text+''','''+cbb8.Text+''','''+StringGrid1.Cells[5,i]+''','+
                ' '''+StringGrid1.Cells[6,i]+''','''+StringGrid1.Cells[7,i]+''','''+StringGrid1.Cells[8,i]+''','''+StringGrid1.Cells[9,i]+''','''+StringGrid1.Cells[10,i]+''','''+StringGrid1.Cells[11,i]+''')';
                try
                  ExecSQL;
                except

                end;
              end;
              d:=d+1;
          end;
        end;
//      end;
    end;
    if d>0 then
    begin
      AdvPanel7.visible := False;
      ShowMessage('已导入'+IntToStr(d)+'个客户');
      Self.Close;
    end
    else
    begin
      AdvPanel7.visible := False;
      ShowMessage('未导入客户，请重新导入！');
    end;
  except
    on e: Exception do
    begin
      ShowMessage('导入客户出错：' + e.Message);
      exit;
    end;
  end;
end;

procedure TDtelForm.W7ToolButton4Click(Sender: TObject);
begin
  Close;
end;

end.

