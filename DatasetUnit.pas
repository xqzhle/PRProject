unit DatasetUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ImgList, cxGraphics;

type
  TDatasetForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    cxImageList1: TcxImageList;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatasetForm: TDatasetForm;
  connok:Boolean=False;
implementation
 uses IniFiles, zcomm, DbUnit;
{$R *.dfm}
// var
// ini:TIniFile;


procedure TDatasetForm.Button1Click(Sender: TObject);
begin
    Data1.UniConnection1.close;
    Data1.UniConnection1.Server:=edit1.text;//ini.ReadString('database','SERVER','');
    Data1.UniConnection1.Database:=edit2.text;//ini.ReadString('database','DBNAME','shangsoft');
    Data1.UniConnection1.Username:=edit3.text;//ini.ReadString('database','USERNAME','');
    Data1.UniConnection1.Password:=edit4.text;//ini.R
    try
     Data1.UniConnection1.Open;
     Data1.UniConnection1.close;
     ShowMessage('数据库测试连接成功！');
    except
       on   E:Exception   do
      begin
        ShowMessage(e.Message);
      end;
    end;
end;

procedure TDatasetForm.Button2Click(Sender: TObject);
begin
    Data1.UniConnection1.close;
    Data1.UniConnection1.Server:=edit1.text;//ini.ReadString('database','SERVER','');
    Data1.UniConnection1.Database:=edit2.text;//ini.ReadString('database','DBNAME','shangsoft');
    Data1.UniConnection1.Username:=edit3.text;//ini.ReadString('database','USERNAME','');
    Data1.UniConnection1.Password:=edit4.text;//ini.R
    try
      Data1.UniConnection1.Open;
//      Data1.UniConnection1.Close;
      zWriteString('database','SERVER',Edit1.Text);
      zWriteString('database','DBNAME',Edit2.Text);
      zWriteString('database','USERNAME',enc(Edit3.Text));
      zWriteString('database','PASSWORD',enc(Edit4.Text));
     {RODataSnapModule1.UniConnection1.Close;
     RODataSnapModule1.UniConnection1.Server:=Edit1.Text;
     RODataSnapModule1.UniConnection1.Database:=Edit2.Text;
     RODataSnapModule1.UniConnection1.Username:=Edit3.Text;
     RODataSnapModule1.UniConnection1.Password:=Edit4.Text;
     RODataSnapModule1.UniConnection1.Open;  }
      connok:=True;
//     MainForm.W7ActiveLabel6.Caption:='连接成功';
      ShowMessage('保存当前配置成功！');
      Close;
    except
        on   E:Exception   do
      begin
        ShowMessage(e.Message);
      end;
    end;

end;

procedure TDatasetForm.Button3Click(Sender: TObject);
begin
   Close;
end;

procedure TDatasetForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if connok then
    DatasetForm.Close
   else
   Application.Terminate;
end;

end.
