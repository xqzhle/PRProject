unit Unit54;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses,dxRibbonForm ,dxRibbon,
  StdCtrls, AdvGlowButton, ImgList,AdvSmoothMessageDialog,AdvStyleIF,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TForm54 = class(TdxRibbonForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    Memo1: TMemo;
    ImageList3: TImageList;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form54: TForm54;

implementation

uses DbUnit, MainUnit, YwyUnit;

{$R *.dfm}

procedure TForm54.AdvGlowButton1Click(Sender: TObject);
var
sqlstr:string;
begin
     if yy=false then
     sqlstr:='update ttywy set shopid='''+edit1.Text+''',ywname='''+edit3.Text+''',duty='''+edit4.Text+''',linktel='''+edit5.Text+''','+
      'remark='''+memo1.Text+''',optid='''+usName+''',optdate='''+datetimetostr(now)+''' where ywid='''+edit2.Text+''''
      else
      sqlstr:='INSERT INTO ttywy (shopid,ywid,ywname,duty,linktel,creid,credate,remark) VALUES('''+edit1.Text+''','''+edit2.Text+''','''+edit3.Text+''','''+edit4.Text+''', '+
      ''''+edit5.Text+''','''+edit6.Text+''','''+edit7.Text+''','''+memo1.Text+''')';

      Data1.ds31.Close;
      try
      Data1.sqlcmd1.Close;
      Data1.sqlcmd1.SQL.Text:=sqlstr;
      Data1.sqlcmd1.Execute;
      ShowSmoothMessage('数据修改成功！',tsOffice2007Luna);
      close;
      Data1.ds31.Open;
      except
         ShowSmoothMessage('数据修改失败！请检查',tsOffice2007Luna);
      end;
      Data1.sqlcmd1.Close;
end;

procedure TForm54.AdvGlowButton6Click(Sender: TObject);
begin
       Close;
end;

procedure TForm54.ComboBox1Click(Sender: TObject);
begin
      Data1.sqlcmd1.Close;
     Data1.sqlcmd1.sql.Text:='select shopid from tshop where shopname='''+combobox1.Text+'''';
     Data1.sqlcmd1.Open;
      if not Data1.sqlcmd1.IsEmpty then
     begin
       Edit1.Text:=Data1.sqlcmd1.FieldByName('shopid').AsString;
     end;
     Data1.sqlcmd1.Close;
end;

procedure TForm54.FormShow(Sender: TObject);
begin


     Data1.sqlcmd1.Close;
     Data1.sqlcmd1.sql.Text:='select shopname from tshop where shopid<>0';
     Data1.sqlcmd1.Open;
     ComboBox1.Items.Clear;
     if not Data1.sqlcmd1.IsEmpty then
     begin
       while not Data1.sqlcmd1.Eof do
        begin
           ComboBox1.Items.Add(Data1.sqlcmd1.FieldByName('shopname').AsString);
           Data1.sqlcmd1.Next;
        end;
     end;
     Data1.sqlcmd1.Close;
     if yy=false then
     begin
     Edit1.Text:=Data1.ds31.FieldByName('店号').AsString;
     ComboBox1.Text:=Data1.ds31.FieldByName('店名').AsString;
     Edit2.Text:=Data1.ds31.FieldByName('编号').AsString;
     Edit3.Text:=Data1.ds31.FieldByName('姓名').AsString;
     Edit4.Text:=Data1.ds31.FieldByName('职务').AsString;
     Edit5.Text:=Data1.ds31.FieldByName('电话').AsString;
     Edit6.Text:=Data1.ds31.FieldByName('创建人').AsString;
     Edit7.Text:=Data1.ds31.FieldByName('创建日期').AsString;
     Edit8.Text:=Data1.ds31.FieldByName('修改人').AsString;
     Edit9.Text:=Data1.ds31.FieldByName('修改日期').AsString;
     Memo1.Text:=Data1.ds31.FieldByName('备注').AsString;
     end
     else
     begin
     Data1.sqlcmd1.Close;
     Data1.sqlcmd1.SQL.Text:='select max(ywid) as id from ttywy';
     Data1.sqlcmd1.Open;
     if Data1.sqlcmd1.FieldByName('id').AsString<>'' then
     Edit2.Text:=IntToStr(Data1.sqlcmd1.FieldByName('id').AsInteger+1)
     else
     Edit2.Text:='10001';
     Data1.sqlcmd1.Close;
     Edit1.Text:='';
     Edit3.Text:='';
     Edit4.Text:='';
     Edit5.Text:='';
     Edit8.Text:='';
     Edit9.Text:='';
     Edit6.Text:=usName;
     Edit7.Text:=DateTimeToStr(now);
     Memo1.Text:='';
     end;
end;

end.
