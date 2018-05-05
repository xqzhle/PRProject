unit DjYfUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, DB, MemDS, DBAccess, Uni;

type
  TDjYfFrame = class(TUniFrame)
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
    DBAdvGrid1: TDBAdvGrid;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    Label3: TLabel;
    Edit4: TEdit;
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
 typename:string;

procedure TDjYfFrame.Button1Click(Sender: TObject);
begin
   if Edit1.Text='' then Exit;
    with Data1.sqlcmd7 do
    begin
      Close;
      SQL.Text:='select * from tb_djyh where name like ''%'+edit1.Text+'%''';
      Open;
    end;
end;

procedure TDjYfFrame.Button2Click(Sender: TObject);
begin
   if typename='' then
   begin
     mshowmessage('请先添加商品');
     Exit;
   end;
    with Data1.sqlcmd1 do
    begin
      Close;
      sql.Text:='select name from tpriceinfo where typeid='''+typename+'''';
      Open;
      if IsEmpty then
      begin
        mshowmessage('请先添加商品');
        Exit;
      end;
      Close;
    end;
   Edit2.Clear;
   Edit3.Clear;
   Data1.ClientDataSet6.Close;
   Data1.ClientDataSet6.sql.Text := 'select max(sn) as maxid from tb_djyh';
   Data1.ClientDataSet6.Open;
   if not Data1.ClientDataSet6.IsEmpty then
    if Data1.ClientDataSet6.FieldByName('maxid').AsString<>'' then

    Edit2.Text := IntToStr(Data1.ClientDataSet6.FieldByName('maxid').AsInteger + 1)
   else  Edit2.Text := '101';
   if Length(Edit2.Text)=1 then Edit2.Text:='10'+Edit2.Text;
   isadd:=True;
   UniQuery1.Close;
   UniQuery1.SQL.Text:='select name as spname,onejf as gjyh,mdf as pyh from tpriceinfo where typeid='''+typename+'''';
   UniQuery1.Open;
   initpanel;
end;

procedure TDjYfFrame.Button4Click(Sender: TObject);
var
 i:Integer;
 state,issel: boolean;
 sid:string;
begin
   if Data1.UniQuery8.IsEmpty then Exit;
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
              Data1.UniQuery8.RecNo:=i;
              sid:=Data1.UniQuery8.FieldByName('id').AsString;
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text:='delete tb_djyh where id='''+sid+'''';
              try
                Data1.sqlcmd1.ExecSQL;
              except
               on E: Exception do
               mshowmessage('删除失败'+e.Message);
              end;
           end;
        end;
       end;
      Data1.UniQuery8.Close;
      Data1.UniQuery8.Open;
     end;

end;

procedure TDjYfFrame.Button6Click(Sender: TObject);
var
 sqlstr:string;
 i:Integer;
begin
   if Edit3.Text='' then
   begin
     mshowmessage('请输入等级优惠名称');
     Exit;
   end;

   if isadd then
    sqlstr:='INSERT INTO tb_djyh (sn,name,crename,credate,memo) VALUES('''+edit2.Text+''','''+edit3.Text+''', '+
      ''''+loginname+''','''+formatdatetime('yyyy-mm-dd hh:mm:ss',Now)+''','''+Edit4.Text+''')'
      else
       sqlstr:='update tb_djyh set name='''+edit3.Text+''','+
      'memo='''+Edit4.Text+''' where id='''+edit7.Text+'''';
      with Data1 do
      begin
        sqlcmd1.close;
        sqlcmd1.SQL.Text:=sqlstr;
        try
           sqlcmd1.ExecSQL;
           UniQuery8.Close;
           UniQuery8.Open;
           for i := 1 to DBAdvGrid1.RowCount do
             begin
                Self.UniQuery1.RecNo:=i;
                if DBAdvGrid1.Cells[1,i]<>'' then
                begin
                  if isadd then
                  sqlstr:='insert into tb_djyhinfo (spname,yhsn,gjyh,pyh) values ('''+DBAdvGrid1.Cells[1,i]+''','''+edit2.Text+''','''+DBAdvGrid1.Cells[2,i]+''','''+DBAdvGrid1.Cells[3,i]+''')'
                  else sqlstr:='update tb_djyhinfo set gjyh='''+DBAdvGrid1.Cells[2,i]+''',pyh='''+DBAdvGrid1.Cells[3,i]+'''  where spname='''+DBAdvGrid1.Cells[1,i]+'''';
                  try
                    sqlcmd1.Close;
                    sqlcmd1.SQL.Text:=sqlstr;
                    sqlcmd1.ExecSQL;
                  except on E: Exception do
                  end;
                end;
             end;
           Panel2.Visible:=False;
           Self.UniQuery1.Close;
           mshowmessage('操作成功');
        except
         on E: Exception do
         mshowmessage('操作失败'+e.Message);
        end;
      end;
end;

procedure TDjYfFrame.Button7Click(Sender: TObject);
begin
    Panel2.Visible:=False;
end;

procedure TDjYfFrame.DBAdvGrid2DblClick(Sender: TObject);
begin
   if Data1.UniQuery8.IsEmpty then Exit;
   isadd:=False;
   with Data1.UniQuery8 do
   begin
     Edit2.Text:=FieldByName('sn').AsString;
     Edit3.Text:=FieldByName('name').AsString;
     Edit7.Text:=FieldByName('id').AsString;
     if Edit3.Text<>'' then
     begin
       UniQuery1.Close;
       UniQuery1.SQL.Text:='select * from tb_djyhinfo where yhname='''+edit3.Text+'''';
       UniQuery1.Open;
     end;
   end;
   initpanel;
end;

procedure TDjYfFrame.initpanel;
var
 t,l:Integer;
begin
   l:=(Width-panel2.Width) div 2;
   t:=(Height-Panel2.Height) div 2;
   Panel2.Top:=t;
   Panel2.Left:=l;
   Panel2.Visible:=true;
end;

procedure TDjYfFrame.UniFrameCreate(Sender: TObject);
var
 sqlstr:string;
begin
    Panel2.Visible:=False;
    sqlstr:='select * from tb_djyh order by id';
    Data1.UniQuery8.Close;
    Data1.UniQuery8.SQL.Text:= sqlstr;
    Data1.UniQuery8.Open;
    with Data1.sqlcmd1 do
    begin
      Close;
      sql.Text:='select typename from tpricetype where type=0';
      Open;
      if not IsEmpty then
      typename:=FieldByName('typename').AsString
      else typename:='';
      Close;
    end;
  //  Label9.Caption:='总共：'+IntToStr(Data1.sqlcmd7.RecordCount)+' 条记录';

end;

procedure TDjYfFrame.UniFrameDestroy(Sender: TObject);
begin
    Data1.UniQuery8.Close;
end;

end.
