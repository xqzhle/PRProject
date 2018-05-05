unit TreeFillThrd;

interface

uses
  Classes, ComCtrls, ADODB,DBClient,uRODataSnapConnection, SysUtils,Uni;

type
  TNodeData = record
    Index: integer;
    Caption: string;
  end;
  PNodeData = ^TNodeData;
  TTreeFill = class(TThread)
    TV: TTreeView;
    TableName: string;
    FieldIndex: string;
    FieldPID: string;
    FieldCaption: string;
    RootText: string;
    Conn: TADOConnection;
    Ptr: PNodeData;
    constructor Create(ATreeView: TTreeView;
      ATable: string; ARootText: string = '组织架构';
      AFieldIndex: string = 'ID'; AFieldPID: string = 'PID';
      AFieldCaption: string = 'comname');
  private
    procedure AddTree(Node: TTreeNode; PN: PNodeData);
  protected
    procedure Execute; override;
  end;

implementation

uses  DbUnit, MainUnit;
//------------------------------------------------------------------------------
constructor TTreeFill.Create(ATreeView: TTreeView;
  ATable: string; ARootText: string = '组织架构';
  AFieldIndex: string = 'ID'; AFieldPID: string = 'PID';
  AFieldCaption: string = 'comname');
begin
  FieldIndex := AFieldIndex;
  FieldPID := AFieldPID;
  FieldCaption := AFieldCaption;
  TV := ATreeView;
  TableName := ATable;
  RootText := ARootText;
  //Conn := AConn;
  New(Ptr);
  inherited Create(False);
end;
//------------------------------------------------------------------------------
procedure TTreeFill.Execute;
var
  Node: TTreeNode;
begin
  FreeOnTerminate := True;
  TV.Items.Clear;
  Ptr^.Index := 0;
 // Ptr^.Caption := RootText;
//  Node := TV.Items.AddObject(nil, RootText, Ptr);
 // Node.ImageIndex := 0;
 // Node.SelectedIndex := 0;
  AddTree(Node, Ptr);
  TV.FullExpand;
end;
//------------------------------------------------------------------------------
procedure TTreeFill.AddTree(Node: TTreeNode; PN: PNodeData);
var
  Query: TUniQuery;
  nNode: TTreeNode;
  PNode: PNodeData;
begin
  try
    Query := TUniQuery.Create(nil);
    //Query.RemoteServer:=da1.RODataSnapConnection1;
    Query.Connection:=Data1.UniConnection1;
   // Query.CommandText:='';
    Query.SQL.Text:= 'Select * from ' + TableName + ' where ' + FieldPID + ' =' + IntToStr(PN^.Index);
    if Query.Active then
      Query.Close;
    Query.Open;
    while Query.Eof = False do
    begin
      New(PNode);
      PNode^.Caption := Query.FieldByName(FieldCaption).AsString;
      PNode^.Index := Query.FieldByName(FieldIndex).AsInteger;
      nNode := TV.Items.AddChildObject(Node, PNode^.Caption, PNode);
      nNode.ImageIndex := 1;
      nNode.SelectedIndex := 2;
      AddTree(nNode, PNode);
      Query.Next;
    end;
  finally
    Query.Free;
  end;
end;
//------------------------------------------------------------------------------
end.

