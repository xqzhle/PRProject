unit BottleInsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, DB, MemDS, DBAccess, Uni, ImgList, AdvUtil;

type
  TBottleInsFrame = class(TUniFrame)
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
    Label8: TLabel;
    Edit5: TEdit;
    Label11: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
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
var
 BottleInsFrame:TBottleInsFrame;
implementation

uses
  DbUnit, MainUnit,zcomm, SelKhUnit;

{$R *.dfm}
var
 isadd:Boolean;
 typename:string;

procedure TBottleInsFrame.Button1Click(Sender: TObject);
var
 wherestr:string;
begin
    if (Edit1.Text='')  then
   begin
     exit;
   end;
   wherestr:='where (1=1)';
   if Edit1.Text<>'' then
   wherestr:=wherestr+' and (name like ''%'+edit1.text+'%'')';

    with UniQuery1 do
    begin
      Close;
      SQL.Text:='select * from tb_Inspection '+wherestr;
      Open;
    end;
end;

procedure TBottleInsFrame.Button2Click(Sender: TObject);
begin

   Edit2.Clear;
   Edit3.Clear;
   Edit4.Clear;
   Edit5.Clear;

   Data1.ClientDataSet6.Close;
   Data1.ClientDataSet6.sql.Text := 'Select Max(name_ID) as MaxID from tb_Inspection Where name_ID like'+''''+'DB%'+'''';
   Data1.ClientDataSet6.Open;
   if not Data1.ClientDataSet6.IsEmpty then
   begin
    if Data1.ClientDataSet6.FieldByName('maxid').AsString<>'' then
     begin
        Edit2.Text := trim(inttostr(strtoint(Copy(Data1.ClientDataSet6.FieldByName('maxid').AsString, 3, 2))+1));
         if length(trim(edit2.Text))=1 then edit2.Text:='DB0'+trim(edit2.Text) else  edit2.Text:='DB'+trim(edit2.Text);
     end
    else  Edit2.Text := 'DB01';
   end;
   Data1.ClientDataSet6.Close;
   isadd:=True;
   initpanel;
end;

procedure TBottleInsFrame.Button4Click(Sender: TObject);
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
              Data1.sqlcmd1.SQL.Text:='delete tb_Inspection where id='''+sid+'''';
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

procedure TBottleInsFrame.Button6Click(Sender: TObject);
var
 sqlstr:string;
 i:Integer;
begin
   if Edit3.Text='' then
   begin
     mshowmessage('请输入单位名称');
     Exit;
   end;

   if isadd then
    sqlstr:='INSERT INTO tb_Inspection (name_ID,name,createuser,creATEdate,Remark,tel,addr) VALUES('''+edit2.Text+''','''+edit3.Text+''', '+
      ''''+loginname+''','''+formatdatetime('yyyy-mm-dd hh:mm:ss',Now)+''','''+Edit5.Text+''','''+Edit4.Text+''','''+Edit6.Text+''')'
      else
       sqlstr:='update tb_Inspection set name='''+edit3.Text+''',name_id='''+edit2.Text+''','+
      'Remark='''+Edit5.Text+''',tel='''+Edit4.Text+''',addr='''+Edit6.Text+''' where id='''+edit7.Text+'''';
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

procedure TBottleInsFrame.Button7Click(Sender: TObject);
begin
    Panel2.Visible:=False;
end;

procedure TBottleInsFrame.DBAdvGrid2DblClick(Sender: TObject);
begin
   if UniQuery1.IsEmpty then Exit;
   isadd:=False;
   with UniQuery1 do
   begin
     Edit2.Text:=FieldByName('name_ID').AsString;
     Edit3.Text:=FieldByName('name').AsString;
     Edit4.Text:=FieldByName('tel').AsString;
     Edit5.Text:=FieldByName('Remark').AsString;
     Edit6.Text:=FieldByName('addr').AsString;
     Edit7.Text:=FieldByName('id').AsString;

   end;
   initpanel;
end;

procedure TBottleInsFrame.initpanel;
var
 t,l:Integer;
begin
   l:=(Width-panel2.Width) div 2;
   t:=(Height-Panel2.Height) div 2;
   Panel2.Top:=t;
   Panel2.Left:=l;
   Panel2.Visible:=true;
end;

procedure TBottleInsFrame.UniFrameCreate(Sender: TObject);
var
 sqlstr:string;
begin
    Panel2.Visible:=False;
    sqlstr:='select * from tb_Inspection order by id';
    UniQuery1.Close;
    UniQuery1.SQL.Text:= sqlstr;
    UniQuery1.Open;

//    with Data1.sqlcmd1 do
//    begin
//      Close;
//      sql.Text:='select typename from tpricetype where type=0';
//      Open;
//      if not IsEmpty then
//      typename:=FieldByName('typename').AsString
//      else typename:='';
//      Close;
//      if typename='' then  exit;
//      sql.Text:='select name from tpriceinfo where typeid='''+typename+'''';
//      Open;
//      if not IsEmpty then
//      while not Eof do
//      begin
//        ComboBox1.Items.Add(FieldByName('name').AsString);
//        Next;
//      end;
//      Close;
//    end;
    BottleInsFrame:=Self;
  //  Label9.Caption:='总共：'+IntToStr(Data1.sqlcmd7.RecordCount)+' 条记录';

end;

procedure TBottleInsFrame.UniFrameDestroy(Sender: TObject);
begin
    UniQuery1.Close;
end;

end.
