unit TsYhUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, DB, MemDS, DBAccess, Uni, ImgList;

type
  TTsYhFrame = class(TUniFrame)
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
    Button8: TButton;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
    procedure initpanel;
  public
    { Public declarations }
  end;
var
 TsYhFrame:TTsYhFrame;
implementation

uses
  DbUnit, MainUnit,zcomm, SelKhUnit;

{$R *.dfm}
var
 isadd:Boolean;
 typename:string;

procedure TTsYhFrame.Button1Click(Sender: TObject);
var
 wherestr:string;
begin
    if (Edit1.Text='') and (Edit6.Text='') and (Edit8.Text='') then
   begin
     exit;
   end;
   wherestr:='where (1=1)';
   if Edit1.Text<>'' then
   wherestr:=wherestr+' and (cname like ''%'+edit1.text+'%'')';
   if Edit6.Text<>'' then
   wherestr:=wherestr+' and (cid like ''%'+edit6.text+'%'')';
   if Edit8.Text<>'' then
   wherestr:=wherestr+' and (ctel like ''%'+edit8.text+'%'')';
    with Data1.UniQuery10 do
    begin
      Close;
      SQL.Text:='select * from tb_tsyh '+wherestr;
      Open;
    end;
end;

procedure TTsYhFrame.Button2Click(Sender: TObject);
begin
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
   Edit4.Clear;
   Edit5.Clear;
   Edit9.Clear;
   Edit10.Clear;
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

procedure TTsYhFrame.Button4Click(Sender: TObject);
var
 i:Integer;
 state,issel: boolean;
 sid:string;
begin
   if Data1.UniQuery10.IsEmpty then Exit;
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
              Data1.UniQuery10.RecNo:=i;
              sid:=Data1.UniQuery10.FieldByName('id').AsString;
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text:='delete tb_tsyh where id='''+sid+'''';
              try
                Data1.sqlcmd1.ExecSQL;
              except
               on E: Exception do
               mshowmessage('删除失败'+e.Message);
              end;
           end;
        end;
       end;
      Data1.UniQuery10.Close;
      Data1.UniQuery10.Open;
     end;

end;

procedure TTsYhFrame.Button6Click(Sender: TObject);
var
 sqlstr:string;
 i:Integer;
begin
   if Edit2.Text='' then
   begin
     mshowmessage('请选择客户名称');
     Exit;
   end;
   if combobox1.Text='' then
   begin
     mshowmessage('请选择商品名称');
     Exit;
   end;
   if (Edit3.Text='') and (Edit4.Text='') then
   begin
     mshowmessage('至少输入一种优惠');
     Exit;
   end;
   if isadd then
    sqlstr:='INSERT INTO tb_tsyh (cname,spname,crename,credate,memo,gjyh,pyh,cid,ctel) VALUES('''+edit2.Text+''','''+ComboBox1.Text+''', '+
      ''''+loginname+''','''+formatdatetime('yyyy-mm-dd hh:mm:ss',Now)+''','''+Edit5.Text+''','''+edit3.Text+''','''+edit4.Text+''''+
      ','''+edit9.Text+''','''+edit10.Text+''')'
      else
       sqlstr:='update tb_tsyh set gjyh='''+edit3.Text+''',pyh='''+edit4.Text+''',cid='''+edit9.Text+''',ctel='''+edit10.Text+''','+
      'memo='''+Edit5.Text+''',cname='''+edit2.Text+''',spname='''+combobox1.Text+''' where id='''+edit7.Text+'''';
      with Data1 do
      begin
        sqlcmd1.close;
        sqlcmd1.SQL.Text:=sqlstr;
        try
           sqlcmd1.ExecSQL;
           UniQuery10.Close;
           UniQuery10.Open;
           Panel2.Visible:=False;
           mshowmessage('操作成功');
        except
         on E: Exception do
         mshowmessage('操作失败'+e.Message);
        end;
      end;
end;

procedure TTsYhFrame.Button7Click(Sender: TObject);
begin
    Panel2.Visible:=False;
end;

procedure TTsYhFrame.Button8Click(Sender: TObject);
begin
    SelKhForm.seltype:=0;
    SelKhForm.ShowModal;
end;

procedure TTsYhFrame.DBAdvGrid2DblClick(Sender: TObject);
begin
   if Data1.UniQuery10.IsEmpty then Exit;
   isadd:=False;
   with Data1.UniQuery10 do
   begin
     Edit2.Text:=FieldByName('cname').AsString;
     Edit3.Text:=FieldByName('gjyh').AsString;
     Edit4.Text:=FieldByName('pyh').AsString;
     Edit5.Text:=FieldByName('memo').AsString;
     Edit7.Text:=FieldByName('id').AsString;
     Edit9.Text:=FieldByName('cid').AsString;
     Edit10.Text:=FieldByName('ctel').AsString;
     ComboBox1.Text:=FieldByName('spname').AsString;
   end;
   initpanel;
end;

procedure TTsYhFrame.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    Edit4.Text:='0';
end;

procedure TTsYhFrame.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in['0'..'9','.',#8,#13]) then
    key:=#0;
end;

procedure TTsYhFrame.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Edit3.Text:='0';
end;

procedure TTsYhFrame.initpanel;
var
 t,l:Integer;
begin
   l:=(Width-panel2.Width) div 2;
   t:=(Height-Panel2.Height) div 2;
   Panel2.Top:=t;
   Panel2.Left:=l;
   Panel2.Visible:=true;
end;

procedure TTsYhFrame.UniFrameCreate(Sender: TObject);
var
 sqlstr:string;
begin
    Panel2.Visible:=False;
    sqlstr:='select * from tb_tsyh order by id';
    Data1.UniQuery10.Close;
    Data1.UniQuery10.SQL.Text:= sqlstr;
    Data1.UniQuery10.Open;
    ComboBox1.Text:='';
    ComboBox1.Items.Clear;
    with Data1.sqlcmd1 do
    begin
      Close;
      sql.Text:='select typename from tpricetype where type=0';
      Open;
      if not IsEmpty then
      typename:=FieldByName('typename').AsString
      else typename:='';
      Close;
      if typename='' then  exit;
      sql.Text:='select name from tpriceinfo where typeid='''+typename+'''';
      Open;
      if not IsEmpty then
      while not Eof do
      begin
        ComboBox1.Items.Add(FieldByName('name').AsString);
        Next;
      end;
      Close;
    end;
    TsYhFrame:=Self;
  //  Label9.Caption:='总共：'+IntToStr(Data1.sqlcmd7.RecordCount)+' 条记录';

end;

procedure TTsYhFrame.UniFrameDestroy(Sender: TObject);
begin
    Data1.UniQuery10.Close;
end;

end.
