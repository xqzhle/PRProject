unit PzUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, RzButton, Menus, RzLstBox, Grids,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid,superobject, AdvUtil;

type
  TPzForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    Button4: TButton;
    RzToolButton1: TRzToolButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    ListBox3: TListBox;
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DBAdvGrid1: TDBAdvGrid;
    RzToolButton6: TRzToolButton;
    RzToolButton7: TRzToolButton;
    RzToolButton8: TRzToolButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    RzToolButton9: TRzToolButton;
    Panel4: TPanel;
    TabSheet3: TTabSheet;
    lbl1: TLabel;
    Edit4: TEdit;
    TabSheet4: TTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit10: TEdit;
    Edit1: TEdit;
    Edit5: TMemo;
    Label10: TLabel;
    Edit11: TEdit;
    Label11: TLabel;
    Edit12: TEdit;
    Label12: TLabel;
    Memo1: TMemo;
    procedure RzToolButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ListBox1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure DBAdvGrid1Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure RzToolButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PzForm: TPzForm;

implementation
uses DbUnit;
{$R *.dfm}


function botostr(d:Boolean):string;
begin
  if d then Result:='1'
  else Result :='0';
end;

procedure TPzForm.Button4Click(Sender: TObject);
begin
    ListBox1.Items.Add('≤Àµ•“ª');
    ListBox1.Items.Add('≤Àµ•“ª');
    ListBox1.Items.Add('≤Àµ•“ª');
    ListBox1.Items.Add('≤Àµ•“ª');
    ListBox1.Items.Add('≤Àµ•“ª');
end;

procedure TPzForm.DBAdvGrid1Click(Sender: TObject);
begin
  if Data1.banner.IsEmpty then  Exit;
  lbl1.Caption := '±‡º≠¬÷≤•Õº';
  edit1.Text := Data1.banner.FieldByName('stype').AsString;
  edit2.Text := Data1.banner.FieldByName('namec').AsString;
  edit3.Text := Data1.banner.FieldByName('imgurl').AsString;
  Edit4.Text := Data1.banner.FieldByName('id').AsString;
  RzToolButton6.Enabled := True;
  RzToolButton7.Enabled := True;
end;

