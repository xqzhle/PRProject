unit BottleWorkUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ExtCtrls, DB, MemDS, DBAccess, Uni, ImgList;

type
  TBottleWorkFrame = class(TUniFrame)
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
    CheckBox1: TCheckBox;
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
 BottleWorkFrame:TBottleWorkFrame;
implementation

uses
  DbUnit, MainUnit,zcomm, SelKhUnit;

{$R *.dfm}
var
 isadd:Boolean;
 typename:string;

procedure TBottleWorkFrame.Button1Click(Sender: TObject);
var
 wherestr:string;
begin
    if (Edit1.Text='')  then
   begin
     exit;
   end;
   wherestr:='where (1=1)';
   if Edit1.Text<>'' then
   wherestr:=wherestr+' and (LNameC like ''%'+edit1.text+'%'')';

    with UniQuery1 do
    begin
      Close;
      SQL.Text:='select * from tbWorks_Info '+wherestr;
      Open;
    end;
end;

procedure TBottleWorkFrame.Button2Click(Sender: TObject);
begin

   Edit2.Clear;
   Edit3.Clear;
   Edit4.Clear;
   Edit5.Clear;

   Data1.ClientDataSet6.Close;
   Data1.ClientDataSet6.sql.Text := 'Select Max(Factory_ID) as MaxID from tbWorks_Info Where Factory_ID like'+''''+'DB1%'+'''';
   Data1.ClientDataSet6.Open;
   if not Data1.ClientDataSet6.IsEmpty then
   begin
    if Data1.ClientDataSet6.FieldByName('maxid').AsString<>'' then
     begin
        Edit2.Text := 'DB'+trim(inttostr(strtoint(Copy(Data1.ClientDataSet6.FieldByName('maxid').AsString, 3, 4))+1));
        // if length(trim(edit2.Text))=1 then edit2.Text:='BDZ0'+trim(edit2.Text) else  edit2.Text:='BDZ'+trim(edit2.Text);
     end
    else  Edit2.Text := 'DB1000';
   end;
   CheckBox1.Checked:=False;
   isadd:=True;
   initpanel;
end;

procedure TBottleWorkFrame.Button4Click(Sender: TObject);
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
              Data1.sqlcmd1.SQL.Text:='delete tbWorks_Info where id='''+sid+'''';
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

procedure TBottleWorkFrame.Button6Click(Sender: TObject);
var
 sqlstr:string;
 i:Integer;
begin
   if Edit3.Text='' then
   begin
     mshowmessage('请输入厂家简称');
     Exit;
   end;
   if Edit4.Text='' then
   begin
     mshowmessage('请输入厂家全称');
     Exit;
   end;
   if isadd then
    sqlstr:='INSERT INTO tbWorks_Info (Factory_ID,namec,createuser,creATEdate,Remark,lnamec,Instate) VALUES('''+edit2.Text+''','''+edit3.Text+''', '+
      ''''+loginname+''','''+formatdatetime('yyyy-mm-dd hh:mm:ss',Now)+''','''+Edit5.Text+''','''+Edit4.Text+''','''+botostr(CheckBox1.Checked)+''')'
      else
       sqlstr:='update tbWorks_Info set namec='''+edit3.Text+''',Factory_id='''+edit2.Text+''','+
      'Remark='''+Edit5.Text+''',lnamec='''+Edit4.Text+''',Instate='''+botostr(CheckBox1.Checked)+''' where id='''+edit7.Text+'''';
      with Data1 do
      begin
        sqlcmd1.close;               //
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

procedure TBottleWorkFrame.Button7Click(Sender: TObject);
begin
    Panel2.Visible:=False;
end;

procedure TBottleWorkFrame.DBAdvGrid2DblClick(Sender: TObject);
begin
   if UniQuery1.IsEmpty then Exit;
   isadd:=False;
   with UniQuery1 do
   begin
     Edit2.Text:=FieldByName('Factory_ID').AsString;
     Edit3.Text:=FieldByName('namec').AsString;
     Edit4.Text:=FieldByName('LNameC').AsString;
     Edit5.Text:=FieldByName('Remark').AsString;
     Edit7.Text:=FieldByName('id').AsString;
     if FieldByName('Instate').AsInteger=1 then
     CheckBox1.Checked:=true
     else CheckBox1.Checked:=False;
   end;
   initpanel;
end;

procedure TBottleWorkFrame.initpanel;
var
 t,l:Integer;
begin
   l:=(Width-panel2.Width) div 2;
   t:=(Height-Panel2.Height) div 2;
   Panel2.Top:=t;
   Panel2.Left:=l;
   Panel2.Visible:=true;
end;

procedure TBottleWorkFrame.UniFrameCreate(Sender: TObject);
var
 sqlstr:string;
begin
    Panel2.Visible:=False;
    sqlstr:='select *,case when Instate=''0'' then ''停用'' else ''在用'' end as stype from tbWorks_Info order by id';
    UniQuery1.Close;
    UniQuery1.SQL.Text:= sqlstr;
    UniQuery1.Open;
    BottleWorkFrame:=Self;
  //  Label9.Caption:='总共：'+IntToStr(Data1.sqlcmd7.RecordCount)+' 条记录';

end;

procedure TBottleWorkFrame.UniFrameDestroy(Sender: TObject);
begin
    UniQuery1.Close;
end;

end.
