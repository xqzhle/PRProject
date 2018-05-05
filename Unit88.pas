unit Unit88;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
   cxClasses, dxRibbon,dxRibbonForm,
  StdCtrls, Buttons, AdvGlowButton,AdvSmoothMessageDialog,AdvStyleIF, ImgList,
  dxSkinsCore, dxSkinsDefaultPainters;

type
  TForm88 = class(TdxRibbonForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    Memo1: TMemo;
    ImageList3: TImageList;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form88: TForm88;
  selll:Boolean;
implementation

uses MainUnit, DbUnit;

{$R *.dfm}

procedure TForm88.AdvGlowButton10Click(Sender: TObject);
begin
    if Memo1.Text<>'' then
    begin
     try
       Data1.sqlcmd1.Close;
       Data1.sqlcmd1.SQL.Text:='INSERT INTO tthf (credate,creid,coustid,shopid,hmemo) values ('''+edit1.Text+''','''+edit2.text+''','''+edit3.text+''','''+edit5.text+''','''+Memo1.Lines.Text+''')';
       Data1.sqlcmd1.Execute;
       ShowSmoothMessage('保存成功！',tsOffice2007Luna);
     except
       ShowSmoothMessage('保存失败！',tsOffice2007Luna);
     end;
    end
    else
    ShowSmoothMessage('回访内容不能为空！',tsOffice2007Luna);
    Data1.sqlcmd1.Close;
end;

procedure TForm88.AdvGlowButton1Click(Sender: TObject);
begin
     Close;
end;

procedure TForm88.FormShow(Sender: TObject);
begin
    Edit1.Text:=DateToStr(Date);
    Edit2.Text:=LoginName;
    selll:=False;
end;

procedure TForm88.SpeedButton1Click(Sender: TObject);
begin
    selll:=True;
   // Form11.AdvGlowButton17.Visible := False;
    //Form11.ShowModal;
end;

end.
