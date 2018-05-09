unit LogUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzButton, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ComCtrls, AdvUtil;

type
  TLogForm = class(TForm)
    Panel1: TPanel;
    RzToolButton1: TRzToolButton;
    Label12: TLabel;
    Edit1: TEdit;
    DBAdvGrid1: TDBAdvGrid;
    RzToolButton4: TRzToolButton;
    DateTimePicker2: TDateTimePicker;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogForm: TLogForm;

implementation
uses DbUnit;
{$R *.dfm}

procedure TLogForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False,20); //根据内容调节列宽
end;

procedure TLogForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#13 then  RzToolButton1.Click;
end;

procedure TLogForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.UniLOG.Close;
end;

procedure TLogForm.FormShow(Sender: TObject);
begin
  Edit1.Clear;
  ComboBox1.Text := '';
  DateTimePicker1.Date := Now;
  DateTimePicker2.Date := Now;
end;

procedure TLogForm.RzToolButton1Click(Sender: TObject);
var
  sqlstr:string;
begin
  sqlstr :=' where cdate>'''+datetimetostr(DateTimePicker1.DateTime)+''' and cdate<='''+datetimetostr(DateTimePicker2.DateTime)+''' ';
  if Edit1.Text<>'' then sqlstr:=sqlstr+' and cuser='''+Edit1.text+''' ';
  if ComboBox1.Text<>'' then sqlstr:=sqlstr+' and stype='''+ComboBox1.text+''' ';
  with Data1.UniLOG do
  begin
    Close;
    SQL.Text := 'SELECT id ID,stype 操作类型,cuser 操作人,memo 操作内容,cdate 操作时间 FROM tblog'+sqlstr;
    Open;
  end;
end;

procedure TLogForm.RzToolButton4Click(Sender: TObject);
begin
  Close;
end;

end.
