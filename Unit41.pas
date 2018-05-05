unit Unit41;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxRibbon, AdvGlowButton,
  ImgList,dxRibbonForm,AdvSmoothMessageDialog,AdvStyleIF, OleServer,
  AcReport_TLB, StdCtrls, dxSkinsCore, dxSkinsDefaultPainters, AcReport_TLB_Int;


type
  TForm41 = class(TdxRibbonForm)
    ImageList1: TImageList;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    AcRptEngine1: TAcRptEngine;
    Edit1: TEdit;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form41: TForm41;
  b1,b2,b3,b4,b5,b6,b7,b8,b9:string;
implementation

uses DbUnit,MainUnit,zcomm;

{$R *.dfm}
var
rpt_path:string;

function NumToChnStr(Value: Real; ClearZero: Boolean): String;
const  ChnUnit: array[0..13] of string = ('·Ö', '½Ç', 'Ôª', 'Ê°', '°Û', 'Çª', 'Íò', 'Ê°', '°Û', 'Çª', 'ÒÚ', 'Ê°', '°Û', 'Çª');  ChnNum : array[0..9]  of string = ('Áã', 'Ò¼','·¡', 'Èþ', 'ËÁ', 'Îé', 'Â½', 'Æâ', '°Æ', '¾Á');
var  I: Integer;  StrValue, StrNum: String;  ValueLen: Integer;
begin
if Value <= 0 then
 begin
Result := 'Áã';
Exit;
end;
StrValue := IntToStr(Round(Value * 100));
ValueLen := Length(StrValue);
Result := '';
for I := 1 to ValueLen do
  begin
StrNum := StrValue[I];
Result := Result + ChnNum[StrToInt(StrNum)] + ChnUnit[ValueLen - I];
end;
if ClearZero then
begin
 Result := StringReplace(Result, 'Áã·Ö', '',   [rfReplaceAll]);
 Result := StringReplace(Result, 'Áã½Ç', '',   [rfReplaceAll]);
 Result := StringReplace(Result, 'ÁãÔª', 'Ôª', [rfReplaceAll]);
 Result := StringReplace(Result, 'ÁãÊ°', '',   [rfReplaceAll]);
 Result := StringReplace(Result, 'Áã°Û', '',   [rfReplaceAll]);
 Result := StringReplace(Result, 'ÁãÇª', '',   [rfReplaceAll]);
 Result := StringReplace(Result, 'ÁãÍò', 'Íò', [rfReplaceAll]);
 end;
end;


procedure TForm41.AdvGlowButton2Click(Sender: TObject);
begin
       AdvSmoothMessageDialog1.Caption:=MainForm.Caption;
       AdvSmoothMessageDialog1.HTMLText.Text:='È·ÈÏ³ä×°Æ±ÒÑ¾­´òÓ¡Íê³É£¿';
       case AdvSmoothMessageDialog1.ExecuteDialog of
       mryes:begin
      try
        Data1.sqlcmd11.Close;
        Data1.sqlcmd11.SQL.Text:='update  tbisent set hddate='''+gettime+''',pddate='''+gettime+''',zpbar='''+b7+''' where bisentid='''+b9+'''  ';
        Data1.sqlcmd11.ExecSQL;
        Data1.sqlcmd11.Close;

        ShowSmoothMessage('²Ù×÷³É¹¦£¡',tsOffice2007Luna);

         Close;
        except
          ShowSmoothMessage('²Ù×÷Ê§°Ü£¡',tsOffice2007Luna);
        end;
       end;
       end;
end;

procedure TForm41.AdvGlowButton6Click(Sender: TObject);
begin
         ACRptEngine1.Init;
        ACRptEngine1.AddGlobalVariable('b1', b1) ;
        ACRptEngine1.AddGlobalVariable('b2', b2) ;
        ACRptEngine1.AddGlobalVariable('b3', b3) ;
        ACRptEngine1.AddGlobalVariable('b4', b4) ;
        ACRptEngine1.AddGlobalVariable('b5', b5) ;
        ACRptEngine1.AddGlobalVariable('b6', b6) ;
        ACRptEngine1.AddGlobalVariable('b7', b7) ;
        b8:= NumToChnStr(StrToFloat(b6),True);
         ACRptEngine1.AddGlobalVariable('b8', b8) ;
        ACRptEngine1.SetReportFile(rpt_path+'czp.apt');
        ACRptEngine1.Preview;
       //ACRptEngine1.ShowDesigner;
end;

procedure TForm41.FormShow(Sender: TObject);
begin
  rpt_path := ExtractFilePath(ParamStr(0)) + '\report\';
end;

end.
