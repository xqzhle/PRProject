unit TreeUtils;

interface
uses
  Windows, Messages, SysUtils, Variants,uRODataSnapConnection, Classes,DBClient, ComCtrls, DB, ADODB,
  TreeFillThrd,Uni; //注意
type
  TTreeUtils = class
    TreeView: TTreeView;
    NData: TNodeData;
    Conn: TADOConnection;
    Query: Tuniquery;
    constructor Create(ATree: TTreeView;ATableName: string;
      AFieldIndex: string = 'ID'; AFieldPID: string = 'PID';
      AFieldCaption: string = 'comname'; ARootText: string = '组织架构');
    destructor Destroy;
  private
    TableName: string;
    FieldIndex: string;
    FieldPID: string;
    FieldCaption: string;
    RootText: string;
    sqlStr, errStr: string;
    function getMaxIndex: integer;
    function execSQL(sqlStr: string; var errMsg: string): boolean;
  public
    //按照节点在数据库中的编号查找节点
    function FindTreeNode(Tree: TTreeView; Index: integer): TTreeNode;
    //删除子树
    function DeleteTree(Node: TTreeNode): Boolean;
    //查找节点在数据库中的数据
    function getTreeNodeData(TreeNode: TTreeNode): TNodeData;
    function getSelNodeIndex: integer;
    function getSelNodeCaption: string;
    //添加节点
    function AddNode(ACaption: string = '新节点'; Index: integer = -1; ANode: TTreeNode = nil): Boolean;
    function AddChildNode(ACaption: string = '新节点'; Index: integer = -1; ANode: TTreeNode = nil): Boolean;
    //修改节点
    function ModifyNodeCaption(NewCaption: string; Node: TTreeNode): boolean;
    function ModifyNodePID(PID: integer; Node: TTreeNode): boolean;
    //填充节点
    procedure FillTree;
  end;

implementation

uses MainUnit, DbUnit;
//--------------------------------------------------------------
constructor TTreeUtils.Create(ATree: TTreeView;  ATableName: string;
  AFieldIndex: string = 'ID'; AFieldPID: string = 'PID';
  AFieldCaption: string = 'comname'; ARootText: string = '组织架构');
begin
  TreeView := ATree;
  TableName := ATableName;
  FieldIndex :=AFieldIndex;
  FieldPID := AFieldPID;
  FieldCaption := AFieldCaption;
  RootText := ARootText;
  Query := Tuniquery.Create(nil);
  Query. connection:=data1.uniconnection1;

end;
//--------------------------------------------------------------
destructor TTreeUtils.Destroy;
begin
  Query.Free;
  inherited Destroy;
end;
//--------------------------------------------------------------
function TTreeUtils.FindTreeNode(Tree: TTreeView; Index: integer): TTreeNode;
var i: integer;
begin
  Result := nil;
  for i := 0 to Tree.Items.Count - 1 do
    if PNodeData(Tree.Items.Item[i].Data)^.Index = Index then
      Result := Tree.Items.Item[i];
end;
//--------------------------------------------------------------
function TTreeUtils.DeleteTree(Node: TTreeNode): Boolean;
  function DelTableFromIndex(index: integer): boolean;
  var
    sqlStr: string;
    errSTr: string;
  begin
    Result := False;
    SQLStr := 'Delete from ' + TableName + ' where ' + FieldIndex + ' = ' + IntToStr(index);
    if execSQL(sqlStr, errStr) then Result := True;
  end;
  //------------------------------------------------------------
  function DelTreeFromDB(ParentID: integer): Boolean;
  var Query: TClientDataSet;
  begin
    Query := nil;
    Result := False;
    try
      Query := TClientDataSet.Create(nil);
    //   Query.RemoteServer:=DA1.RODataSnapConnection1;
      Query.ProviderName:='DataSetProvider1';
      Query.CommandText:='';
      Query.CommandText := 'select * from ' + TableName + ' where PID = ' + IntToStr(ParentID);
      if Query.Active then Query.Close;
      Query.Open;
      while Query.Eof = False do
      begin
        DelTreeFromDB(Query.FieldValues[FieldIndex]);
        Result := DelTableFromIndex(Query.FieldByName(FieldIndex).AsInteger);
        Query.Next;
      end;
    finally
      Query.Free;
    end;
    Result := DelTableFromIndex(ParentID);
  end;
  //------------------------------------------------------------
begin
  Result := False;
  if Node.AbsoluteIndex = 0 then
  begin
    raise Exception.Create('禁止删除根节点！');
    Exit;
  end;
  if DelTreeFromDB(PNodeData(Node.Data)^.Index) then
  begin
    TreeView.Items.Delete(Node);
    Result := True;
  end;
end;
//--------------------------------------------------------------
function TTreeUtils.getTreeNodeData(TreeNode: TTreeNode): TNodeData;
begin
  if TreeNode = nil then
    Result := PNodeData(TreeView.Items.Item[0].Data)^
  else
    Result := PNodeData(TreeNode.Data)^;
end;
//--------------------------------------------------------------
function TTreeUtils.getSelNodeIndex: integer;
var PData: PNodeData;
begin
  Result := -1;
  if TreeView.Selected = nil then Exit;
  PData := PNodeData(TreeView.Selected.Data);
  Result := PData^.Index;
end;
function TTreeUtils.getSelNodeCaption: string;
var PData: PNodeData;
begin
  Result := '';
  if TreeView.Selected = nil then Exit;
  PData := PNodeData(TreeView.Selected.Data);
  Result := PData^.Caption;
end;
//--------------------------------------------------------------
function TTreeUtils.AddNode(ACaption: string = '新节点'; Index: integer = -1;
  ANode: TTreeNode = nil): Boolean;
