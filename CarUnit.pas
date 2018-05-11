unit CarUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  Menus, AdvUtil, MemDS, DB, DBAccess, Uni;

type
  TCarForm = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DBAdvGrid1: TDBAdvGrid;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Edit4: TEdit;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    procedure Button3Click(Sender: TObject);
    procedure DBAdvGrid1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CarForm: TCarForm;

implementation

uses DbUnit;

{$R *.dfm}

procedure TCarForm.Button1Click(Sender: TObject);
var
sqlstr:string;
begin
  if Edit1.Text ='' then
  begin
    ShowMessage('车牌号不能为空');
    Exit;
  end;
  if Label1.Caption = '编辑' then  sqlstr := 'update tbcar set car='''+edit1.Text+''',namec='''+edit2.Text+''',tel='''+edit3.Text+''' where id='''+edit4.Text+''' '
  else sqlstr :='insert into tbcar (car,namec,tel) values ('''+edit1.Text+''','''+edit2.Text+''','''+edit3.Text+''')';
  try

    with Data1.work do
    begin
      close;
      SQL.Text :=sqlstr;
      ExecSQL;
      ShowMessage('操作成功');
      close;
    end;
    Label1.Caption := '';
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    UniQuery1.Close;
    UniQuery1.Open;
  except
    ShowMessage('操作失败');
  end;

end;

procedure TCarForm.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TCarForm.Button3Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Label1.Caption := '新增';
end;

procedure TCarForm.DBAdvGrid1Click(Sender: TObject);
begin
  if not UniQuery1.IsEmpty then
  begin
    Edit1.Text := UniQuery1.FieldByName('car').AsString;
    Edit2.Text := UniQuery1.FieldByName('namec').AsString;
    Edit3.Text := UniQuery1.FieldByName('tel').AsString;
    Edit4.Text := UniQuery1.FieldByName('id').AsString;
    Label1.Caption := '编辑';
  end;
end;

procedure TCarForm.FormShow(Sender: TObject);
begin
  with UniQuery1 do
  begin
    close;
    SQL.Text :='select * from tbcar';
    Open;
  end;
  Label1.Caption := '';
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
end;

procedure TCarForm.N1Click(Sender: TObject);
begin
  if UniQuery1.IsEmpty then Exit;

  try
    with Data1.work do
    begin
      close;
      SQL.Text :='delete from tbcar where id='''+UniQuery1.FieldByName('id').AsString+''' ';
      ExecSQL;
      ShowMessage('删除成功');
      close;
    end;
    Label1.Caption := '';
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    UniQuery1.Close;
    UniQuery1.Open;
  except
    ShowMessage('删除失败');
  end;
end;

end.
