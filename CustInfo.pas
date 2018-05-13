unit CustInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ImgList, ComCtrls, RzButton, ExtCtrls;

type
  TCustInfoForm = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustInfoForm: TCustInfoForm;

implementation
uses DbUnit,uDBJson;
{$R *.dfm}

procedure TCustInfoForm.ComboBox1Change(Sender: TObject);
begin
  ComboBox2.ItemIndex := ComboBox1.ItemIndex;
end;

procedure TCustInfoForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#13 then RzToolButton1.Click;
  if not (Key in['0'..'9',#8]) then  key:=#0;
end;

procedure TCustInfoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WebBrowser1.OleObject.document.parentWindow.execScript('clearAll()','JavaScript'); //清空所有覆盖物
  Label4.Caption := '';
end;

procedure TCustInfoForm.FormCreate(Sender: TObject);
begin
   webbrowser1.Navigate(ExtractFilePath(application.ExeName)+'Html/custinfo.html');
   Label4.Caption :='';
   ComboBox1.Clear;
   ComboBox2.Clear;
end;

procedure TCustInfoForm.RzToolButton1Click(Sender: TObject);
var
 str,wherestr:string;
begin
  if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') then  wherestr := ' and a.psid='''+combobox2.Text+''' ';
  if Edit1.Text<>'' then   wherestr := wherestr +' and datediff( dd, c.optdate, GETDATE())>='''+Edit1.Text+''' ';
  WebBrowser1.SetFocus ;
  WebBrowser1.OleObject.document.parentWindow.execScript('clearAll()','JavaScript'); //清空所有覆盖物
  with Data1.sds1 do
  begin
    close;
    SQL.Text:='SELECT REPLACE(REPLACE(REPLACE(a.Namec,CHAR(9),''''),CHAR(10),''''),CHAR(13),'''') as namec,wd=cast(left(Fdw,charindex('','',Fdw+'','')-1) as nvarchar(100)),jd = CAST(STUFF(Fdw, 1, CHARINDEX('','', Fdw), '''') AS NVARCHAR(100)),c.optdate as optdate, '+
   ' REPLACE(REPLACE(REPLACE(a.Address,CHAR(9),''''),CHAR(10),''''),CHAR(13),'''') as address,b.gptm as gptm FROM tbCustomer_Info a left join '+
   ' (select khbh,(select gptm+'' '' from tb_khgp where khbh=t.khbh for xml path('''')) as gptm from tb_khgp t group by khbh ) b on a.BarCode=b.khbh '+
   ' left join (select CONVERT(VARCHAR(24), MAX(optdate),120) as optdate,corpid from tbisent group by corpid ) c on a.BarCode=c.corpid where a.Fdw<>'''' '+wherestr;
    Open;
    if not IsEmpty then
    begin
      str :=  JSonFromDataSet(data1.sds1);
      Label4.Caption := '共：'+inttostr(RecordCount)+'条数据';
      WebBrowser1.OleObject.document.parentWindow.execScript('doLocate('''+str+''')','JavaScript'); //返回覆盖物个数

    end
    else Label4.Caption := '共：0条数据';;
    close;
  end;
end;

end.
