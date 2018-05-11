unit QzUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, AdvUtil, StdCtrls, ExtCtrls, Grids, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, DB, MemDS, DBAccess, Uni;

type
  TQzFrame = class(TUniFrame)
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    DBAdvGrid1: TDBAdvGrid;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Button5: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Edit7: TEdit;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure initpanel;
  public
    { Public declarations }
  end;

var QzFrame:TQzFrame;

implementation

uses DbUnit;
{$R *.dfm}

procedure TQzFrame.Button1Click(Sender: TObject);
begin
  UniQuery1.Close;
  UniQuery1.Open;
end;

procedure TQzFrame.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  initpanel;
end;

procedure TQzFrame.Button3Click(Sender: TObject);
begin
  if UniQuery1.IsEmpty then Exit;
  Edit1.Text := UniQuery1.FieldByName('id').AsString;
  Edit2.Text := UniQuery1.FieldByName('code').AsString;
  Edit3.Text := UniQuery1.FieldByName('namec').AsString;
  Edit4.Text := UniQuery1.FieldByName('tel').AsString;
  Edit5.Text := UniQuery1.FieldByName('address').AsString;
  Edit6.Text := UniQuery1.FieldByName('Contact').AsString;
  Edit7.Text := UniQuery1.FieldByName('Remark').AsString;
  initpanel;
end;

procedure TQzFrame.Button4Click(Sender: TObject);
begin
  if UniQuery1.IsEmpty then Exit;
  if (IDYES = Application.MessageBox('确定要删除选中的记录吗？',pwidechar(Application.Title),MB_YesNo+MB_IconQuestion)) then
  begin
     with Data1.work do
    begin
      Close;
      SQL.Text :='delete from tbQizhan_Info where id='''+UniQuery1.FieldByName('id').AsString+''' ';
      try
        ExecSQL;
        UniQuery1.Close;
        UniQuery1.Open;
      except
         ShowMessage('删除失败！');
      end;
    end;
  end;

end;

procedure TQzFrame.Button5Click(Sender: TObject);
begin
  Panel2.Visible := False;
end;

procedure TQzFrame.Button6Click(Sender: TObject);
begin
  Data1.work.Close;
  if Edit1.Text = '' then
  begin
    Data1.work.SQL.Text := 'insert into tbQizhan_Info (code,namec,tel,Contact,address,Remark) values ('''+Edit2.Text+''','''+Edit3.Text+''','''+Edit4.Text+''','''+Edit5.Text+''','''+Edit6.Text+''','''+Edit7.Text+''')';
  end
  else  Data1.work.SQL.Text := 'update tbQizhan_Info set code='''+Edit2.Text+''',namec='''+Edit3.Text+''',tel='''+Edit4.Text+''',Contact='''+Edit5.Text+''',address='''+Edit6.Text+''',Remark='''+Edit7.Text+''' where id='''+Edit1.Text+''' ';
  try
    Data1.work.ExecSQL;
    UniQuery1.Close;
    UniQuery1.Open;
  except
    ShowMessage('删除失败！');
  end;
end;

procedure TQzFrame.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False,20); //根据内容调节列宽
end;

procedure TQzFrame.initpanel;
var
 t,l:Integer;
begin
   l:=(Width-panel2.Width) div 2;
   t:=(Height-Panel2.Height) div 2;
   Panel2.Top:=t;
   Panel2.Left:=l;
   Panel2.Visible:=true;
end;

procedure TQzFrame.UniFrameCreate(Sender: TObject);
var
  sqlstr :string;
begin  //case  when instate=''1'' then ''在用'' else ''停用'' end as 状态,
//  Panel2.Visible:=False;
  sqlstr := 'select * from tbQizhan_Info ';
  UniQuery1.Close;
  UniQuery1.SQL.Text := sqlstr;
  UniQuery1.Open;
  QzFrame:=Self;
end;

procedure TQzFrame.UniFrameDestroy(Sender: TObject);
begin
  UniQuery1.Close;
end;

end.
