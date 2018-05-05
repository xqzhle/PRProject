unit Unit96;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls;

type
  TForm96 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit11: TEdit;
    Edit1: TEdit;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form96: TForm96;

implementation
uses DbUnit;
{$R *.dfm}

procedure TForm96.AdvGlowButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm96.AdvGlowButton3Click(Sender: TObject);
begin
  if Edit11.Text='' then
  begin
    ShowMessage('ID不能为空');
    Exit;
  end;
  if Edit6.Text='' then
  begin
    ShowMessage('押金单号不能为空');
    Exit;
  end;
  if Edit9.Text='' then
  begin
    ShowMessage('钢瓶数量不能为空');
    Exit;
  end;
  if (Edit7.Text='') or (Edit7.Text='0') then
  begin
    ShowMessage('押金金额不能为空或0');
    Exit;
  end;
  with Data1.sds111 do
  begin
    close;
    SQL.Text:='select id from tbskbottle where gqsn='''+Edit6.Text+''' and id<>'''+edit11.Text+''' ';
    Open;
    if not IsEmpty then
    begin
      ShowMessage('已存在该押金单号信息');
      close;
      Exit;
    end;
    close;
    sql.Text:='update tbskbottle set gqsn='''+Edit6.Text+''',sl='''+Edit9.Text+''',money='''+Edit7.Text+''',memo='''+Edit8.Text+''' where id='''+edit11.Text+''' ';
    try
      ExecSQL;
      ShowMessage('修改成功');
      if Edit1.Text='1'then
      begin
        Data1.mdzpxc.Close;
        Data1.mdzpxc.Open;
      end
      else if Edit1.Text='2'then
      begin
        Data1.ds12.Close;
        Data1.ds12.Open;
      end;

      Self.Close;
    except
      ShowMessage('修改失败');
    end;
    Close;
  end;
end;

procedure TForm96.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9','.',#8,#13]) then key:=#0;
end;

end.
