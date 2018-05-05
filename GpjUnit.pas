unit GpjUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, ComCtrls, DB, MemDS, DBAccess, Uni;

type
  TGpjFrame = class(TUniFrame)
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBAdvGrid2: TDBAdvGrid;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Button5: TButton;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button6: TButton;
    Button7: TButton;
    Edit7: TEdit;
    DateTimePicker1: TDateTimePicker;
    DataSource1: TDataSource;
    UniQuery1: TUniQuery;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure initpanel;
  public
    { Public declarations }
  end;

implementation

uses
  DbUnit, MainUnit,zcomm;

{$R *.dfm}
var
 isadd:Boolean;


procedure TGpjFrame.Button2Click(Sender: TObject);
begin
   isadd:=True;
   Edit2.Clear;
   Edit3.Clear;
   Edit4.Clear;
   ComboBox1.Text:='';
   initpanel;
end;

procedure TGpjFrame.Button4Click(Sender: TObject);
var
 i:Integer;
 state,issel: boolean;
 sid:string;
begin
   if UniQuery1.IsEmpty then Exit;
   issel:=False;
    for i := 1 to DBAdvGrid2.RowCount - 1 do
       begin
        if DBAdvGrid2.GetCheckBoxState(1,i,state) then
         if state then
          begin
            issel:=True;
            Break;
          end;
       end;
       if not issel then exit;
   if (IDYES = Application.MessageBox('确定要删除选中的记录吗？',pwidechar(Application.Title),MB_YesNo+MB_IconQuestion)) then
     begin
       for i := 1 to DBAdvGrid2.RowCount - 1 do
       begin
        if DBAdvGrid2.GetCheckBoxState(1,i,state) then
        begin
           if state then
           begin
              Self.UniQuery1.RecNo:=i;
              sid:=Self.UniQuery1.FieldByName('id').AsString;
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text:='delete tpricemoney where id='''+sid+'''';
              try
                Data1.sqlcmd1.ExecSQL;
              except
               on E: Exception do
               mshowmessage('删除失败'+e.Message);
              end;
           end;
        end;
       end;
      Self.UniQuery1.Close;
      Self.UniQuery1.Open;
     end;

end;

procedure TGpjFrame.Button6Click(Sender: TObject);
var
 sqlstr:string;
begin
 if ComboBox1.Text='' then
   begin
     mshowmessage('请选择商品名称');
     exit;
   end;
 if (Edit2.Text='') and (Edit3.Text='') then
 begin
   mshowmessage('请输入价格');
   Exit;
 end;
  if isadd then
  sqlstr:='insert into tpricemoney (name,pdj,gjdj,sdate,memo,crename,credate) values '+
  ' ('''+combobox1.Text+''','''+edit2.Text+''','''+edit3.Text+''','''+FormatDateTime('yyyy-mm-dd hh:mm:ss',DateTimePicker1.DateTime)+''','''+edit4.Text+''','''+loginname+''','''+gettime+''')'
  else
  sqlstr:='update tpricemoney set name='''+combobox1.Text+''',pdj='''+edit2.Text+''',gjdj='''+edit3.Text+''',memo='''+edit4.Text+''',sdate='''+FormatDateTime('yyyy-mm-dd hh:mm:ss',DateTimePicker1.DateTime)+''' where id='''+edit7.Text+'''';
   with Data1 do
      begin
        sqlcmd1.close;
        sqlcmd1.SQL.Text:=sqlstr;
        try
           sqlcmd1.ExecSQL;
           Self.UniQuery1.Close;
           Self.UniQuery1.Open;
           Panel2.Visible:=False;
           mshowmessage('操作成功');
        except
         on E: Exception do
         mshowmessage('操作失败'+e.Message);
        end;
      end;

end;

procedure TGpjFrame.Button7Click(Sender: TObject);
begin
   Panel2.Visible:=False;
end;

procedure TGpjFrame.DBAdvGrid2DblClick(Sender: TObject);
begin
    if Self.UniQuery1.IsEmpty then  Exit;
    with Self.UniQuery1 do
   begin
     ComboBox1.Text:=FieldByName('name').AsString;
     Edit2.Text:=FieldByName('pdj').AsString;
     Edit3.Text:=FieldByName('gjdj').AsString;
     Edit4.Text:=FieldByName('memo').AsString;
     if FieldByName('sdate').AsString<>'' then
     DateTimePicker1.DateTime:=FieldByName('sdate').AsDateTime;
     Edit7.Text:=FieldByName('id').AsString;
   end;
   isadd:=False;
   initpanel;
end;

procedure TGpjFrame.initpanel;
var
 t,l:Integer;
begin
   l:=(Width-panel2.Width) div 2;
   t:=(Height-Panel2.Height) div 2;
   Panel2.Top:=t;
   Panel2.Left:=l;
   Panel2.Visible:=true;
end;

procedure TGpjFrame.UniFrameCreate(Sender: TObject);
begin
   with Self.UniQuery1 do
   begin
     Close;
     SQL.Text:='select * from tpricemoney where md='''' order by id';
     Open;
   end;
   Panel2.Visible:=False;
   ComboBox1.Items.Clear;
   with Data1.sqlcmd1 do
   begin
     Close;
     SQL.Text:='select name from tpriceinfo order by id';
     Open;
     if not IsEmpty then
     while not Eof do
     begin
       ComboBox1.Items.Add(FieldByName('name').AsString);
       Next;
     end;
     Close;
   end;
end;

procedure TGpjFrame.UniFrameDestroy(Sender: TObject);
begin
    Self.UniQuery1.Close;
end;

end.
