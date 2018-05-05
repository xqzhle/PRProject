unit ajjpegUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  ExtCtrls, IdBaseComponent, IdComponent,
  IdHTTP,jpeg, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbon, IdTCPConnection, IdTCPClient,
  dxSkinsCore, dxSkinsDefaultPainters, Menus, ImgList, RzButton;

type
  TajjpegForm = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Image1: TImage;
    Timer1: TTimer;
    Panel1: TPanel;
    IdHTTP1: TIdHTTP;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Panel2: TPanel;
    RzToolButton1: TRzToolButton;
    ImageList1: TImageList;
    RzToolButton2: TRzToolButton;
    procedure FormShow(Sender: TObject);
    procedure IdHTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure Timer1Timer(Sender: TObject);
    procedure IdHTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure getjpeg(const jpgname:string);
    var
     imagename:string;
  end;

var
  ajjpegForm: TajjpegForm;

implementation
uses zcomm;
{$R *.dfm}
var
  imageurl:string;
  page,pages:Integer;
  List:TStringList;

{ TajjpegForm }  //'http://192.168.1.88:8081/php/phptest/';//

procedure TajjpegForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  image1.Picture := nil;
  Panel1.Visible:=true;
  IdHTTP1.Disconnect;
  try
    List.Free;
  finally

  end;
end;

procedure TajjpegForm.FormCreate(Sender: TObject);
begin
  imageurl := zReadString('config','httpurl','');
end;

procedure TajjpegForm.FormResize(Sender: TObject);
begin
  RzToolButton1.Top := Self.Height div 2-52;
  RzToolButton2.Top := Self.Height div 2-52;
end;

procedure TajjpegForm.FormShow(Sender: TObject);
begin
//  if imageurl <>'' then  Timer1.Enabled:=true;
end;

procedure TajjpegForm.getjpeg(const jpgname:string);
var
imagestream:TMemoryStream;
jpg:TJpegImage;
//idhttp1:  Tidhttp;
begin
  try
    try
      Panel2.Caption := Format('当前第 %d 张   共 %d 张',[page,pages]);
      //   ShowMessage(imageurl+jpgname);
//      idhttp1:=Tidhttp.Create(nil);
      imagestream := TMemoryStream.Create();
      jpg:=TJpegImage.Create;
      idhttp1.Get(imageurl+jpgname,imagestream);
      imagestream.Position:=0;
      jpg.LoadFromStream(imagestream);
      image1.Picture.Assign(jpg);
    finally
      imagestream.Destroy;
      jpg.Destroy;
//      idhttp1.Free;
    end;
  except
   on E:Exception do
   begin
     ShowMessage('图片加载失败：'+e.Message);
   end;
  end;
end;

procedure TajjpegForm.IdHTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
    Panel1.Visible:=true;
end;

procedure TajjpegForm.IdHTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
    Panel1.Visible:=False;
end;

procedure TajjpegForm.N1Click(Sender: TObject);
begin
   if SaveDialog1.Execute then
   begin
     try
       Image1.picture.savetofile(SaveDialog1.FileName);
       ShowMessage('保存成功');
     except
       ShowMessage('保存失败');
     end;
   end;
end;


procedure TajjpegForm.RzToolButton1Click(Sender: TObject);
var
  i:Integer;
begin
  if page <=1 then  i:=pages
  else i:=page-1;
  if i<>page then
  begin
    page :=i;
    getjpeg(List[i-1]);
  end;
end;

procedure TajjpegForm.RzToolButton2Click(Sender: TObject);
var
  i:Integer;
begin
  if page >=pages then  i:=1
  else i:=page+1;
  if i<>page then
  begin
    page :=i;
    getjpeg(List[i-1]);
  end;
end;

procedure TajjpegForm.Timer1Timer(Sender: TObject);

begin
  Timer1.Enabled:=False;
    List := TStringList.Create;
    List.CommaText := imagename;
    if List.Count>0 then
    begin
      page := 1;
      pages := List.Count;
      getjpeg(List[0]);
    end
    else
    begin
      ShowMessage('没找到图片信息');
      page := 0;
      pages := 0;

    end;


end;



end.
