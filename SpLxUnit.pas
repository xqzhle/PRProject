unit SpLxUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame,  StdCtrls, ExtCtrls, Grids, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, AdvUtil;

type
  TSpLxiFrame = class(TUniFrame)
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
    Button5: TButton;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Button6: TButton;
    Button7: TButton;
    Edit5: TEdit;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure DBAdvGrid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure initpanle;
  public
    { Public declarations }
  end;

  var
   splxfrom:TSpLxiFrame;

implementation
uses DbUnit, MainUnit,zcomm;

{$R *.dfm}
var
 isadd:Boolean=False;


procedure TSpLxiFrame.Button1Click(Sender: TObject);
begin
    if Edit1.Text='' then Exit;
    with Data1.spdata do
    begin
      Close;
      SQL.Text:='select * from tpricetype where typename like ''%'+edit1.Text+'%''';
      Open;
    end;
end;

procedure TSpLxiFrame.Button2Click(Sender: TObject);
begin
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
    isadd:=True;
     Data1.ClientDataSet6.Close;
  Data1.ClientDataSet6.sql.Text := 'select max(typeid) as maxid from tpricetype';
  Data1.ClientDataSet6.Open;
  if not Data1.ClientDataSet6.IsEmpty then
   if Data1.ClientDataSet6.FieldByName('maxid').AsString<>'' then
    Edit2.Text := IntToStr(Data1.ClientDataSet6.FieldByName('maxid').AsInteger + 1)
  else  Edit2.Text := '101';
  if Length(Edit2.Text)=1 then Edit2.Text:='10'+Edit2.Text;

    initpanle;
end;

procedure TSpLxiFrame.Button4Click(Sender: TObject);
var
 i:Integer;
 state,issel: boolean;
 sid:string;
begin
   if Data1.spdata.IsEmpty then Exit;
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
              Data1.spdata.RecNo:=i;
              sid:=Data1.spdata.FieldByName('id').AsString;   //dbadvgrid4.Cells[12,i]
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text:='delete tpricetype where id='''+sid+'''';
              try
                Data1.sqlcmd1.ExecSQL;
              except
                on E: Exception do
                 mshowmessage('删除失败'+e.Message);
              end;
           end;
        end;
       end;
      Data1.spdata.Close;
      Data1.spdata.Open;
     end;

end;

procedure TSpLxiFrame.Button6Click(Sender: TObject);
begin
    if ComboBox1.Text='' then
    begin
      mShowMessage('请选择字典类型');
      Exit;
    end;
    if Edit3.Text='' then
    begin
      mShowMessage('请输入类型名称');
      Exit;
    end;
     if isadd then
  begin
    Data1.ClientDataSet6.Close;
    Data1.ClientDataSet6.sql.Text := 'select typename from tpricetype where typename=''' + edit3.Text + '''';
    Data1.ClientDataSet6.Open;
    if not Data1.ClientDataSet6.IsEmpty then
    begin
           //ShowMessage('已存在门店编号为：'+dbedit1.text+'的门店信息，请重新输入！');
      mShowMessage('已存在商品类型名称为：' + edit3.text + '的信息，请重新输入！');
      Edit3.SetFocus;
      exit;
    end;
    Data1.ClientDataSet6.Close;
      data1.sqlcmd1.Close;
      Data1.sqlcmd1.sql.Text := 'insert into tpricetype (typeid,typename,type,creid,credate) values (''' + edit2.Text + ''',''' + edit3.Text + ''','''+inttostr(ComboBox1.ItemIndex)+''','''+loginname+''','''+formatdatetime('yyyy-mm-dd hh:mm:ss',Now)+''')';
      try
        data1.sqlcmd1.ExecSQL;
        mShowMessage('添加成功！');
         Data1.spdata.Close;
        Data1.spdata.Open;
        Panel2.Visible:=False;
      except on E: Exception do
       mShowMessage('添加失败'+e.Message);
      end;


  end
  else
  begin
    data1.sqlcmd1.Close;
    Data1.sqlcmd1.sql.Text := 'update tpricetype set typename=''' + edit3.Text + ''' , typeid=''' + edit2.Text + ''',type='''+inttostr(ComboBox1.ItemIndex)+''' where id='''+edit5.Text+'''';
    try
      data1.sqlcmd1.Execute;
      mShowMessage('修改成功！');
       Panel2.Visible:=False;
      Data1.spdata.Close;
      Data1.spdata.Open;

    except on E: Exception do
     mShowMessage('修改失败'+e.Message);
    end;
  end;
end;

procedure TSpLxiFrame.Button7Click(Sender: TObject);
begin
   Panel2.Visible:=False;
end;

procedure TSpLxiFrame.DBAdvGrid2DblClick(Sender: TObject);
begin
    with Data1.spdata do
    begin
      Edit2.Text:=FieldByName('typeid').AsString;
      Edit3.Text:=FieldByName('typename').AsString;
      Edit4.Text:=FieldByName('memo').AsString;
      Edit5.Text:=FieldByName('id').AsString;
      ComboBox1.ItemIndex:=FieldByName('type').AsInteger;
    end;
    isadd:=false;
    initpanle;
end;

procedure TSpLxiFrame.DBAdvGrid2DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
  var
  i:Integer;
begin
//   if (ARow=0) and (ACol=1) then
//   begin
//     if DBAdvGrid2.Cells[1,0]='□' then
//     begin
//      for i := 1 to DBAdvGrid2.RowCount - 1 do
//      begin
//       DBAdvGrid2.SetCheckBoxState(1,i, True);
//      end;
//      DBAdvGrid2.Cells[1,0]:='';
//     end
//     else
//     begin
//        for i := 1 to DBAdvGrid2.RowCount - 1 do
//      begin
//       DBAdvGrid2.SetCheckBoxState(1,i, True);
//      end;
//      DBAdvGrid2.Cells[1,0]:='□';
//     end;
//   end;
end;

procedure TSpLxiFrame.initpanle;
var
 t,l:Integer;
begin
   t:=(Width-panel2.Width) div 2;
   l:=(Height-Panel2.Height) div 2;
   Panel2.Top:=l;
   Panel2.Left:=t;
   Panel2.Visible:=true;
  // ShowMessage(IntToStr(Width));
end;

procedure TSpLxiFrame.UniFrameCreate(Sender: TObject);
begin
    with data1.spdata do
    begin
       Close;
       sql.Text:='Select * from tpricetype  ORDER BY id';
       Open;
    end;
    Panel2.Visible:=False;
end;

procedure TSpLxiFrame.UniFrameDestroy(Sender: TObject);
begin
   Data1.spdata.Close;
end;

end.
