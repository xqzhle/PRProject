unit YgInfoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, DB, MemDS, DBAccess, Uni, ImgList, uniGUIBaseClasses,
  uniDateTimePicker, ComCtrls, AdvDateTimePicker, AdvUtil;

type
  TYgInfoFrame = class(TUniFrame)
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
    Label3: TLabel;
    Edit4: TEdit;
    ImageList3: TImageList;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DateTimePicker1: TAdvDateTimePicker;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit6: TEdit;
    Label18: TLabel;
    Edit8: TEdit;
    Label19: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    ComboBox4: TComboBox;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    procedure initpanel;
    procedure clearedit;
  public
    { Public declarations }
  end;

var
   YgInfoFrame:TYgInfoFrame;

implementation

uses
  DbUnit, MainUnit,zcomm, SelKhUnit;

{$R *.dfm}
var
 isadd:Boolean;
 typename:string;

procedure TYgInfoFrame.Button1Click(Sender: TObject);
var
 wherestr:string;
begin
    if (Edit1.Text='') and (ComboBox4.Text='')  then
   begin
     exit;
   end;
   wherestr:='where (1=1)';
   if Edit1.Text<>'' then
   wherestr:=wherestr+' and (empname like ''%'+edit1.text+'%'')';
   if ComboBox4.Text<>'' then
   wherestr:=wherestr+' and (shopname='''+ComboBox4.text+''')';

    with UniQuery1 do
    begin
      Close;
      SQL.Text:='select * from tb_yginfo '+wherestr;
      Open;
    end;
end;

procedure TYgInfoFrame.Button2Click(Sender: TObject);
begin
   clearedit;
    Data1.ClientDataSet6.Close;
  Data1.ClientDataSet6.sql.Text := 'select max(empid) as maxid from tb_yginfo';
  Data1.ClientDataSet6.Open;
  if Data1.ClientDataSet6.FieldByName('maxid').AsString <>'' then
    Edit2.Text := IntToStr(Data1.ClientDataSet6.FieldByName('maxid').AsInteger + 1)
  else  Edit2.Text := '10001';
  if Length(Edit2.Text)=1 then Edit2.Text:='1000'+Edit2.Text;
   DateTimePicker1.Date:=Now;
//   Data1.ClientDataSet6.Close;
//   Data1.ClientDataSet6.sql.Text := 'select max(sn) as maxid from tb_tsyh';
//   Data1.ClientDataSet6.Open;
//   if not Data1.ClientDataSet6.IsEmpty then
//    if Data1.ClientDataSet6.FieldByName('maxid').AsString<>'' then
//
//    Edit2.Text := IntToStr(Data1.ClientDataSet6.FieldByName('maxid').AsInteger + 1)
//   else  Edit2.Text := '101';
//   if Length(Edit2.Text)=1 then Edit2.Text:='10'+Edit2.Text;
   isadd:=True;
   initpanel;
end;

procedure TYgInfoFrame.Button4Click(Sender: TObject);
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
              sid:=UniQuery1.FieldByName('id').AsString;
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text:='delete tb_yginfo where id='''+sid+'''';
              try
                Data1.sqlcmd1.ExecSQL;
              except
               on E: Exception do
               mshowmessage('删除失败'+e.Message);
              end;
           end;
        end;
       end;
      UniQuery1.Close;
      UniQuery1.Open;
     end;

end;

procedure TYgInfoFrame.Button6Click(Sender: TObject);
var
 sqlstr:string;
 i:Integer;
begin
   if Edit3.Text='' then
   begin
     mshowmessage('请输入员工姓名');
     Exit;
   end;
   if combobox1.Text='' then
   begin
     mshowmessage('请选择所属门店');
     Exit;
   end;
   if combobox2.Text='' then
   begin
     mshowmessage('请选择部门名称');
     Exit;
   end;
   if combobox3.Text='' then
   begin
     mshowmessage('请选择岗位名称');
     Exit;
   end;

   if isadd then
    sqlstr:='INSERT INTO tb_yginfo (empid,empname,creid,credate,Remark,shopname,bmname,gwname,sfz,rzdate,sr,email,linktel,shopid) VALUES('''+edit2.Text+''','''+Edit3.Text+''', '+
      ''''+loginname+''','''+gettime+''','''+Edit7.Text+''','''+ComboBox1.Text+''','''+ComboBox2.Text+''''+
      ','''+ComboBox3.Text+''','''+edit4.Text+''','''+formatdatetime('yyyy-mm-dd',DateTimePicker1.DateTime)+''','''+edit9.Text+''','''+edit5.Text+''','''+edit6.Text+''','''+edit10.Text+''')'
      else
       sqlstr:='update tb_yginfo set empname='''+edit3.Text+''',sfz='''+edit4.Text+''',shopname='''+ComboBox1.Text+''',linktel='''+edit6.Text+''',rzdate='''+formatdatetime('yyyy-mm-dd',DateTimePicker1.Date)+''','+
      'Remark='''+Edit7.Text+''',gwname='''+ComboBox3.Text+''',bmname='''+combobox2.Text+''',sr='''+edit9.Text+''',email='''+edit5.Text+''',shopid='''+edit10.Text+''' where id='''+edit8.Text+'''';
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

procedure TYgInfoFrame.Button7Click(Sender: TObject);
begin
    Panel2.Visible:=False;
end;

procedure TYgInfoFrame.clearedit;
 var
  i:Integer;
begin
 for i := 1 to 9 do
   TEdit(YgInfoFrame.FindComponent('edit'+inttostr(i))).Text:='';
   ComboBox1.Text:='';
   ComboBox2.Text:='';
   ComboBox3.Text:='';
   ComboBox1.Items.Clear;
    ComboBox2.Items.Clear;
    ComboBox3.Items.Clear;
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
      ComboBox4.Items.Clear;
      ComboBox4.Items:=combobox1.Items;
      Close;
      sql.Text:='select name from tb_deptinfo order by sid';
      Open;
      if not IsEmpty then
      while not Eof do
      begin
        ComboBox2.Items.Add(FieldByName('name').AsString);
        Next;
      end;
      Close;
      sql.Text:='select name from tb_gwinfo order by sid';
      Open;
      if not IsEmpty then
      while not Eof do
      begin
        ComboBox3.Items.Add(FieldByName('name').AsString);
        Next;
      end;
      Close;
    end;
end;

procedure TYgInfoFrame.ComboBox1Change(Sender: TObject);
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

procedure TYgInfoFrame.DBAdvGrid2DblClick(Sender: TObject);
begin
   if UniQuery1.IsEmpty then Exit;
   isadd:=False;
   clearedit;
   with UniQuery1 do
   begin
     Edit2.Text:=FieldByName('empid').AsString;
     Edit3.Text:=FieldByName('empname').AsString;
     Edit4.Text:=FieldByName('sfz').AsString;
     Edit5.Text:=FieldByName('email').AsString;
     Edit6.Text:=FieldByName('linktel').AsString;
     Edit7.Text:=FieldByName('Remark').AsString;
     Edit8.Text:=FieldByName('id').AsString;
     Edit9.Text:=FieldByName('sr').AsString;
     Edit10.Text:=FieldByName('shopid').AsString;
     ComboBox1.Text:=FieldByName('shopname').AsString;
     ComboBox2.Text:=FieldByName('bmname').AsString;
     ComboBox3.Text:=FieldByName('gwname').AsString;
     DateTimePicker1.Date:=FieldByName('rzdate').AsDateTime;
   end;
   initpanel;
end;

procedure TYgInfoFrame.initpanel;
var
 t,l:Integer;
begin
   l:=(Width-panel2.Width) div 2;
   t:=(Height-Panel2.Height) div 2;
   Panel2.Top:=t;
   Panel2.Left:=l;
   Panel2.Visible:=true;
end;

procedure TYgInfoFrame.UniFrameCreate(Sender: TObject);
var
 sqlstr:string;
begin
    Panel2.Visible:=False;
    YgInfoFrame:=Self;
    sqlstr:='select * from tb_yginfo order by id';
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

end;

procedure TYgInfoFrame.UniFrameDestroy(Sender: TObject);
begin
    UniQuery1.Close;
end;

end.
