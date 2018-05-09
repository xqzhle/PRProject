unit LetterUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzButton, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, AdvUtil;

type
  TLetterForm = class(TForm)
    Panel1: TPanel;
    RzToolButton1: TRzToolButton;
    Label12: TLabel;
    Edit1: TEdit;
    DBAdvGrid1: TDBAdvGrid;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton4: TRzToolButton;
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LetterForm: TLetterForm;

implementation
uses DbUnit,EditLetterUnit;
{$R *.dfm}

procedure TLetterForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False,20); //�������ݵ����п�
end;

procedure TLetterForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#13 then  RzToolButton1.Click;
end;

procedure TLetterForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.Letter.Close;
end;

procedure TLetterForm.FormShow(Sender: TObject);
begin
  Edit1.Clear;
  with Data1.Letter do
  begin
    Close;
    SQL.Text := 'SELECT id ID,barcode �ͻ����,namec �ͻ�����,lettermoney ���ö��,letterday ��������,temmoney ��ʱ���ö��, '+
    ' temday ��ʱ��������,temdate ��ʱ������Ч����,memo ��ע,cuser ������,cdate �������� FROM tbCustomer_letter';
    Open;
  end;
end;

procedure TLetterForm.RzToolButton1Click(Sender: TObject);
var
  sqlstr:string;
begin
  if Edit1.Text='' then sqlstr:=''
  else sqlstr := ' where barcode like ''%'+Edit1.text+'%'' or namec like ''%'+Edit1.text+'%'' ';
  with Data1.Letter do
  begin
    Close;
    SQL.Text := 'SELECT id ID,barcode �ͻ����,namec �ͻ�����,lettermoney ���ö��,letterday ��������,temmoney ��ʱ���ö��, '+
    ' temday ��ʱ��������,temdate ��ʱ������Ч����,memo ��ע,cuser ������,cdate �������� FROM tbCustomer_letter'+sqlstr;
    Open;
  end;
end;

procedure TLetterForm.RzToolButton2Click(Sender: TObject);
begin
  EditLetterForm.Caption := '�ͻ���������';
  EditLetterForm.ShowModal;
end;

procedure TLetterForm.RzToolButton3Click(Sender: TObject);
begin
  if Data1.Letter.IsEmpty then  Exit;
  EditLetterForm.Caption := '�ͻ����ñ༭';
  EditLetterForm.Edit1.Text := Data1.Letter.FieldByName('�ͻ����').AsString;
  EditLetterForm.Edit2.Text := Data1.Letter.FieldByName('�ͻ�����').AsString;
  EditLetterForm.Edit3.Text := Data1.Letter.FieldByName('���ö��').AsString;
  EditLetterForm.Edit4.Text := Data1.Letter.FieldByName('��������').AsString;
  EditLetterForm.Edit5.Text := Data1.Letter.FieldByName('��ʱ���ö��').AsString;
  EditLetterForm.Edit6.Text := Data1.Letter.FieldByName('��ʱ��������').AsString;
  EditLetterForm.Edit7.Text := Data1.Letter.FieldByName('��ʱ������Ч����').AsString;
  EditLetterForm.Edit8.Text := Data1.Letter.FieldByName('��ע').AsString;
  EditLetterForm.Edit9.Text := Data1.Letter.FieldByName('id').AsString;
  EditLetterForm.ShowModal;
end;

procedure TLetterForm.RzToolButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TLetterForm.RzToolButton5Click(Sender: TObject);
var
  sqlstr:string;
begin
  if Data1.Letter.IsEmpty then  Exit;
  if (IDYES = Application.MessageBox('�Ƿ�ɾ��������Ϣ��', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
  begin
    try
      sqlstr := '�ͻ���ţ�'+Data1.Letter.FieldByName('�ͻ����').AsString;
      Data1.work.Close;
      Data1.work.SQL.Text :='delete from tbCustomer_letter where id='''+Data1.Letter.FieldByName('id').AsString+''' ';
      Data1.work.ExecSQL;
      Data1.work.Close;
      Data1.WriteLog('ɾ���ͻ�����',sqlstr,'user'); //д��־
      Data1.Letter.Close;
      Data1.Letter.Open;

    except
      on E:Exception do
      begin
        ShowMessage('ʧ��:'+e.Message);
      end;
    end;
  end;
end;

end.
