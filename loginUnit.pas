unit loginUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, RzButton,
  Menus, acPNG;

const
  WM_TRAYNOTIFY = WM_USER + 1; //定义通知消息

type
  TLoginForm = class(TForm)
    eUserID: TEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Timer1: TTimer;
    Image1: TImage;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel1: TPanel;
    LoginButton: TRzToolButton;
    PopupMenu11: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton1: TRzToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure LoginButtonClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure eUserIDKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

//    procedure InitHttp();
  private
    { Private declarations }
//    procedure SysCommand(var SysMsg: TMessage); message WM_SYSCOMMAND; //托盘
//    procedure WMNID(var msg: TMessage); message WM_TRAYNOTIFY;  //托盘操作
  public
    { Public declarations }
     function Login: Boolean;  //登录函数
  end;

var
  LoginForm: TLoginForm;

implementation

uses
  MainUnit,DbUnit, Registry, zcomm;

{$R *.dfm}
var
  RegisterCode: string;

function TLoginForm.Login: Boolean;
begin
  //动态创建登录窗口
  with TLoginForm.Create(nil) do
  begin
    //只有返回OK的时候认为登录成功
    Result := ShowModal() = mrOk;
    Free;
  end;
end;

procedure TLoginForm.RzToolButton1Click(Sender: TObject);
begin
  if Edit1.PasswordChar = #42 then
    Edit1.PasswordChar := #0
  else
    Edit1.PasswordChar := #42;
end;

procedure TLoginForm.RzToolButton4Click(Sender: TObject);
begin
//  ShellExecute(Handle,'open',PWideChar('http://www2.fineu.cc'),nil,nil,SW_SHOWNORMAL);
end;

procedure TLoginForm.RzToolButton5Click(Sender: TObject);
begin
  Close;
end;


procedure TLoginForm.LoginButtonClick(Sender: TObject);
begin
  try
    if (euserid.Text='') or (euserid.Text='') then
    begin
      ShowMessage('帐号和密码不能为空！');
      Exit;
    end;
    with data1.UniQuery1 do
    begin                                                                                                                     //0  系统管理员 1 气站
      Close;
      SQL.Text := 'Select a.id as id,a.czid as czid,a.comname as comname,a.type as type,a.ext as ext,b.pbx as pbx,a.name as name '+
      'from tuser a left join tCompany b on a.comname=b.comname where (a.aname=''' + euserid.Text + ''') and (a.apassword=''' + Edit1.Text + ''')';
      Open;
      if not IsEmpty then
      begin
        if CheckBox1.Checked then
        begin
          zWriteString('system', 'username', eUserID.Text);
          zWriteString('system', 'password', enc(Edit1.Text));
        end
        else
        begin
          zWriteString('system', 'username', '');
          zWriteString('system', 'password', '');
        end;
        Userinfo.userid:=FieldByName('id').AsString;
        Userinfo.usname:=FieldByName('name').AsString;
        Userinfo.shopid:=FieldByName('id').AsString;
        Userinfo.shopname:=FieldByName('comname').AsString;
        Userinfo.ext:=FieldByName('ext').AsString;
        Userinfo.pbxip:=FieldByName('pbx').AsString;
        Userinfo.usertypename:=FUsertype[FieldByName('type').AsInteger];
        Userinfo.usercode:=FieldByName('id').AsString;
        if FieldByName('type').AsInteger=7 then
        begin
          Userinfo.log_czid:=FieldByName('czid').AsString;
          Userinfo.log_czq:=FieldByName('ext').AsString;
          Userinfo.qzname:=FieldByName('comname').AsString;
        end;
        if FieldByName('type').AsInteger=8 then
        begin
          Userinfo.log_czid:=FieldByName('czid').AsString;
          Userinfo.czph:=FieldByName('ext').AsString;
          Userinfo.qzname:=FieldByName('comname').AsString;
        end;
//        bmid:=FieldByName('bmid').AsString;
       // bmid:='1';
        Loginname :=Userinfo.usname;
        UsName:=Userinfo.usname ;
        log_czq:=Userinfo.log_czq;
        log_czid:=Userinfo.log_czid;
        qzname:=Userinfo.qzname;
        usercode:=Userinfo.usercode;
        ext:=Userinfo.ext;
        Shopid:=Userinfo.shopid;
        shopname:=Userinfo.shopname;
        Close;
       // showings := False;
        ModalResult := mrOk;
      end
      else   ShowMessage('帐号或密码错误！');
    end;
  except
    on e: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TLoginForm.MenuItem5Click(Sender: TObject);
begin
  LoginForm.Visible := True;
end;

procedure TLoginForm.MenuItem6Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TLoginForm.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

procedure TLoginForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    LoginButton.Click;
end;

procedure TLoginForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', '.', #32, #8]) then
    key := #0;
end;

procedure TLoginForm.eUserIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    LoginButton.Click;
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  if (IDYES = Application.MessageBox('确定要退出系统吗？', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
//  begin
  if ModalResult <> mrOk then
  begin
   // showings := True;
 //   Application.Terminate;
     KillTask('PRProject.exe');
  end;
  // ModalResult:=mrClose;
//    Action := caFree;
//  end
//  else
//    Action := caNone;
end;

procedure TLoginForm.FormCreate(Sender: TObject);
var
  p: DWORD;
begin
  self.FormStyle := fsStayOnTop;
//  self.Position := poScreenCenter;
//    Height:=600;
//    zhangregocx('midas.dll');
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SSHORTDATE, pchar('yyyy-MM-dd')); //短日期
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SLONGDATE, pchar('yyyy''年''M''月 ''d''日'''));
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_STIMEFORMAT, pchar('HH:mm:ss')); //设置时间
  SendMessageTimeOut(HWND_BROADCAST, WM_SETTINGCHANGE, 0, 0, SMTO_ABORTIFHUNG, 10, p);
  eUserID.Text := zReadString('system', 'username', '');
  Edit1.Text := Dec(zReadString('system', 'password', ''));
  if eUserID.Text<>'' then   CheckBox1.Checked:=True;
  
end;

procedure TLoginForm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (ssleft in Shift) then
  begin
    ReleaseCapture;
    Perform(WM_syscommand, $F012, 0);
  end;
end;

end.

