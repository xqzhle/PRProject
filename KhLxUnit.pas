unit KhLxUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, ComCtrls, ImgList;

type
  TKhLxFrame = class(TUniFrame)
    TreeView1: TTreeView;
    Label3: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Label1: TLabel;
    ImageList4: TImageList;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
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


{ TKhLxFrame }

procedure TKhLxFrame.Button1Click(Sender: TObject);
begin
  Data1.ClientDataSet6.Close;
  Data1.ClientDataSet6.sql.Text := 'select max(type_id) as maxid from tbCustomer_Type';
  Data1.ClientDataSet6.Open;
  if Data1.ClientDataSet6.FieldByName('maxid').AsString <>'' then
    Edit2.Text := IntToStr(Data1.ClientDataSet6.FieldByName('maxid').AsInteger + 1)
  else  Edit2.Text := '101';
  if Length(Edit2.Text)=1 then Edit2.Text:='10'+Edit2.Text;
  
  edit1.Clear;
  Data1.ClientDataSet6.Close;
  yy:=True;
end;

procedure TKhLxFrame.Button2Click(Sender: TObject);
begin
   if Edit2.Text='' then exit;
   if (IDYES = Application.MessageBox('ȷ��Ҫɾ��ѡ�еļ�¼��',pwidechar(Application.Title),MB_YesNo+MB_IconQuestion)) then
     begin
            Data1.ClientDataSet6.Close;
            Data1.ClientDataSet6.sql.Text := 'delete from  tbCustomer_Type where type_id=''' + Edit2.Text + '''';
           try
             Data1.ClientDataSet6.ExecSQL;
             mshowmessage('�����Ѿ��ɹ�ɾ����');
             FillTreeView(TreeView1);
             Edit1.Clear;
             Edit2.Clear;
             Edit3.Clear;
             Edit4.Clear;
           except on E: Exception do
             mshowmessage('ɾ��ʧ��:'+e.Message);
           end;
     end;
end;

procedure TKhLxFrame.Button3Click(Sender: TObject);
begin
 if Edit3.Text='' then
  begin
     mShowMessage('�Żݽ���Ϊ�գ�');
     Edit3.SetFocus;
     Exit;
  end;
  if Edit4.Text='' then
  begin
     mShowMessage('�������ڲ���Ϊ�գ�');
     Edit4.SetFocus;
     Exit;
  end;
    if yy then
    begin
      Data1.ClientDataSet6.Close;
      Data1.ClientDataSet6.sql.Text := 'select type_name from tbCustomer_Type where type_name=''' + edit1.Text + '''';
      Data1.ClientDataSet6.Open;
      if not Data1.ClientDataSet6.IsEmpty then
      begin
        mShowMessage('�Ѵ��ڿͻ�����Ϊ��' + edit1.text + '����Ϣ�����������룡');
        Edit1.SetFocus;
      end
      else
      begin
        data1.sqlcmd1.Close;
        Data1.sqlcmd1.sql.Text := 'insert into tbCustomer_Type (type_id,type_name,zjmoney,Instate) values (''' + edit2.Text + ''',''' + edit1.Text + ''',''' + edit3.Text + ''',''' + edit4.Text + ''')';
        try
          data1.sqlcmd1.ExecSQL;
          mShowMessage('��ӳɹ���');
          Edit1.Clear;
          Edit2.Clear;
          Edit3.Clear;
          Edit4.Clear;
          FillTreeView(TreeView1);
         except on E: Exception do
             mshowmessage('���ʧ��:'+e.Message);
           end;

      end;
    end
    else
    begin
      data1.sqlcmd1.Close;
      Data1.sqlcmd1.sql.Text := 'update tbCustomer_Type set type_name=''' + edit1.Text + ''',zjmoney='''+edit3.Text+''',Instate='''+edit4.Text+'''  where type_id=''' + edit2.Text + '''';
      try
        data1.sqlcmd1.ExecSQL;
        mShowMessage('�޸ĳɹ���');
        FillTreeView(TreeView1);
      except on E: Exception do
             mshowmessage('�޸�ʧ��:'+e.Message);
      end;
    end;


end;

procedure TKhLxFrame.FillTreeView(TreeView: TTreeView);
 procedure CreateSubTree(FNodeName: string; Node: TTreeNode = nil);
  begin
    Data1.ClientDataSet2.Close;
    Data1.ClientDataSet2.SQL.Text := 'Select * from tbCustomer_Type  ORDER BY type_id';
    Data1.ClientDataSet2.Open;
    Data1.ClientDataSet2.First;
    while not Data1.ClientDataSet2.Eof do
    begin
      TreeView.Items.AddChild(Node, Data1.ClientDataSet2.FieldByName('type_Name').AsString);
       // CreateSubTree(mLocalName, TreeNode); // �˴�ѭ���ݹ�
      Data1.ClientDataSet2.Next;
    end;
    Data1.ClientDataSet2.Close;
  end;

begin
  TreeView.Items.BeginUpdate;
  TreeView.Items.Clear;

  with TreeView.Items.Add(nil, '��������') do
  begin
    ImageIndex := 0;
    SelectedIndex := 1;
  end;
  CreateSubTree('0', TreeView.Items[0]);
  TreeView.Items.EndUpdate;
  if TreeView.Items.Count>1 then
  TreeView.Items[1].Selected := True;

end;

procedure TKhLxFrame.selectshop(var shopname: string);
begin
 Data1.sqlcmd2.Close;
  Data1.sqlcmd2.sql.Text := 'select id,type_id,type_name,zjmoney,Instate from tbCustomer_Type where type_name=''' + shopname + '''';
  Data1.sqlcmd2.Open;
  if not Data1.sqlcmd2.IsEmpty then
  begin
    Edit1.Text:=Data1.sqlcmd2.FieldByName('type_name').AsString;
    Edit2.Text:=Data1.sqlcmd2.FieldByName('type_id').AsString;
    Edit3.Text:=Data1.sqlcmd2.FieldByName('zjmoney').AsString;
    Edit4.Text:=Data1.sqlcmd2.FieldByName('Instate').AsString;
  end;
  Data1.sqlcmd2.Close;
  yy:=False;

end;

procedure TKhLxFrame.TreeView1Click(Sender: TObject);
var
  str: string;
begin
  if TreeView1.Selected.Level < 1 then
  begin
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
    Edit4.Text:='';
  end
  else
  begin
    str := TreeView1.Items[TreeView1.Selected.Index + 1].Text;
    selectshop(str);
  end;
end;

procedure TKhLxFrame.UniFrameCreate(Sender: TObject);
begin
   FillTreeView(TreeView1);
   Edit1.Clear;
   Edit2.Clear;
   Edit3.Clear;
   Edit4.Clear;
end;

procedure TKhLxFrame.UniFrameDestroy(Sender: TObject);
begin
  Data1.sqlcmd2.Close;
  Data1.ClientDataSet6.Close;
end;

end.
