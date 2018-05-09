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

  //���Һ�д�� tbCustomer_money_list ���Ա� ����tbCustomer_money ������
  if (IDYES = Application.MessageBox('�Ƿ񹴶�ѡ����Ϣ��', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
  begin
    sqlstr := '�ͻ���ţ�'+edit1.Text+'  ���ҽ��:'+edit4.Text;
    Data1.WriteLog('����',sqlstr,'user'); //д��־
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
