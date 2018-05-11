unit DqSzUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Menus, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, StdCtrls, AdvUtil;

type
  TDqSzFrame = class(TUniFrame)
    DBAdvGrid1: TDBAdvGrid;
    Panel1: TPanel;
    DBAdvGrid2: TDBAdvGrid;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    s1: TMenuItem;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure DBAdvGrid1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure s1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  DbUnit,zcomm;

{$R *.dfm}



procedure TDqSzFrame.Button1Click(Sender: TObject);
var
  sqlstr:string;
begin
  if Label1.Caption='新增区县' then
    sqlstr:='insert into tbkh_qy (namec) values ('''+edit1.Text+''')'
  else  if Label1.Caption='新增镇街道'  then
    sqlstr:='insert into tbkh_jd (namec,qyid) values ('''+edit1.Text+''','''+edit2.Text+''')'
  else  if Label1.Caption='编辑区县'  then
    sqlstr:='update tbkh_qy set namec='''+edit1.Text+''' where id='''+edit2.Text+''' '
  else  if Label1.Caption='编辑镇街道'  then
    sqlstr:='update tbkh_jd set namec='''+edit1.Text+''' where id='''+edit2.Text+''' '
  else  Exit;
  with Data1.sqlcmd1 do
  begin
    Close;
    SQL.Text:=sqlstr;
    try
      Execute;
      Edit1.Clear;
      Edit2.Clear;
      if (Label1.Caption='新增区县') or (Label1.Caption='编辑区县') then
      begin
        Data1.ClientDataSet8.Close;
        Data1.ClientDataSet8.Open;
      end;
      if (Label1.Caption='新增镇街道') or (Label1.Caption='编辑镇街道') then
      begin
        Data1.ClientDataSet9.Close;
        Data1.ClientDataSet9.Open;
      end;
      mShowMessage('保存成功！');
      Button1.Enabled:=False;
      Label1.Caption:='';
    except
      on E: Exception do
      mshowmessage('保存失败:'+e.Message);

    end;
  end;

end;

procedure TDqSzFrame.DBAdvGrid1Click(Sender: TObject);
begin
     if Data1.ClientDataSet8.FieldByName('id').AsString='' then  Exit;
  with Data1.ClientDataSet9 do
  begin
    Close;
    SQL.Text:='select * from tbkh_jd where qyid='''+Data1.ClientDataSet8.FieldByName('id').AsString+''' ';
    Open;
    if not IsEmpty then
       DBAdvGrid2.PopupMenu:=PopupMenu2
    else  DBAdvGrid2.PopupMenu:=nil;
  end;
  Button1.Enabled:=False;
  Label1.Caption:='';
end;

procedure TDqSzFrame.Edit1Enter(Sender: TObject);
begin
   Button1.Enabled:=True;
end;

procedure TDqSzFrame.MenuItem2Click(Sender: TObject);
begin
  if Data1.ClientDataSet9.FieldByName('id').AsString='' then  Exit;
  Label1.Caption:='编辑镇街道';
  Edit1.Text:=Data1.ClientDataSet9.FieldByName('namec').AsString;
  Edit2.Text:=Data1.ClientDataSet9.FieldByName('id').AsString;
end;

procedure TDqSzFrame.N1Click(Sender: TObject);
begin
   Label1.Caption:='新增区县';
   edit1.Clear;
end;

procedure TDqSzFrame.N2Click(Sender: TObject);
begin
  if Data1.ClientDataSet8.FieldByName('id').AsString='' then  Exit;
  Label1.Caption:='编辑区县';
  Edit1.Text:=Data1.ClientDataSet8.FieldByName('namec').AsString;
  Edit2.Text:=Data1.ClientDataSet8.FieldByName('id').AsString;
end;

procedure TDqSzFrame.N3Click(Sender: TObject);
begin
   if Data1.ClientDataSet8.FieldByName('id').AsString='' then  Exit;
   if (IDYES = Application.MessageBox('确定要删除选中的记录吗？',pwidechar(Application.Title),MB_YesNo+MB_IconQuestion)) then
     begin
       with Data1.sqlcmd1 do
       begin
          Close;
          SQL.Text:='delete from tbkh_qy where id ='''+Data1.ClientDataSet8.FieldByName('id').AsString+''' ';
         try
          ExecSQL;
          Close;
          SQL.Text:='delete from tbkh_jd where qyid ='''+Data1.ClientDataSet8.FieldByName('id').AsString+''' ';
          ExecSQL;
          Data1.ClientDataSet8.Close;
          Data1.ClientDataSet8.Open;
         except on E: Exception do
             mshowmessage('删除失败'+e.Message);
         end;
       end;
     end;
end;

procedure TDqSzFrame.N4Click(Sender: TObject);
begin
   if Data1.ClientDataSet8.FieldByName('id').AsString='' then  Exit;
   Label1.Caption:='新增镇街道';
   edit1.Clear;
   Edit2.Text:=Data1.ClientDataSet8.FieldByName('id').AsString;
end;

procedure TDqSzFrame.s1Click(Sender: TObject);
begin
     if Data1.ClientDataSet9.FieldByName('id').AsString='' then  Exit;
      if (IDYES = Application.MessageBox('确定要删除选中的记录吗？',pwidechar(Application.Title),MB_YesNo+MB_IconQuestion)) then
     begin
       with Data1.sqlcmd1 do
       begin
         Close;
         SQL.Text:='delete from tbkh_jd where id ='''+Data1.ClientDataSet9.FieldByName('id').AsString+''' ';
        try
          ExecSQL;
          Data1.ClientDataSet9.Close;
          Data1.ClientDataSet9.Open;
        except on E: Exception do
           mshowmessage('删除失败'+e.Message);
        end;
       end;
     end;
end;

procedure TDqSzFrame.UniFrameCreate(Sender: TObject);
begin
    Label1.Caption:='';
   Data1.ClientDataSet8.Close;
   Data1.ClientDataSet8.Open;
   Edit1.Clear;
   Edit2.Clear;
   Button1.Enabled:=False;
end;

procedure TDqSzFrame.UniFrameDestroy(Sender: TObject);
begin
   Data1.ClientDataSet8.Close;
end;

end.
