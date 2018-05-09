unit EditCustMoneyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RzButton, ComCtrls;

type
  TEditCustMoneyForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure RzToolButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditCustMoneyForm: TEditCustMoneyForm;

implementation
uses DbUnit,SelKhUnit,MainUnit;
{$R *.dfm}

procedure TEditCustMoneyForm.FormShow(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Now;
  Edit3.Text:='0';
  Edit4.Clear;
  Edit5.Clear;
end;

procedure TEditCustMoneyForm.RzToolButton3Click(Sender: TObject);
var
   sqlstr:string;
begin
  if (Edit1.Text='') or (Edit2.Text='') then
  begin
    ShowMessage('请选择客户');
    Exit;
  end;
  if (Edit3.Text='') or (Edit3.Text='0') then
  begin
    ShowMessage('请输入充值金额');
    Exit;
  end;
  with Data1 do
  begin
    work.Close;
    work.SQL.Text :='SELECT id FROM tbCustomer_money where barcode='''+Edit1.Text+''' ';
    work.Open;
    if work.IsEmpty then
    begin
       sqlstr :='insert into tbCustomer_money (barcode,namec,money,cdate,cmoney) values ('''+Edit1.Text+''','''+Edit2.Text+''','''+Edit3.Text+''','''+DateTimeToStr(DateTimePicker1.DateTime)+''','''+Edit3.Text+''')';
    end
    else
    begin
      sqlstr :='update tbCustomer_money set money=money+'''+Edit3.Text+''',cmoney='''+Edit3.Text+''',cdate='''+DateTimeToStr(DateTimePicker1.DateTime)+''' where barcode='''+Edit1.Text+''' ';
    end;
  end;
  try
      Data1.UniTransaction1.Connections[0].StartTransaction; //开始事务
      Data1.work.Close;
      Data1.work.SQL.Text :=sqlstr;
      Data1.work.ExecSQL;
      sqlstr :='insert into tbCustomer_money_list (barcode,namec,type,money,cuser,cdate,memo) values ('''+Edit1.Text+''','''+Edit2.Text+''',''1'','''+Edit3.Text+''','''+Edit4.Text+''','''+DateTimeToStr(DateTimePicker1.DateTime)+''','''+Edit5.Text+''')';
      Data1.work.Close;
      Data1.work.SQL.Text :=sqlstr;
      Data1.work.ExecSQL;
      Data1.work.Close;
      Data1.UniTransaction1.Connections[0].Commit;  //执行事务
      sqlstr := '客户编号：'+edit1.Text+'  充值金额:'+edit3.Text;
      Data1.WriteLog('客户充值',sqlstr,UsName); //写日志
      if Data1.CustMoney.IsQuery then
      begin
        Data1.CustMoney.Close;
        Data1.CustMoney.Open;
      end;
      if Data1.CustMoney_list.IsQuery then
      begin
        Data1.CustMoney_list.Open;
      end;
      Self.Close;
  except
     on E:Exception do
     begin
        Data1.UniTransaction1.Connections[0].Rollback;   //回滚事务
        ShowMessage('失败:'+e.Message);
     end;
  end;

end;

procedure TEditCustMoneyForm.RzToolButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TEditCustMoneyForm.SpeedButton1Click(Sender: TObject);
begin
  SelKhForm.seltype := 4;
  SelKhForm.ShowModal;
end;

end.
