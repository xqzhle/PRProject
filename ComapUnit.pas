unit ComapUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ComCtrls,TreeUtils;

type
  TComapFrame = class(TFrame)
    TreeView1: TTreeView;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    Label9: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label10: TLabel;
    procedure TreeView1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    var
     TreeUtil:TTreeUtils;
  public
    { Public declarations }
  end;

implementation
uses DbUnit,MainUnit;

{$R *.dfm}
var
 isadd:Boolean=False;

procedure TComapFrame.Button1Click(Sender: TObject);
var
  i:Integer;
begin
 if TreeView1.SelectionCount = 0 then
 begin
  ShowMessage('请选择一项');
  Exit;
 end;
   for i := 1 to 7 do
   TEdit(FindComponent('edit'+inttostr(i))).Text:='';
   Memo1.Text:='';
   isadd:=true;
   ComboBox1.Enabled:=True;
end;

procedure TComapFrame.Button2Click(Sender: TObject);
var
 pid,sqlstr:string;
 i:Integer;
begin
   if Edit1.Text='' then
   begin
     ShowMessage('请输入公司名称');
     Exit;
   end;
   if isadd then
   begin
    if ComboBox1.ItemIndex=0 then
    begin
     ShowMessage('只能一个公司');
     exit;
    end;
    if (Edit9.Text='1') and (combobox1.ItemIndex=1) then
    begin
     ShowMessage('分公司下不能新增分公司');
      exit;
    end;
    if (Edit9.Text='0') or (Edit9.Text='1') then
    begin
      pid:=Edit8.Text;
    end
    else
    begin
     with Data1.sqlcmd1 do
     begin
       Close;
       sql.Text:='select id from tcompany where type=0';
       Open;
       if not IsEmpty then
       pid:=FieldByName('id').AsString;
       Close;
     end;
    end;
   if pid='' then pid:='1';
    sqlstr:='insert into tcompany (comname,shortname,tel,fax,address,unit_code,PBX,pid,type,memo) values '+
    ' ('''+edit1.Text+''','''+edit2.Text+''','''+edit3.Text+''','''+edit4.Text+''','''+edit5.Text+''','''+edit6.Text+''','+
    ''''+edit7.Text+''','''+pid+''','''+inttostr(ComboBox1.ItemIndex)+''','''+Memo1.Text+''') ' ;
   end
   else
   begin
     sqlstr:='update tcompany set comname='''+edit1.Text+''',shortname='''+edit2.Text+''',tel='''+edit3.Text+''',type='''+inttostr(ComboBox1.ItemIndex)+''','+
     ' fax='''+edit4.Text+''',address='''+edit5.Text+''',unit_code='''+edit6.Text+''',PBX='''+edit7.Text+''',memo='''+memo1.Text+''' where id='''+edit8.Text+'''' ;
   end;
   with Data1.sqlcmd1 do
   begin
     Close;
     SQL.Text:=sqlstr;
     try
       ExecSQL;
       MainForm.TreeUtil.FillTree;
       ShowMessage('操作成功');
       isadd:=False;
        for i := 1 to 7 do
       TEdit(FindComponent('edit'+inttostr(i))).Text:='';
     except
      on E: Exception do
      ShowMessage('操作失败'+e.Message);
     end;

   end;
end;

procedure TComapFrame.Button3Click(Sender: TObject);
 var
  i:Integer;
begin
 if TreeView1.SelectionCount = 0 then
 begin
  ShowMessage('请选择一项');
  Exit;
 end;
    if (IDYES = Application.MessageBox('确定要删除吗？',pwidechar(Application.Title),MB_YesNo+MB_IconQuestion)) then
     begin
         with Data1.sqlcmd1 do
      begin
        Close;
        SQL.Text:='delete from tcompany where id='''+edit8.Text+'''';
      try
       ExecSQL;
       MainForm.TreeUtil.FillTree;
       ShowMessage('操作成功');
       isadd:=False;
        for i := 1 to 7 do
       TEdit(FindComponent('edit'+inttostr(i))).Text:='';
      except
        on E: Exception do
       ShowMessage('操作失败'+e.Message);
       end;

      end;
     end;
end;

procedure TComapFrame.TreeView1Click(Sender: TObject);
var
  Node : TTreeNode;
  str:string;
begin
    Node := TreeView1.Selected;
    str:=Node.Text;
    with Data1.sqlcmd1 do
    begin
      Close;
      SQL.Text:='select comname,shortname,tel,fax,address,unit_code,PBX,id,type,memo from tCompany where comname='''+str+'''';
      Open;
      if not IsEmpty then
      begin
        Memo1.Text:=FieldByName('memo').AsString;
        ComboBox1.ItemIndex:=FieldByName('type').AsInteger;
        Edit1.Text:=Fields.Fields[0].AsString;
        Edit2.Text:=Fields.Fields[1].AsString;
        Edit3.Text:=Fields.Fields[2].AsString;
        Edit4.Text:=Fields.Fields[3].AsString;
        Edit5.Text:=Fields.Fields[4].AsString;
        Edit6.Text:=Fields.Fields[5].AsString;
        Edit7.Text:=Fields.Fields[6].AsString;
        Edit8.Text:=Fields.Fields[7].AsString;
        Edit9.Text:=Fields.Fields[8].AsString;
      end;
      Close;
    end;
    Edit10.Text:= IntToStr(Node.Level);
    Button3.Enabled:=Node.Level>0;
    ComboBox1.Enabled:=Node.Level>0;
    isadd:=False;
end;

end.