var Node, NewNode: TTreeNode;
  PData: PNodeData;
begin
  Result := True;
  try
    if ANode = nil then Node := TreeView.Selected
    else Node := ANode;
    New(PData);
    PData^.Index := getMaxIndex + 1;
    PData^.Caption := ACaption;
    sqlStr := 'Insert into ' + TableName + ' (' + FieldIndex + ',' + FieldPID +
      ',' + FieldCaption + ')' + ' values(' +
      IntToStr(PData^.Index) + ',';
    if Node = nil then Node := TreeView.Items.Item[0];
    if Node.Level = 0 then
      sqlStr := sqlStr + '0,"' + ACaption + '")'
    else
      sqlStr := sqlStr + IntToStr(PNodeData(Node.Parent.Data)^.Index) + ',"' + ACaption + '")';
    if execSQL(sqlStr, errStr) then
    begin
      if Node.Level = 0 then
        NewNode := TreeView.Items.AddChildObject(Node, ACaption, PData)
      else NewNode := TreeView.Items.AddObject(Node, ACaption, PData);
      NewNode.ImageIndex := 1;
      NewNode.SelectedIndex := 2;
    end;
  except
    Result := False;
  end;
end;
//--------------------------------------------------------------
function TTreeUtils.AddChildNode(ACaption: string = '新节点';
  Index: integer = -1; ANode: TTreeNode = nil): Boolean;
var Node, NewNode: TTreeNode;
  PData: PNodeData;
begin
  Result := True;
  try
    if ANode = nil then Node := TreeView.Selected
    else Node := ANode;
    New(PData);
    PData^.Index := getMaxIndex + 1;
    PData^.Caption := ACaption;
    sqlStr := 'Insert into ' + TableName + ' (' + FieldIndex + ',' + FieldPID +
      ',' + FieldCaption + ')' + ' values(' +
      IntToStr(PData^.Index) + ',';
    if Node = nil then Node := TreeView.Items.Item[0];
    if Node.Level = 0 then
      sqlStr := sqlStr + '0,''' + ACaption + ''')'
    else
      sqlStr := sqlStr + IntToStr(PNodeData(Node.Data)^.Index) + ',''' + ACaption + ''')';
    if execSQL(sqlStr, errStr) then
    begin
      NewNode := TreeView.Items.AddChildObject(Node, ACaption, PData);
      NewNode.ImageIndex := 1;
      NewNode.SelectedIndex := 2;
    end;

  except
    Result := False;
  end;
end;
//--------------------------------------------------------------
//执行SQL语言
function TTreeUtils.execSQL(sqlStr: string; var errMsg: string): boolean;
begin
  result := false;
  errMsg := '执行成功！';
  try
   // Query.CommandText:='';
    Query.SQL.Text:= sqlStr;
    if Query.Active then Query.Close;
    Query.Execute;
    result := true;
  except
    on e: Exception do
      errMsg := e.Message;
  end;
end;
//------------------------------------------------------------------------------
function TTreeUtils.getMaxIndex: integer;
var i: integer;
  PNode: PNodeData;
begin
  Result := 0;
  for i := 0 to TreeView.Items.Count - 1 do
  begin
    PNode := PNodeData(TreeView.Items.Item[i].Data);
    if Result < PNode^.Index then
      Result := PNode^.Index;
  end;
end;
//------------------------------------------------------------------------------
procedure TTreeUtils.FillTree;
var H: TTreeFill;
begin
  H := TTreeFill.Create(TreeView,  TableName, RootText, FieldIndex, FieldPID, FieldCaption);

end;
//------------------------------------------------------------------------------
function TTreeUtils.ModifyNodeCaption(NewCaption: string;
  Node: TTreeNode): boolean;
begin
  sqlStr := 'Update ' + TableName + ' set ' + FieldCaption + '=''' + NewCaption + ''' where '
    + FieldIndex + ' = ' + IntToStr(PNodeData(Node.Data)^.Index);


 // sqlStr:='Update dir set caption='''+newcaption+''' where id='''+IntToStr(PNodeData(Node.Data)^.Index)+''' ' ;
  if execSQL(sqlStr, errStr) then
  begin
    Node.Text := NewCaption;
    PNodeData(Node.Data)^.Caption := NewCaption;
  end;
end;
//------------------------------------------------------------------------------
function TTreeUtils.ModifyNodePID(PID: integer; Node: TTreeNode): boolean;
  function InChildNode(APID: integer; ANode: TTreeNode): boolean;
  var loop, NStart, NEnd: integer;
  begin
    Result := False;
    NStart := Node.AbsoluteIndex;
    if Node.getNextSibling = nil then NEnd := TreeView.Items.Count - 1
    else NEnd := Node.GetNextSibling.AbsoluteIndex;
    for loop := NStart + 1 to NEnd - 1 do
    begin
      Result := Result or (PNodeData(TreeView.Items.Item[loop].Data)^.Index = PID);
    end;
  end;
begin
  Result := False;
  //如果是根节点则忽略
  if Node.AbsoluteIndex = 0 then Exit;
  //如果PID不变则忽略
  if PID = PNodeData(Node.Parent.Data)^.Index then Exit;
  //如果父节点是自己也则忽略
  if PID = PNodeData(Node.Data)^.Index then Exit;
  //如果父节点编号是它其中一级子节点的编号，则忽略
  if InChildNode(PID, Node) then Exit;
  sqlStr := 'Update ' + TableName + ' set ' + FieldPID + '=''' + IntToStr(PID) + ''' where '
    + FieldIndex + ' = ' + IntToStr(PNodeData(Node.Data)^.Index);
  if execSQL(sqlStr, errStr) then Result := True;
end;

end.

