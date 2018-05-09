unit EditLetterUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RzButton;

type
  TEditLetterForm = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    SpeedButton1: TSpeedButton;
    Edit9: TEdit;
    procedure FormShow(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditLetterForm: TEditLetterForm;

implementation
uses DbUnit,SelKhUnit,MainUnit;
{$R *.dfm}

procedure TEditLetterForm.FormShow(Sender: TObject);
var
 i:Integer;
begin
  if Text='客户信用新增' then
  begin
    for I := 1 to 9 do
    begin
      TEdit(FindComponent('Edit' + IntToStr(I))).Text := '';
    end;
  end;
end;

procedure TEditLetterForm.RzToolButton3Click(Sender: TObject);
var
  sqlstr:string;
  date1:TDateTime;
begin
  if (Text<>'客户信用新增') and (Text<>'客户信用编辑') then  Exit;
  if (Edit1.Text='') or (Edit2.Text='') then
  begin
    ShowMessage('请选择客户');
    Exit;
  end;
  if Edit7.Text<>'' then
  begin
    if not TryStrToDate(Edit7.Text,date1) then
    begin
      ShowMessage('请输入有效日期');
      Exit;
    end;
  end;
  if Text='客户信用新增' then
  begin
    sqlstr := 'select id from tbCustomer_letter where barcode='''+Edit1.Text+''' ';
    Data1.work.Close;
    Data1.work.SQL.Text :=sqlstr;
    Data1.work.Open;
    if not Data1.work.IsEmpty then
    begin
      ShowMessage('已存在该客户的信息设置');
      Exit;
    end;
    sqlstr :='insert into tbCustomer_letter (barcode,namec,lettermoney,letterday,temmoney,temday,temdate,memo,cuser,cdate) values '+
    ' ('''+Edit1.Text+''','''+Edit2.Text+''','''+Edit3.Text+''','''+Edit4.Text+''','''+Edit5.Text+''','''+Edit6.Text+''','''+Edit7.Text+''','''+Edit8.Text+''',''zl'',GETDATE())';
  end
  else
  begin
    sqlstr := 'update tbCustomer_letter set barcode='''+Edit1.Text+''',namec='''+Edit2.Text+''',lettermoney='''+Edit3.Text+''',letterday='''+Edit4.Text+''', '+
    ' temmoney='''+Edit5.Text+''',temday='''+Edit6.Text+''',temdate='''+Edit7.Text+''',memo='''+Edit8.Text+''',cuser=''zl'',cdate=GETDATE() where id='''+edit9.Text+''' ';
  end;
  try
    Data1.work.Close;
    Data1.work.SQL.Text :=sqlstr;
    Data1.work.ExecSQL;
    Data1.work.Close;
    sqlstr := '客户编号：'+edit1.Text+'  信用额度:'+edit3.Text+'  信用天数:'+edit4.Text;
    Data1.WriteLog('新增/编辑客户信用',sqlstr,UsName); //写日志
    Data1.Letter.Close;
    Data1.Letter.Open;
    Self.Close;
  except
    on E:Exception do
    begin
      ShowMessage('失败:'+e.Message);
    end;
  end;
end;

procedure TEditLetterForm.RzToolButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TEditLetterForm.SpeedButton1Click(Sender: TObject);
begin
  SelKhForm.seltype := 5;
  SelKhForm.ShowModal;
end;

end.
