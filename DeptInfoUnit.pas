unit DeptInfoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, ComCtrls, ImgList;

type
  TDeptInfoFrame = class(TUniFrame)
    TreeView1: TTreeView;
    Label3: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
   procedure selectshop(var shopname: string);
    //procedure saveshop;

  public
    { Public declarations }
    procedure FillTreeView(TreeView: TTreeView);
  end;

implementation

uses
  DbUnit,zcomm;

{$R *.dfm}
var
 yy:Boolean;

procedure TDeptInfoFrame.Button1Click(Sender: TObject);
begin
  Data1.ClientDataSet6.Close;
  Data1.ClientDataSet6.sql.Text := 'select max(sid) as maxid from tb_deptinfo';
  Data1.ClientDataSet6.Open;
  if Data1.ClientDataSet6.FieldByName('maxid').AsString <>'' then
    Edit2.Text := IntToStr(Data1.ClientDataSet6.FieldByName('maxid').AsInteger + 1)
  else  Edit2.Text := '101';
  if Length(Edit2.Text)=1 then Edit2.Text:='10'+Edit2.Text;
  
  edit1.Clear;
  Data1.ClientDataSet6.Close;
  yy:=True;
end;

procedure TDeptInfoFrame.Button2Click(Sender: TObject);
begin
   if Edit2.Text='' then exit;
   if (IDYES = Application.MessageBox('确定要删除选中的记录吗？',pwidechar(Application.Title),MB_YesNo+MB_IconQuestion)) then
     begin
            Data1.ClientDataSet6.Close;
            Data1.ClientDataSet6.sql.Text := 'delete from  tb_deptinfo where sid=''' + Edit2.Text + '''';
           try
             Data1.ClientDataSet6.ExecSQL;
             mshowmessage('数据已经成功删除！');
             FillTreeView(TreeView1);
             Edit1.Clear;
             Edit2.Clear;
             Edit3.Clear;
           except on E: Exception do
             mshowmessage('删除失败:'+e.Message);
           end;
     end;
end;

procedure TDeptInfoFrame.Button3Click(Sender: TObject);
begin
 if Edit1.Text='' then
  begin
     mShowMessage('请输入部门名称！');
     Edit1.SetFocus;
     Exit;
  end;

    if yy then
    begin
      Data1.ClientDataSet6.Close;
      Data1.ClientDataSet6.sql.Text := 'select name from tb_deptinfo where name=''' + edit1.Text + '''';
      Data1.ClientDataSet6.Open;
      if not Data1.ClientDataSet6.IsEmpty then
      begin
        mShowMessage('已存在部门名称为：' + edit1.text + '的信息，请重新输入！');
        Edit1.SetFocus;
      end
      else
      begin
        data1.sqlcmd1.Close;
        Data1.sqlcmd1.sql.Text := 'insert into tb_deptinfo (sid,name) values (''' + edit2.Text + ''',''' + edit1.Text + ''')';
        try
          data1.sqlcmd1.ExecSQL;
          mShowMessage('添加成功！');
          Edit1.Clear;
          Edit2.Clear;
          Edit3.Clear;
          FillTreeView(TreeView1);
         except on E: Exception do
             mshowmessage('添加失败:'+e.Message);
           end;

      end;
    end
    else
    begin
      data1.sqlcmd1.Close;
      Data1.sqlcmd1.sql.Text := 'update tb_deptinfo set name=''' + edit1.Text + '''  where id=''' + edit3.Text + '''';
      try
        data1.sqlcmd1.ExecSQL;
        mShowMessage('修改成功！');
        FillTreeView(TreeView1);
      except on E: Exception do
             mshowmessage('修改失败:'+e.Message);
      end;
    end;


end;

procedure TDeptInfoFrame.FillTreeView(TreeView: TTreeView);
 procedure CreateSubTree(FNodeName: string; Node: TTreeNode = nil);
  begin
    Data1.ClientDataSet2.Close;
    Data1.ClientDataSet2.SQL.Text := 'Select name from tb_deptinfo  ORDER BY sid';
    Data1.ClientDataSet2.Open;
    Data1.ClientDataSet2.First;
    while not Data1.ClientDataSet2.Eof do
    begin
      TreeView.Items.AddChild(Node, Data1.ClientDataSet2.FieldByName('Name').AsString);
       // CreateSubTree(mLocalName, TreeNode); // 此处循环递归
      Data1.ClientDataSet2.Next;
    end;
    Data1.ClientDataSet2.Close;
  end;

begin
  TreeView.Items.BeginUpdate;
  TreeView.Items.Clear;

  with TreeView.Items.Add(nil, '所有类型') do
  begin
    ImageIndex := 0;
    SelectedIndex := 1;
  end;
  CreateSubTree('0', TreeView.Items[0]);
  TreeView.Items.EndUpdate;
  if TreeView.Items.Count>1 then
  TreeView.Items[1].Selected := True;

end;

procedure TDeptInfoFrame.selectshop(var shopname: string);
begin
 Data1.sqlcmd2.Close;
  Data1.sqlcmd2.sql.Text := 'select * from tb_deptinfo where name=''' + shopname + '''';
  Data1.sqlcmd2.Open;
  if not Data1.sqlcmd2.IsEmpty then
  begin
    Edit2.Text:=Data1.sqlcmd2.FieldByName('sid').AsString;
    Edit1.Text:=Data1.sqlcmd2.FieldByName('name').AsString;
    Edit3.Text:=Data1.sqlcmd2.FieldByName('id').AsString;
  end;
  Data1.sqlcmd2.Close;
  yy:=False;

end;

procedure TDeptInfoFrame.TreeView1Click(Sender: TObject);
var
  str: string;
begin
  if TreeView1.Selected.Level < 1 then
  begin
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
  end
  else
  begin
    str := TreeView1.Items[TreeView1.Selected.Index + 1].Text;
    selectshop(str);
  end;
end;

procedure TDeptInfoFrame.UniFrameCreate(Sender: TObject);
begin
   FillTreeView(TreeView1);
   Edit1.Clear;
   Edit2.Clear;
   Edit3.Clear;
end;

procedure TDeptInfoFrame.UniFrameDestroy(Sender: TObject);
begin
  Data1.sqlcmd2.Close;
  Data1.ClientDataSet6.Close;
end;

end.
