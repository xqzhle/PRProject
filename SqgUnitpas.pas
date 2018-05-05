unit SqgUnitpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, ExtCtrls, RzButton, StdCtrls, ImgList;

type
  TForm94 = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
     procedure getjdwd(str,address:string);
     procedure getsqgadress;
    { Public declarations }
  end;

var
  Form94: TForm94;

implementation

uses DbUnit,uDBJson;
{$R *.dfm}
var
  sstr :string;
  sbool :Boolean=True;
procedure TForm94.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then   RzToolButton1.Click;
end;

procedure TForm94.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WebBrowser1.OleObject.document.parentWindow.execScript('clearAll()','JavaScript'); //清空所有覆盖物
end;

procedure TForm94.FormCreate(Sender: TObject);
begin
  ComboBox1.Clear;
  ComboBox1.Items.Add('');
  Data1.sqlcmd1.Close;
  Data1.sqlcmd1.SQL.Text:='select  empname from tAchEmployee order by empname';
  Data1.sqlcmd1.Open;
  if not Data1.sqlcmd1.IsEmpty then
  begin
    while not Data1.sqlcmd1.Eof do
    begin
      ComboBox1.Items.Add(Data1.sqlcmd1.FieldByName('empname').AsString);
      Data1.sqlcmd1.Next;
    end;
  end;
  data1.sqlcmd1.Close;
  ComboBox1.ItemIndex:=-1;
  webbrowser1.Navigate(ExtractFilePath(application.ExeName)+'Html/sqgadd.html');
end;


//延迟函数：方法一
procedure delay(msecs:integer);
var
  Tick: DWord;
  Event: THandle;
begin
  Event := CreateEvent(nil, False, False, nil);
  try
    Tick := GetTickCount + DWord(msecs);
    while (msecs > 0) and (MsgWaitForMultipleObjects(1, Event, False, msecs, QS_ALLINPUT) <> WAIT_TIMEOUT) do
    begin
      Application.ProcessMessages;
      msecs := Tick - GetTickcount;
    end;
  finally
    CloseHandle(Event);
  end;
end;

procedure TForm94.getjdwd(str,address: string);
var
  jd,wd:string;
begin
  if str ='' then Exit;
  if sbool then delay(700);
  sbool := False;
  wd := Copy(str,0,Pos(',',str)-1);
  jd :=  Copy(str,Pos(',',str)+1,Length(str));
  sstr := '[{"jd":"'+jd+'","wd":"'+wd+'","namec":"'+address+'"}]';
  WebBrowser1.OleObject.document.parentWindow.execScript('doLocate('''+sstr+''')','JavaScript'); //返回覆盖物个数   '
  WebBrowser1.SetFocus ;
end;

procedure TForm94.getsqgadress;
begin
  if sbool then delay(700);
  sbool := False;
  WebBrowser1.SetFocus ;
  with Data1.sds1 do
  begin
    close;
    sql.Text :='select jd,wd,namec+'' ''+CONVERT(VARCHAR(24), cdate,120) as namec from tbsqg_add where id in (select max(id) as id from tbsqg_add where jd<>'''' and wd<>'''' group by namec)';
    open;
    if not IsEmpty then
    begin
        WebBrowser1.OleObject.document.parentWindow.execScript('doLocate('''+JSonFromDataSet(data1.sds1)+''')','JavaScript'); //返回覆盖物个数
    end;
  end;
end;

procedure TForm94.RzToolButton1Click(Sender: TObject);
var
  dstr:string;
begin
  if ComboBox1.Text ='' then Exit;
  WebBrowser1.SetFocus ;
  WebBrowser1.OleObject.document.parentWindow.execScript('clearAll()','JavaScript'); //清空所有覆盖物
  dstr :=' where namec='''+ComboBox1.Text+''' ' ;
  with Data1.sds1 do
  begin
    close;
    if dstr='' then sql.Text :='select cdate,jd,wd,namec from tbsqg_add where id in (select max(id) as id from tbsqg_add group by namec)'
    else
    sql.Text :='select max(cdate) as cdate,jd,wd,namec from tbsqg_add '+dstr+' group by namec,jd,wd';
    open;
    if not IsEmpty then
    begin
      if (FieldByName('jd').AsString<>'') and (FieldByName('jd').AsString<>'') then
      begin
        dstr := FieldByName('namec').AsString+' '+FieldByName('cdate').AsString;
        dstr := '[{"jd":"'+FieldByName('jd').AsString+'","wd":"'+FieldByName('wd').AsString+'","namec":"'+dstr+'"}]';
        WebBrowser1.OleObject.document.parentWindow.execScript('doLocate('''+dstr+''')','JavaScript'); //返回覆盖物个数
      end
      else  ShowMessage('位置信息为空');
    end
    else ShowMessage('没找到该送气工位置信息');
  end;

end;

procedure TForm94.RzToolButton2Click(Sender: TObject);
begin
  WebBrowser1.OleObject.document.parentWindow.execScript('clearAll()','JavaScript'); //清空所有覆盖物
  getsqgadress;
end;

end.
