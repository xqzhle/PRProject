unit CustBlendUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, RzButton, AdvUtil;

type
  TCustBlendForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Panel1: TPanel;
    DBAdvGrid1: TDBAdvGrid;
    Panel2: TPanel;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustBlendForm: TCustBlendForm;

implementation
uses DbUnit,SelKhUnit,MainUnit;
{$R *.dfm}

procedure TCustBlendForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.CustBlend.Close;
  Edit3.Clear;
  Edit4.Clear;
end;

procedure TCustBlendForm.RzToolButton3Click(Sender: TObject);
var
  sqlstr :string;
begin

  //勾兑后写入 tbCustomer_money_list 明显表 并把tbCustomer_money 余额更改
  if (IDYES = Application.MessageBox('是否勾兑选择信息？', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
  begin
    sqlstr := '客户编号：'+edit1.Text+'  勾兑金额:'+edit4.Text;
    Data1.WriteLog('勾兑',sqlstr,'user'); //写日志
  end;

end;

procedure TCustBlendForm.RzToolButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TCustBlendForm.SpeedButton1Click(Sender: TObject);
begin
  SelKhForm.seltype := 3;
  SelKhForm.ShowModal;
end;

end.
