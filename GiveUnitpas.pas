unit GiveUnitpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, AdvGrid, DBAdvGrid,
  StdCtrls, RzButton, Grids, AdvObj, BaseGrid, AdvUtil;

type
  TGiveForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBAdvGrid1: TDBAdvGrid;
    Panel1: TPanel;
    lable11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    RzToolButton4: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton1: TRzToolButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBAdvGrid2: TDBAdvGrid;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton7: TRzToolButton;
    RzToolButton8: TRzToolButton;
    Label2: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure DBAdvGrid1Click(Sender: TObject);
    procedure DBAdvGrid2Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Clearlc;
    procedure Clearjl;
  public
    { Public declarations }
  end;

var
  GiveForm: TGiveForm;

implementation
uses DbUnit,MainUnit;
{$R *.dfm}

procedure TGiveForm.Clearjl;
begin
  Label2.Caption := '';
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Edit5.Enabled := False;
  RzToolButton6.Enabled := False;
  RzToolButton7.Enabled := False;
end;

procedure TGiveForm.Clearlc;
begin
  Label1.Caption := '';
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit1.Enabled := False;
  RzToolButton2.Enabled := False;
  RzToolButton3.Enabled := False;
end;

procedure TGiveForm.DBAdvGrid1Click(Sender: TObject);
begin
  if Data1.UniGive.IsEmpty then  Exit;
  Label1.Caption := '编辑';
  Edit1.Text := Data1.UniGive.FieldByName('id').AsString;
  Edit2.Text := Data1.UniGive.FieldByName('namec').AsString;
  Edit3.Text := Data1.UniGive.FieldByName('money').AsString;
  Edit4.Text := Data1.UniGive.FieldByName('memo').AsString;
  RzToolButton2.Enabled := True;
  RzToolButton3.Enabled := True;
end;

procedure TGiveForm.DBAdvGrid2Click(Sender: TObject);
begin
  if Data1.UniSqf.IsEmpty  then  Exit;
  Label2.Caption := '编辑';
  Edit5.Text := Data1.UniSqf.FieldByName('id').AsString;
  Edit6.Text := Data1.UniSqf.FieldByName('namec').AsString;
  Edit7.Text := Data1.UniSqf.FieldByName('money').AsString;
  Edit8.Text := Data1.UniSqf.FieldByName('memo').AsString;
  RzToolButton7.Enabled := True;
  RzToolButton6.Enabled := True;
end;

procedure TGiveForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.UniGive.Close;
  Data1.UniSqf.Close;
end;