procedure TPzForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in['0'..'9',#8]) then  key:=#0;
end;

procedure TPzForm.FormShow(Sender: TObject);
begin
    Data1.ClientDataSet1.Close;
    Data1.ClientDataSet1.sql.Text:='select * from info';
    Data1.ClientDataSet1.Open;
    if not Data1.ClientDataSet1.IsEmpty then
    begin
      CheckBox1.Checked :=Data1.ClientDataSet1.FieldByName('delkh').AsBoolean;
      CheckBox2.Checked :=Data1.ClientDataSet1.FieldByName('xcqzout').AsBoolean;
      CheckBox3.Checked :=Data1.ClientDataSet1.FieldByName('qzczsm').AsBoolean;
      CheckBox4.Checked :=Data1.ClientDataSet1.FieldByName('zpsm').AsBoolean;
      CheckBox5.Checked :=Data1.ClientDataSet1.FieldByName('kpsm').AsBoolean;
      CheckBox6.Checked :=Data1.ClientDataSet1.FieldByName('sfbool').AsBoolean;
      CheckBox7.Checked :=Data1.ClientDataSet1.FieldByName('ajbool').AsBoolean;
      CheckBox8.Checked :=Data1.ClientDataSet1.FieldByName('sqfbool').AsBoolean;
      CheckBox9.Checked :=Data1.ClientDataSet1.FieldByName('wxbool').AsBoolean;
    end;
    with Data1.ClientDataSet1 do
    begin
      Close;
      SQL.Text := 'select * from tb_wxinfo where id=1';
      Open;
      if not IsEmpty then
      begin
        Edit5.Text := FieldByName('msg').AsString;
        Edit6.Text := FieldByName('url').AsString;
        Edit7.Text := FieldByName('maxmoney').AsString;
        Edit8.Text := FieldByName('firstmoney').AsString;
        Edit9.Text := FieldByName('monthmoney').AsString;
        Edit10.Text := FieldByName('tmoney').AsString;
        Edit11.Text := FieldByName('gzmoney').AsString;
        Edit12.Text := FieldByName('oldmoney').AsString;
        Memo1.Text := FieldByName('newmsg').AsString;
      end
      else
      begin
        Close;
        SQL.Text := 'insert into tb_wxinfo (id) values (''1'') ';
        ExecSQL;
        Edit5.Text := '';
        Edit6.Text := '';
        Edit7.Text := '0';
        Edit8.Text := '0';
        Edit9.Text := '0';
        Edit10.Text := '0';
        Edit11.Text := '0';
        Edit12.Text := '0';
        Memo1.Clear;
      end;
    end;
    Data1.ClientDataSet1.Close;
//    ListBox1.Perform(LB_SETITEMHEIGHT, 0, 20);
    lbl1.Caption := '';
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    RzToolButton6.Enabled := False;
    RzToolButton7.Enabled := False;
end;

procedure TPzForm.ListBox1Click(Sender: TObject);
begin
  ShowMessage(ListBox1.Items[ListBox1.ItemIndex]);
end;

procedure TPzForm.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
    pCanvas:TCanvas;
    Value:AnsiString;
begin
    Value:=(TListBox(Control)).Items.Strings[index];
    pCanvas:=TListBox(Control).Canvas;
    pCanvas.FillRect(Rect);
    DrawText(pCanvas.Handle,PChar(Value),SizeOf(Value),Rect,DT_CENTER);
end;

procedure TPzForm.RzToolButton1Click(Sender: TObject);
begin
  if ListBox1.Visible=True then   ListBox1.Visible :=False
  else ListBox1.Visible :=True;
end;

procedure TPzForm.RzToolButton2Click(Sender: TObject);
begin
  if TabSheet4.Showing then
  begin
    try
      Data1.ClientDataSet1.Close;
      Data1.ClientDataSet1.sql.Text:='update tb_wxinfo set msg='''+Edit5.Text+''',url='''+Edit6.Text+''',maxmoney='''+Edit7.Text+''',newmsg='''+memo1.Text+''','+
      ' firstmoney='''+Edit8.Text+''',monthmoney='''+Edit9.Text+''',tmoney='''+Edit10.Text+''',gzmoney='''+Edit11.Text+''',oldmoney='''+Edit12.Text+''' where id=1 ';
      Data1.ClientDataSet1.ExecSQL;
      Data1.ClientDataSet1.Close;
      wxurl := Edit6.Text;
      ShowMessage('Œ¢–≈…Ë÷√±£¥Ê≥…π¶£°');
    except
      ShowMessage('Œ¢–≈…Ë÷√±£¥Ê ß∞‹£°');
    end;
  end
  else
  begin
   try
     Data1.ClientDataSet1.Close;
     Data1.ClientDataSet1.sql.Text:='update info set delkh='''+botostr(CheckBox1.Checked)+''',xcqzout='''+botostr(CheckBox2.Checked)+''',qzczsm='''+botostr(CheckBox3.Checked)+''','+
      ' zpsm='''+botostr(CheckBox4.Checked)+''',kpsm='''+botostr(CheckBox5.Checked)+''',sfbool='''+botostr(CheckBox6.Checked)+''',ajbool='''+botostr(CheckBox7.Checked)+''',sqfbool='''+botostr(CheckBox8.Checked)+''',wxbool='''+botostr(CheckBox9.Checked)+''' where id=1 ';
     Data1.ClientDataSet1.ExecSQL;
     Data1.ClientDataSet1.Close;
     Self.Close;
   except
     ShowMessage('±£¥Ê ß∞‹£°');
   end;
  end;
end;

procedure TPzForm.RzToolButton3Click(Sender: TObject);
begin
 self.Close;
end;

procedure TPzForm.RzToolButton6Click(Sender: TObject);
var
  sqlstr :string;
begin
  if lbl1.Caption =''  then Exit;
  if Edit1.Text='' then
  begin
    ShowMessage('«Î ‰»Î≈≈–Ú∫≈');
    Exit;
  end;
  if Edit2.Text='' then
  begin
    ShowMessage('«Î ‰»Î√˚≥∆');
    Exit;
  end;
  if Edit3.Text='' then
  begin
    ShowMessage('«Î…œ¥´Õº∆¨');
    Exit;
  end;
  if lbl1.Caption ='–¬‘ˆ¬÷≤•Õº' then
    sqlstr := 'insert into tb_wxbanner (stype,namec,imgurl) values ('''+Edit1.Text+''','''+Edit2.Text+''','''+Edit3.Text+''')';
  if lbl1.Caption ='±‡º≠¬÷≤•Õº' then
    sqlstr := 'update tb_wxbanner set stype='''+Edit1.Text+''',namec='''+Edit2.Text+''',imgurl='''+Edit3.Text+''' where id='''+Edit4.Text+''' ';
  if sqlstr<>'' then
  begin
    try
      Data1.ClientDataSet1.Close;
      Data1.ClientDataSet1.sql.Text := sqlstr;
      Data1.ClientDataSet1.ExecSQL;
      Data1.ClientDataSet1.Close;
      ShowMessage('¬÷≤•Õº±£¥Ê≥…π¶£°');
      Data1.banner.Close;
      Data1.banner.Open;
      lbl1.Caption := '';
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      RzToolButton6.Enabled := False;
      RzToolButton7.Enabled := False;
    except
      ShowMessage('¬÷≤•Õº±£¥Ê ß∞‹£°');
    end;
  end;

end;

procedure TPzForm.RzToolButton7Click(Sender: TObject);
begin
  if lbl1.Caption ='±‡º≠¬÷≤•Õº' then
  begin
    try
      Data1.ClientDataSet1.Close;
      Data1.ClientDataSet1.sql.Text := 'delete from tb_wxbanner where id='''+Edit4.Text+''' ';
      Data1.ClientDataSet1.ExecSQL;
      Data1.ClientDataSet1.Close;
      ShowMessage('¬÷≤•Õº…æ≥˝≥…π¶£°');
      Data1.banner.Close;
      Data1.banner.Open;
      lbl1.Caption := '';
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      RzToolButton6.Enabled := False;
      RzToolButton7.Enabled := False;
    except
      ShowMessage('¬÷≤•Õº…æ≥˝ ß∞‹£°');
    end;
  end;
end;

procedure TPzForm.RzToolButton8Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  lbl1.Caption := '–¬‘ˆ¬÷≤•Õº';
  RzToolButton6.Enabled := True;
  RzToolButton7.Enabled := False;
end;

procedure TPzForm.RzToolButton9Click(Sender: TObject);
var
  res :string;
  jo: ISuperObject;
begin
  res :=Data1.UpImage;
  if res='100' then  exit;
  if res<>'' then
  begin
    if res ='400' then
    begin
      Application.MessageBox('«Î–¬…Ë÷√Œ¢–≈π´÷⁄∫≈”Ú√˚!','ERROR',MB_OK+MB_ICONSTOP);
    end
    else
    begin
      jo:=SO(res);
      if jo['code'].AsString='200' then
      begin
        Edit3.Text := jo['msg'].AsString;
        Application.MessageBox('Õº∆¨…œ¥´≥…π¶!','Ã· æ',MB_OK+MB_ICONSTOP);
      end
      else   Application.MessageBox(pwidechar(jo['msg'].AsString),'ERROR',MB_OK+MB_ICONSTOP);
    end;
  end
  else  Application.MessageBox('Õº∆¨…œ¥´ ß∞‹!','ERROR',MB_OK+MB_ICONSTOP);
end;

procedure TPzForm.TabSheet1Show(Sender: TObject);
begin
  Panel1.Visible := True;
  Panel4.Visible := False;
end;

procedure TPzForm.TabSheet3Show(Sender: TObject);
begin
  Panel4.Visible := True;
  Panel1.Visible := False;
  with Data1.banner do
  begin
    Close;
    SQL.Text := 'select * from tb_wxbanner';
    Open;
  end;
end;

end.
