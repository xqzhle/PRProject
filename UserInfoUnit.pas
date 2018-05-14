unit UserInfoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, DB, MemDS, DBAccess, Uni, ImgList, uniGUIBaseClasses,
  uniDateTimePicker, ComCtrls, AdvDateTimePicker, AdvUtil;

type
  TUserInfoFrame = class(TUniFrame)
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
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Button5: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Button6: TButton;
    Button7: TButton;
    Edit7: TEdit;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    Edit4: TEdit;
    ImageList3: TImageList;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Edit5: TEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit6: TEdit;
    Edit8: TEdit;
    Label19: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    ComboBox4: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label8: TLabel;
    Label10: TLabel;
    Button8: TButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
    procedure initpanel;
    procedure clearedit;
  public
    { Public declarations }
  end;

var
   UserInfoFrame:TUserInfoFrame;

implementation

uses
  DbUnit, MainUnit,zcomm, PowerUnit;

{$R *.dfm}
var
 isadd:Boolean;
 typename:string;

procedure TUserInfoFrame.Button1Click(Sender: TObject);
var
 wherestr:string;
begin
    if (Edit1.Text='') and (ComboBox4.Text='')  then
   begin
     exit;
   end;
   wherestr:='where (1=1)';
   if Edit1.Text<>'' then
   wherestr:=wherestr+' and (name like ''%'+edit1.text+'%'')';
   if ComboBox4.Text<>'' then
   wherestr:=wherestr+' and (comname='''+ComboBox4.text+''')';

    with UniQuery1 do
    begin
      Close;
      SQL.Text:='select * from tuser '+wherestr;
      Open;
    end;
end;

procedure TUserInfoFrame.Button2Click(Sender: TObject);
begin
   clearedit;
   isadd:=True;
   initpanel;
end;

procedure TUserInfoFrame.Button4Click(Sender: TObject);
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
              UniQuery1.RecNo:=i;
             if UniQuery1.FieldByName('aname').AsString='admin' then
             begin
               mshowmessage('不能删除admin的帐号');

             end
             else
             begin
              sid:=UniQuery1.FieldByName('id').AsString;
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text:='delete tuser where id='''+sid+'''';
              try
                Data1.sqlcmd1.ExecSQL;
              except
               on E: Exception do
               mshowmessage('删除失败'+e.Message);
              end;
             end;
           end;
        end;
       end;
      UniQuery1.Close;
      UniQuery1.Open;
     end;

end;

procedure TUserInfoFrame.Button6Click(Sender: TObject);
var
 sqlstr:string;
 i:Integer;
begin
 if combobox1.Text='' then
   begin
     mshowmessage('请选择所属组织');
     Exit;
   end;
   if Edit2.Text='' then
   begin
     mshowmessage('请输入操作员名称');
     Exit;
   end;

   if Edit3.Text='' then
   begin
     mshowmessage('请输入登录帐号');
     Exit;
   end;
   if Edit4.Text='' then
   begin
     mshowmessage('请输入登录密码');
     Exit;
   end;
   if Edit5.Text='' then
   begin
     mshowmessage('请输入确认密码');
     Exit;
   end;
   if (Edit5.Text<>Edit4.Text) then
   begin
     mshowmessage('两次输入的密码不一致，请检查');
     Exit;
   end;
   if ComboBox2.ItemIndex=-1 then
   begin
     mshowmessage('请选择帐号类型');
     Exit;
   end;
   if isadd then
    sqlstr:='INSERT INTO tuser (name,aname,crename,credate,Remark,comname,apassword,ext,tel,shopid.type) VALUES('''+edit2.Text+''','''+Edit3.Text+''', '+
      ''''+loginname+''','''+gettime+''','''+Edit9.Text+''','''+ComboBox1.Text+''','''+Edit4.Text+''''+
      ','''+edit6.Text+''','''+edit7.Text+''','''+edit10.Text+''',''' + inttostr(combobox2.ItemIndex + 1) + ''')'
      else
       sqlstr:='update tuser set aname='''+edit3.Text+''',apassword='''+edit4.Text+''',comname='''+ComboBox1.Text+''',ext='''+edit6.Text+''',crename='''+loginname+''',credate='''+gettime+''','+
      'Remark='''+Edit9.Text+''',tel='''+edit7.Text+''',shopid='''+edit10.Text+''',name='''+edit2.Text+''',type=''' + inttostr(combobox2.ItemIndex + 1) + ''' where id='''+edit8.Text+'''';
      with Data1 do
      begin
        sqlcmd1.close;
        sqlcmd1.SQL.Text:=sqlstr;
        try
           sqlcmd1.ExecSQL;
           Panel2.Visible:=False;
           Self.UniQuery1.Close;
           Self.UniQuery1.Open;
           mshowmessage('操作成功');
        except
         on E: Exception do
         mshowmessage('操作失败'+e.Message);
        end;
      end;
end;

procedure TUserInfoFrame.Button7Click(Sender: TObject);
begin
    Panel2.Visible:=False;
end;

procedure TUserInfoFrame.Button8Click(Sender: TObject);
begin
  if UniQuery1.IsEmpty then Exit;
  PowerForm.Edit1.Text:=UniQuery1.FieldByName('id').AsString;
  PowerForm.ShowPower(UniQuery1.FieldByName('id').AsString);
  PowerForm.Show;
end;

procedure TUserInfoFrame.clearedit;
 var
  i:Integer;
begin
 for i := 1 to 9 do
   TEdit(UserInfoFrame.FindComponent('edit'+inttostr(i))).Text:='';
   ComboBox1.Text:='';
   ComboBox2.ItemIndex:=-1;
   ComboBox2.Text:='';
   ComboBox1.Items.Clear;
    with Data1.sqlcmd1 do
    begin
      Close;
      sql.Text:='select comname from tcompany order by id';
      Open;
      if not IsEmpty then
      while not Eof do
      begin
        ComboBox1.Items.Add(FieldByName('comname').AsString);
        Next;
      end;
      Close;
    end;
end;

procedure TUserInfoFrame.ComboBox1Change(Sender: TObject);
begin
   if ComboBox1.Text='' then Exit;
   with Data1.sqlcmd1 do
   begin
     Close;
     SQL.Text:='select id from tcompany where comname='''+combobox1.Text+'''';
     Open;
     if not IsEmpty then
      Edit10.Text:=FieldByName('id').AsString
     else Edit10.Text:='1';
     Close;
   end;
end;

procedure TUserInfoFrame.DBAdvGrid2DblClick(Sender: TObject);
begin
   if UniQuery1.IsEmpty then Exit;
   isadd:=False;
   clearedit;
   with UniQuery1 do
   begin
     Edit2.Text:=FieldByName('name').AsString;
     Edit3.Text:=FieldByName('aname').AsString;
     Edit4.Text:=FieldByName('apassword').AsString;
     Edit5.Text:=Edit4.Text;
     Edit6.Text:=FieldByName('ext').AsString;
     Edit7.Text:=FieldByName('Remark').AsString;
     Edit8.Text:=FieldByName('id').AsString;
     Edit9.Text:=FieldByName('Remark').AsString;
     Edit10.Text:=FieldByName('shopid').AsString;
     ComboBox1.Text:=FieldByName('comname').AsString;
     ComboBox2.ItemIndex:=FieldByName('type').AsInteger-1;
   end;
   initpanel;
end;

procedure TUserInfoFrame.initpanel;
var
 t,l:Integer;
begin
   l:=(Width-panel2.Width) div 2;
   t:=(Height-Panel2.Height) div 2;
   Panel2.Top:=t;
   Panel2.Left:=l;
   Panel2.Visible:=true;
end;

procedure TUserInfoFrame.UniFrameCreate(Sender: TObject);
var
 sqlstr:string;
begin
    Panel2.Visible:=False;
    UserInfoFrame:=Self;
    sqlstr:='select *,case when type=''1'' then ''系统管理员'' when type=''3'' then ''接线员'' when type=''4'' then ''财务'' when type=''5'' then ''送气工'' when type=''6'' then ''安检员'' else ''门店员'' end as stype from tuser order by id';
    UniQuery1.Close;
    UniQuery1.SQL.Text:= sqlstr;
    UniQuery1.Open;
    ComboBox4.Text:='';
    ComboBox4.Items.Clear;
    with Data1.sqlcmd1 do
    begin
      Close;
      sql.Text:='select comname from tcompany order by id';
      Open;
      if not IsEmpty then
      while not Eof do
      begin
        ComboBox4.Items.Add(FieldByName('comname').AsString);
        Next;
      end;
      Close;
    end;
    DBAdvGrid2.Columns[6].Password:=True;
end;

procedure TUserInfoFrame.UniFrameDestroy(Sender: TObject);
begin
    UniQuery1.Close;
end;

end.
