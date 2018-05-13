unit SqgInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ComCtrls, ImgList, RzButton, ExtCtrls;

type
  TSqgInfoForm = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SqgInfoForm: TSqgInfoForm;

implementation
uses DbUnit,uDBJson;
{$R *.dfm}


procedure TSqgInfoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WebBrowser1.OleObject.document.parentWindow.execScript('clearAllStop()','JavaScript'); //清空所有覆盖物
  Label4.Caption := '';
end;

procedure TSqgInfoForm.FormCreate(Sender: TObject);
begin
  webbrowser1.Navigate(ExtractFilePath(application.ExeName)+'Html/info.html');
  DateTimePicker1.Date := Now;
  DateTimePicker3.Date := Now;
  ComboBox1.Clear;

end;

procedure TSqgInfoForm.RzToolButton1Click(Sender: TObject);
var
  date1,date2,str:string;
begin
  if ComboBox1.Text = '' then
  begin
    ShowMessage('请选择送气工');
    Exit;
  end;
  date1 := DateToStr(DateTimePicker1.Date)+' '+Timetostr(DateTimePicker2.Time);
  date2 := DateToStr(DateTimePicker3.Date)+' '+Timetostr(DateTimePicker4.Time);
  WebBrowser1.SetFocus ;
  WebBrowser1.OleObject.document.parentWindow.execScript('clearAll()','JavaScript'); //清空所有覆盖物
  with Data1.sds1 do
  begin
    close;                                                //,namec
    SQL.Text:='select CONVERT(VARCHAR(20), cdate,120) as cdate,jd,wd from tbsqg_add where namec='''+combobox1.Text+''' and cdate>='''+date1+''' and cdate<='''+date2+''' order by cdate ';
    Open;
    if (not IsEmpty) and (RecordCount>1) then
    begin
       str := '共:'+IntToStr(RecordCount)+'条定位数据,';
       WebBrowser1.OleObject.document.parentWindow.execScript('doLocate('''+JSonFromDataSet(data1.sds1)+''')','JavaScript'); //返回覆盖物个数
       First;
       str := str+'  起点时间：'+FieldByName('cdate').AsString;
       Last;
       str := str+'  终点时间：'+FieldByName('cdate').AsString;
       Label4.Caption := str;
    end
    else ShowMessage('没有定位数据,不能生成轨迹');
    close;
  end;
end;

end.
