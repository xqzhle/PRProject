unit Unit32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, dxRibbonForm, ImgList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxRibbon,AdvSmoothMessageDialog,AdvStyleIF, AdvGlowButton,
  Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TForm32 = class(TdxRibbonForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ImageList3: TImageList;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    Label9: TLabel;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    DBAdvGrid1: TDBAdvGrid;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    ComboBox2: TComboBox;
    AdvGlowButton1: TAdvGlowButton;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure DateTimePicker1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form32: TForm32;
  //stlID:TStrings;
 // y,yy:Boolean;
implementation

uses DbUnit,MainUnit;

{$R *.dfm}
var
sqlstr,sqlstr1,sqlstr2:string;

procedure TForm32.AdvGlowButton1Click(Sender: TObject);
begin
      data1.ds143.Close;
      Data1.ds143.sql.Text:=sqlstr;
      data1.ds143.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds143.RecordCount)+' 条记录';
end;

procedure TForm32.AdvGlowButton2Click(Sender: TObject);
begin
      sqlstr2:='';

      if (ComboBox1.Text='') and (ComboBox2.Text='')  then
      begin
      data1.ds143.Close;;
      Data1.ds143.sql.Text:=sqlstr+sqlstr1;
       data1.ds143.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds143.RecordCount)+' 条记录';
      Exit;
      end;

       if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.creid='''+combobox2.Text+''') ';
      data1.ds143.Close;
      Data1.ds143.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds143.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds143.RecordCount)+' 条记录';
      Exit;
      end;

        if ComboBox1.Text<>'' then
        begin
        sqlstr2:=' and (a.shopname='''+combobox1.Text+''')';
        data1.ds143.Close;
        Data1.ds143.sql.Text:=sqlstr+sqlstr1+sqlstr2;
        data1.ds143.Open;
        Label1.Caption:='总共：'+IntToStr(Data1.ds143.RecordCount)+' 条记录';
        Exit;
        end;
        if ComboBox2.Text<>'' then
        begin
        sqlstr2:=' and (a.creid='''+combobox2.Text+''')';
        data1.ds143.Close;
      Data1.ds143.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds143.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds143.RecordCount)+' 条记录';
      Exit;
      end;


end;

procedure TForm32.AdvGlowButton6Click(Sender: TObject);
begin
    close;
end;



procedure TForm32.DateTimePicker1CloseUp(Sender: TObject);
begin
   sqlstr1:=' where  (a.credate>='''+datetimetostr(DateTimePicker1.DateTime)+''') and (a.credate<='''+datetimetostr(DateTimePicker2.DateTime)+''')' ;
end;

procedure TForm32.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
   if (DBAdvGrid1.Cells[4,ARow]=trim('催气信息')) then AFont.Color:=clred;
end;

procedure TForm32.DBAdvGrid1Resize(Sender: TObject);
begin
     DBAdvGrid1.AutoSizeColumns(False,2); //根据内容调节列宽
end;

procedure TForm32.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Data1.ds143.Close;
end;

procedure TForm32.FormShow(Sender: TObject);
begin
      DBAdvGrid1.SetStyle(gsOffice2007Luna);
      DateTimePicker1.Date:=Date;
      DateTimePicker2.Date:=Date;
      Data1.cmd3.Close;
      Data1.cmd3.sql.Text:='select shopname from tshop where shopid<>0';
      Data1.cmd3.Open;
      ComboBox1.Items.Clear;
      if not Data1.cmd3.IsEmpty then
      begin
        while not Data1.cmd3.Eof do
        begin
          ComboBox1.Items.Add(Data1.cmd3.FieldByName('shopname').AsString);
          Data1.cmd3.Next;
        end;
      end;
      Data1.cmd3.Close;
      Data1.cmd3.sql.Text:='select name from tUser where type<>2';
      Data1.cmd3.Open;
      ComboBox2.Items.Clear;
      if not Data1.cmd3.IsEmpty then
      begin
        while not Data1.cmd3.Eof do
        begin
          ComboBox2.Items.Add(Data1.cmd3.FieldByName('name').AsString);
          Data1.cmd3.Next;
        end;
      end;
      Data1.cmd3.Close;
      sqlstr:='select a.ShopID as 店号,a.Shopname as 门店名称,a.credate as 发布时间,case when a.ins=''1'' then ''其它信息''  '+
      '  else ''催气信息'' end as 信息类别,'+
      'a.memo as 信息内容,a.Creid as 制单人,a.clr as 处理人,a.cljg as 处理结果 from ttxinxi a   ';
       sqlstr1:=' where  (a.credate>='''+datetimetostr(DateTimePicker1.DateTime)+''') and (a.credate<='''+datetimetostr(DateTimePicker2.DateTime)+''')' ;
       Data1.ds143.Close;;
       Data1.ds143.sql.Text:=sqlstr+sqlstr1;
       data1.ds143.Open;
       Label1.Caption:='总共：'+IntToStr(Data1.ds143.RecordCount)+' 条记录';
       data1.ds143.ReadOnly:=True;
end;

procedure TForm32.RadioButton1Click(Sender: TObject);
begin
       Data1.ds143.Close;
       Data1.ds143.sql.Text:=sqlstr+sqlstr1+sqlstr2+' and a.ins=0';
       data1.ds143.Open;
       Label1.Caption:='总共：'+IntToStr(Data1.ds143.RecordCount)+' 条记录';
end;

procedure TForm32.RadioButton2Click(Sender: TObject);
begin
       Data1.ds143.Close;
       Data1.ds143.sql.Text:=sqlstr+sqlstr1+sqlstr2+' and a.ins=1';
       data1.ds143.Open;
       Label1.Caption:='总共：'+IntToStr(Data1.ds143.RecordCount)+' 条记录';
end;

end.
