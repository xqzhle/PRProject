unit SpXxUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls;

type
  TSpXxFrame = class(TUniFrame)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBAdvGrid2: TDBAdvGrid;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button5: TButton;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button6: TButton;
    Button7: TButton;
    Edit5: TEdit;
    Label10: TLabel;
    ComboBox2: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Edit6: TEdit;
    ComboBox3: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit7: TEdit;
    Label15: TLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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


procedure TSpXxFrame.Button1Click(Sender: TObject);
begin
   if Edit1.Text='' then Exit;
    with Data1.sqlcmd7 do
    begin
      Close;
      SQL.Text:='select *,case when isshow=''True'' then ''是'' else ''否'' end as isshow1,case when isdef=''True'' then ''是'' else ''否'' end as isdef1 from tpriceinfo where name like ''%'+edit1.Text+'%''';
      Open;
    end;
end;

procedure TSpXxFrame.Button2Click(Sender: TObject);
begin
   Edit2.Clear;
   Edit3.Clear;
   Edit4.Clear;
   Edit5.Clear;
   Edit6.Clear;
   ComboBox1.ItemIndex:=-1;
   ComboBox3.ItemIndex:=-1;
   ComboBox2.ItemIndex:=-1;
   ComboBox1.Text:='';
   ComboBox2.Text:='';
   ComboBox3.Text:='';
   Data1.ClientDataSet6.Close;
   Data1.ClientDataSet6.sql.Text := 'select max(sid) as maxid from tpriceinfo';
   Data1.ClientDataSet6.Open;
   if not Data1.ClientDataSet6.IsEmpty then
    if Data1.ClientDataSet6.FieldByName('maxid').AsString<>'' then

    Edit2.Text := IntToStr(Data1.ClientDataSet6.FieldByName('maxid').AsInteger + 1)
   else  Edit2.Text := '101';
   if Length(Edit2.Text)=1 then Edit2.Text:='10'+Edit2.Text;
   isadd:=True;
   initpanel;
end;

procedure TSpXxFrame.Button4Click(Sender: TObject);
var
 i:Integer;
 state,issel: boolean;
 sid:string;
begin
   if Data1.sqlcmd7.IsEmpty then Exit;
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
              Data1.sqlcmd7.RecNo:=i;
              sid:=Data1.sqlcmd7.FieldByName('id').AsString;
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text:='delete tpriceinfo where id='''+sid+'''';
              try
                Data1.sqlcmd1.ExecSQL;
              except
               on E: Exception do
               mshowmessage('删除失败'+e.Message);
              end;
           end;
        end;
       end;
      Data1.sqlcmd7.Close;
      Data1.sqlcmd7.Open;
     end;

end;

procedure TSpXxFrame.Button6Click(Sender: TObject);
var
 sqlstr:string;
begin
   if Edit3.Text='' then
   begin
     mshowmessage('请输入商品名称');
     Exit;
   end;
   if ComboBox1.Text='' then
   begin
     mshowmessage('请选择商品单位');
     exit;
   end;
   if ComboBox2.Text='' then
   begin
     mshowmessage('请选择商品类型');
     exit;
   end;
   if isadd then
   sqlstr:='INSERT INTO tpriceinfo (typeid,sid,name,dw,jz,crename,credate,remark,stype,syqx,isdef,isshow) VALUES('''+combobox2.Text+''','''+edit2.Text+''','''+edit3.Text+''','''+combobox1.Text+''', '+
      ''''+edit4.Text+''','''+loginname+''','''+formatdatetime('yyyy-mm-dd hh:mm:ss',Now)+''','''+Edit6.Text+''','''+combobox3.text+''','''+edit5.Text+''','''+botostr(CheckBox1.Checked)+''','''+botostr(CheckBox2.Checked)+''')'
      else
       sqlstr:='update tpriceinfo set typeid='''+ComboBox2.Text+''',name='''+edit3.Text+''',dw='''+ComboBox1.Text+''',jz='''+edit4.Text+''',sid='''+edit2.Text+''','+
      'remark='''+Edit6.Text+''',stype='''+combobox3.text+''',syqx='''+Edit5.Text+''',isdef='''+botostr(CheckBox1.Checked)+''',isshow='''+botostr(CheckBox2.Checked)+''' where id='''+edit7.Text+'''';
      with Data1 do
      begin
        sqlcmd1.close;
        sqlcmd1.SQL.Text:=sqlstr;
        try
           sqlcmd1.ExecSQL;
           sqlcmd7.Close;
           sqlcmd7.Open;
           Panel2.Visible:=False;
           mshowmessage('操作成功');
        except
         on E: Exception do
         mshowmessage('操作失败'+e.Message);
        end;
      end;
end;

procedure TSpXxFrame.Button7Click(Sender: TObject);
begin
    Panel2.Visible:=False;
end;

procedure TSpXxFrame.DBAdvGrid2DblClick(Sender: TObject);
begin
   if Data1.sqlcmd7.IsEmpty then Exit;
   isadd:=False;
   with Data1.sqlcmd7 do
   begin
     Edit2.Text:=FieldByName('sid').AsString;
     Edit3.Text:=FieldByName('name').AsString;
     Edit4.Text:=FieldByName('jz').AsString;
     Edit5.Text:=FieldByName('syqx').AsString;
     Edit6.Text:=FieldByName('remark').AsString;
     Edit7.Text:=FieldByName('id').AsString;
     ComboBox1.Text:=FieldByName('dw').AsString;
     ComboBox2.Text:=FieldByName('typeid').AsString;
     ComboBox3.Text:=FieldByName('stype').AsString;
     CheckBox1.Checked:=FieldByName('isdef').AsBoolean;
     CheckBox2.Checked:=FieldByName('isshow').AsBoolean;
   end;
   initpanel;
end;

procedure TSpXxFrame.initpanel;
var
 t,l:Integer;
begin
   l:=(Width-panel2.Width) div 2;
   t:=(Height-Panel2.Height) div 2;
   Panel2.Top:=t;
   Panel2.Left:=l;
   ComboBox3.Items.Clear;
   with Data1.sqlcmd1 do
   begin
      Close;
      sql.Text:='select spec_name from tbBottle_spec order by spec_id';
      Open;
      if not IsEmpty then
      while not Eof do
      begin
        ComboBox3.Items.Add(FieldByName('spec_name').AsString);
        Next;
      end;
      Close;
   end;
   Panel2.Visible:=true;

end;

procedure TSpXxFrame.UniFrameCreate(Sender: TObject);
var
 sqlstr:string;
begin
    Panel2.Visible:=False;
    sqlstr:='select *,case when isshow=''True'' then ''是'' else ''否'' end as isshow1,case when isdef=''True'' then ''是'' else ''否'' end as isdef1 from tpriceinfo order by id';
    Data1.sqlcmd7.Close;
    Data1.sqlcmd7.SQL.Text:= sqlstr;
    Data1.sqlcmd7.Open;
  //  Label9.Caption:='总共：'+IntToStr(Data1.sqlcmd7.RecordCount)+' 条记录';
    ComboBox2.Items.Clear;
    with Data1.sqlcmd1 do
    begin
      close;
      SQL.Text:='select typename from tpricetype  ORDER BY id';
      Open;
      if not IsEmpty then
      while not Eof do
      begin
        ComboBox2.Items.Add(FieldByName('typename').AsString);
        Next;
      end;
      Close;
    end;
end;

procedure TSpXxFrame.UniFrameDestroy(Sender: TObject);
begin
    Data1.sqlcmd7.Close;
end;

end.
