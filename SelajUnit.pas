unit SelajUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxRibbon, ComCtrls, AdvGlowButton, StdCtrls, AdvGroupBox, ExtCtrls,
  AdvPanel, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, dxSkinsCore,
  dxSkinsDefaultPainters, Menus;

type
  TSelajForm = class(TForm)
    AdvPanelStyler1: TAdvPanelStyler;
    AdvPanel1: TAdvPanel;
    AdvGroupBox1: TAdvGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    AdvGlowButton4: TAdvGlowButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    DBAdvGrid1: TDBAdvGrid;
    AdvPanel2: TAdvPanel;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    AdvGlowButton1: TAdvGlowButton;
    sSaveDialog1: TSaveDialog;
    N3: TMenuItem;
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBAdvGrid1DblClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelajForm: TSelajForm;

implementation

uses DbUnit, zcomm, ajjpegUnit,SqgUnitpas;

{$R *.dfm}

procedure TSelajForm.AdvGlowButton1Click(Sender: TObject);
begin
  if Data1.selajdata.IsEmpty then
  begin
    ShowMessage('没有数据不能导出');
    Exit;
  end;
  if sSaveDialog1.Execute then
  begin
    try
      if pos('.', ssavedialog1.FileName) > 0 then
        dbadvgrid1.SaveToXLS(ssavedialog1.FileName)
      else dbadvgrid1.SaveToXLS(ssavedialog1.FileName + '.xls');
      ShowMessage('导出成功！');
    except
      ShowMessage('导出失败！');
    end;
  end;
end;

procedure TSelajForm.AdvGlowButton4Click(Sender: TObject);
var
 ks,js,sqld,sql1:string;
begin
  ks:=DateToStr(DateTimePicker1.Date)+' 00:00:00';
  js:=DateToStr(DateTimePicker2.Date)+' 23:59:59';
//  if Edit3.Text='1' then
//  begin
//    if Edit1.Text<>'' then sqld:=' and (sqg like ''%'+edit1.text+'%'') ';
//    if Edit2.Text<>'' then sql1:=' and ((coustname like ''%'+edit2.text+'%'') or (bianhao='''+edit2.Text+'''))';
//  end
//  else
//  begin
//    if Edit1.Text<>'' then sqld:=' and ((a.sqg like ''%'+edit1.text+'%'') ';                           // or (a.tel='''+edit2.Text+''')
//    if Edit2.Text<>'' then sql1:=' and (a.coustname like ''%'+edit2.text+'%'') or (a.bianhao='''+edit2.Text+'''))';
//  end;
  if Edit1.Text<>'' then sqld:=' and (a.sqg like ''%'+edit1.text+'%'') ';                           // or (a.tel='''+edit2.Text+''')
  if Edit2.Text<>'' then sql1:=' and ((a.coustname like ''%'+edit2.text+'%'') or (a.bianhao='''+edit2.Text+''') or (b.tel='''+edit2.Text+'''))';
  with Data1.selajdata do
  begin
    close;
    if Edit3.Text='1' then
    begin
//      SQL.Text:='select coustname,bianhao,sqg,gxjc,jgjc,bjjc,aqjc,memo,CONVERT(VARCHAR(24), credate,120) as credate,imageurl,qmimage from tbAQCheck '+
//      ' where (credate>='''+ks+''') '+sqld+sql1+' and (credate<='''+js+''') ';
      SQL.Text:='select a.coustname as coustname,a.bianhao as bianhao,d.namec as qyname,e.namec as jdname,b.tel as tel,b.address as address,a.sqg as sqg,a.gxjc as gxjc,a.jgjc as jgjc,a.bjjc as bjjc,a.aqjc as aqjc,a.memo as memo, '+
      ' CONVERT(VARCHAR(24), a.credate,120) as credate,a.imageurl as imageurl,a.qmimage as qmimage,case when a.imageurl='''' then ''无'' else ''有'' end as imgaj,case when a.qmimage='''' then ''无'' else ''有'' end as imgqm,'+
      ' a.cddata as cddata,a.ajaddress as ajaddress from tbAQCheck a '+
      ' left join tbCustomer_Info b on (a.bianhao=b.barcode) left join tbkh_qy d on (b.qyid=d.id) left join tbkh_jd e on (b.jdid=e.id) where (a.credate>='''+ks+''') '+sqld+sql1+' and (a.credate<='''+js+''')  order by a.credate desc ';
    end
    else
    begin
      SQL.Text:='select a.coustname as coustname,a.bianhao as bianhao,d.namec as qyname,e.namec as jdname,b.tel as tel,b.address as address,a.sqg as sqg,a.gxjc as gxjc,a.jgjc as jgjc,a.bjjc as bjjc,a.aqjc as aqjc,a.memo as memo, '+
      ' CONVERT(VARCHAR(24), a.credate,120) as credate,a.imageurl as imageurl,a.qmimage as qmimage,case when a.imageurl='''' then ''无'' else ''有'' end as imgaj,case when a.qmimage='''' then ''无'' else ''有'' end as imgqm,'+
      ' a.cddata as cddata,a.ajaddress as ajaddress from tbAQCheck a '+
      ' left join tbCustomer_Info b on (a.bianhao=b.barcode) left join tbkh_qy d on (b.qyid=d.id) left join tbkh_jd e on (b.jdid=e.id) where (a.credate>='''+ks+''') '+sqld+sql1+' and (a.credate<='''+js+''') and (b.psid='''+edit4.Text+''') order by a.credate desc ';
    end;
    Open;
  end;
end;

procedure TSelajForm.DBAdvGrid1DblClick(Sender: TObject);
var
 zhstr:ShortString;
begin
    if not Data1.selajdata.Active then  exit;
    if Data1.selajdata.IsEmpty then exit;
    zhstr:=Data1.selajdata.FieldByName('imageurl').AsString;
    if zhstr<>'' then
    begin
      ajjpegForm.imagename:=zhstr;
      ajjpegForm.Timer1.Enabled:=True;
      ajjpegForm.Show;
    end
    else
    begin
      ShowMessage('没有安检图片');
    end;

end;

procedure TSelajForm.FormShow(Sender: TObject);
begin
    DateTimePicker2.Date:=Date;
    DateTimePicker1.Date:=Date;
    edit1.Clear;
    edit2.Clear;
end;

procedure TSelajForm.N2Click(Sender: TObject);
var
 zhstr:ShortString;
begin
    if not Data1.selajdata.Active then  exit;
    if Data1.selajdata.IsEmpty then exit;
    zhstr:=Data1.selajdata.FieldByName('qmimage').AsString;
    if zhstr<>'' then
    begin
      ajjpegForm.imagename:=zhstr;
      ajjpegForm.Timer1.Enabled:=True;
      ajjpegForm.Show;
    end
    else
    begin
      ShowMessage('没有电子签名');
    end;

end;

procedure TSelajForm.N3Click(Sender: TObject);
begin
  if not Data1.selajdata.Active then  exit;
  if Data1.selajdata.IsEmpty then exit;
  if Data1.selajdata.FieldByName('cddata').AsString<>'' then
  begin
    Form94.Panel1.Visible := false;
    Form94.Caption :='客户安检位置信息';
    Form94.Show;
    Form94.getjdwd(Data1.selajdata.FieldByName('cddata').AsString,Data1.selajdata.FieldByName('coustname').AsString+' '+Data1.selajdata.FieldByName('credate').AsString);
  end
  else
  begin
      ShowMessage('没有安检位置信息');
  end;
end;

end.