procedure TGiveForm.FormShow(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TGiveForm.RzToolButton1Click(Sender: TObject);
begin
  Clearlc;
  Label1.Caption := '新增';
  RzToolButton2.Enabled := True;
  Edit1.Enabled := True;
end;

procedure TGiveForm.RzToolButton2Click(Sender: TObject);
var
  sqlstr:string;
begin
  if (Label1.Caption<>'新增') and (Label1.Caption<>'编辑') then  Exit;
  if Edit1.Text='' then
  begin
    ShowMessage('请输入编号');
    Exit;
  end;
  if Edit2.Text='' then
  begin
    ShowMessage('请输入名称');
    Exit;
  end;
  if Edit3.Text='' then
  begin
    ShowMessage('请输入费用');
    Exit;
  end;
  if Label1.Caption='新增' then  sqlstr :='insert into tbsqfloor (id,namec,money,memo) values ('''+Edit1.Text+''','''+Edit2.Text+''','''+Edit3.Text+''','''+Edit4.Text+''')'
  else sqlstr := 'update tbsqfloor set namec='''+Edit2.Text+''',money='''+Edit3.Text+''',memo='''+Edit4.Text+''' where id='''+Edit1.Text+''' ';
  try
     Data1.work.Close;
     Data1.work.sql.Text :=sqlstr;
     Data1.work.ExecSQL;
     Data1.work.Close;
     Data1.WriteLog('新增/编辑楼层设置','编号：'+edit1.Text,UsName); //写日志
     Clearlc;
     Data1.UniGive.Close;
     Data1.UniGive.Open;
  except
    on E:Exception do
    begin
      ShowMessage('保存失败:'+e.Message);
    end;
  end;
end;

procedure TGiveForm.RzToolButton3Click(Sender: TObject);
begin
  if (Label1.Caption <>'编辑') then  Exit;
  if (IDYES = Application.MessageBox('是否删除该条信息？', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
  begin
    try
      Data1.work.Close;
      Data1.work.sql.Text :='delete from tbsqfloor where id='''+Edit1.Text+''' ';
      Data1.work.ExecSQL;
      Data1.work.Close;
      Data1.WriteLog('删除楼层设置','编号：'+edit1.Text,UsName); //写日志
      ShowMessage('删除成功');
      Clearlc;
      Data1.UniGive.Close;
      Data1.UniGive.Open;
    except
      on E:Exception do
      begin
        ShowMessage('删除失败:'+e.Message);
      end;
    end;
  end
end;

procedure TGiveForm.RzToolButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TGiveForm.RzToolButton6Click(Sender: TObject);
begin
  if (Label2.Caption <>'编辑') then  Exit;
  if (IDYES = Application.MessageBox('是否删除该条信息？', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
  begin
    try
      Data1.work.Close;
      Data1.work.sql.Text :='delete from tbsqdistance where id='''+Edit5.Text+''' ';
      Data1.work.ExecSQL;
      Data1.work.Close;
      Data1.WriteLog('删除距离设置','编号：'+edit5.Text,UsName); //写日志
      ShowMessage('删除成功');
      Clearjl;
      Data1.UniSqf.Close;
      Data1.UniSqf.Open;
    except
      on E:Exception do
      begin
        ShowMessage('删除失败:'+e.Message);
      end;
    end;
  end
end;

procedure TGiveForm.RzToolButton7Click(Sender: TObject);
var
  sqlstr:string;
begin
  if (Label2.Caption<>'新增') and (Label2.Caption<>'编辑') then  Exit;
  if Edit5.Text='' then
  begin
    ShowMessage('请输入编号');
    Exit;
  end;
  if Edit6.Text='' then
  begin
    ShowMessage('请输入名称');
    Exit;
  end;
  if Edit7.Text='' then
  begin
    ShowMessage('请输入费用');
    Exit;
  end;
  if Label2.Caption='新增' then  sqlstr :='insert into tbsqdistance (id,namec,money,memo) values ('''+Edit5.Text+''','''+Edit6.Text+''','''+Edit7.Text+''','''+Edit8.Text+''')'
  else sqlstr := 'update tbsqdistance set namec='''+Edit6.Text+''',money='''+Edit7.Text+''',memo='''+Edit8.Text+''' where id='''+Edit5.Text+''' ';
  try
      Data1.work.Close;
      Data1.work.sql.Text :=sqlstr;
      Data1.work.ExecSQL;
      Data1.work.Close;
      Data1.WriteLog('新增/编辑距离设置','编号：'+edit1.Text,UsName); //写日志
      Clearjl;
      Data1.UniSqf.Close;
      Data1.UniSqf.Open;
  except
    on E:Exception do
    begin
      ShowMessage('保存失败:'+e.Message);
    end;
  end;
end;

procedure TGiveForm.RzToolButton8Click(Sender: TObject);
begin
  Clearjl;
  Label2.Caption := '新增';
  RzToolButton7.Enabled := True;
  Edit5.Enabled := True;
end;

procedure TGiveForm.TabSheet1Show(Sender: TObject);
begin
  with Data1.UniGive do
  begin
    Close;
    SQL.Text :='select * from tbsqfloor';
    Open;
  end;
  Clearlc;
end;

procedure TGiveForm.TabSheet2Show(Sender: TObject);
begin
  with Data1.UniSqf do
  begin
    Close;
    SQL.Text :='select * from tbsqdistance';
    Open;
  end;
  Clearjl;
end;

end.
