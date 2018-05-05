unit Unit31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, dxRibbonForm, ImgList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxRibbon, AdvSmoothMessageDialog,AdvStyleIF, AdvGlowButton,
  Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TForm31 = class(TdxRibbonForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ImageList3: TImageList;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
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
    Label5: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure DateTimePicker1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form31: TForm31;
  //stlID:TStrings;
 // y,yy:Boolean;
implementation

uses DbUnit;

{$R *.dfm}
var
sqlstr,sqlstr1,sqlstr2:string;

procedure TForm31.AdvGlowButton1Click(Sender: TObject);
begin
      data1.ds142.Close;
      Data1.ds142.sql.Text:=sqlstr;
      data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
end;

procedure TForm31.AdvGlowButton2Click(Sender: TObject);
begin
      sqlstr2:='';

      if (ComboBox1.Text='') and (ComboBox2.Text='') and (Edit2.Text='') and (Edit1.Text='') then
      begin
      data1.ds142.Close;
      Data1.ds142.sql.Text:=sqlstr+sqlstr1;
       data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
      Exit;
      end;
      if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') and (Edit1.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.creid='''+combobox2.Text+''') and (a.address='''+edit1.Text+''')';
       data1.ds142.Close;
      Data1.ds142.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
      Exit;
      end;
       if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') and (Edit2.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.creid='''+combobox2.Text+''') and (a.tel='''+edit2.Text+''')';
      data1.ds142.Close;
      Data1.ds142.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
      Exit;
      end;
       if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.creid='''+combobox2.Text+''') ';
      data1.ds142.Close;
      Data1.ds142.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
      Exit;
      end;
       if (ComboBox1.Text<>'') and (Edit1.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.address='''+edit1.Text+''') ';
       data1.ds142.Close;
      Data1.ds142.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
      Exit;
      end;
      if (ComboBox1.Text<>'') and (Edit2.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.tel='''+edit2.Text+''') ';
       data1.ds142.Close;
      Data1.ds142.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
      Exit;
      end ;
       if (ComboBox2.Text<>'') and (Edit1.Text<>'') then
      begin
      sqlstr2:=' and (a.creid='''+combobox2.Text+''') and (a.address='''+edit1.Text+''') ';
      data1.ds142.Close;
      Data1.ds142.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
      Exit;
      end;
       if (ComboBox2.Text<>'') and (Edit2.Text<>'') then
      begin
      sqlstr2:=' and (a.creid='''+combobox2.Text+''') and (a.tel='''+edit2.Text+''') ';
       data1.ds142.Close;
      Data1.ds142.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
      Exit;
      end;

        if ComboBox1.Text<>'' then
        begin
        sqlstr2:=' and (a.shopname='''+combobox1.Text+''')';
        data1.ds142.Close;
      Data1.ds142.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
      Exit;
        end;
        if ComboBox2.Text<>'' then
        begin
        sqlstr2:=' and (a.creid='''+combobox2.Text+''')';
        data1.ds142.Close;;
      Data1.ds142.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds142.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
      Exit;
      end;


end;

procedure TForm31.AdvGlowButton6Click(Sender: TObject);
begin
    close;
end;



procedure TForm31.DateTimePicker1CloseUp(Sender: TObject);
begin
   sqlstr1:=' where  (a.credate>='''+datetimetostr(DateTimePicker1.DateTime)+''') and (a.credate<='''+datetimetostr(DateTimePicker2.DateTime)+''')' ;
end;

procedure TForm31.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
   if (DBAdvGrid1.Cells[4,ARow]=trim('作废单')) then AFont.Color:=clred;
end;

procedure TForm31.DBAdvGrid1Resize(Sender: TObject);
begin
     DBAdvGrid1.AutoSizeColumns(False,2); //根据内容调节列宽
end;

procedure TForm31.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Edit2.Text<>'' then  Edit2.Text:='';

end;

procedure TForm31.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Edit1.Text<>'' then  Edit1.Text:='';
end;

procedure TForm31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Data1.ds142.Close;
end;

procedure TForm31.FormShow(Sender: TObject);
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
      sqlstr:='select a.ShopID as 店号,a.Shopname as 门店名称,a.credate as 咨询时间,'+
      ' a.custname as 客户名称,a.address as 地址,a.tel as 电话,'+
      'a.memo as 咨询内容,a.Creid as 接线人 from ttzixun a   ';
       sqlstr1:=' where  (a.credate>='''+datetimetostr(DateTimePicker1.DateTime)+''') and (a.credate<='''+datetimetostr(DateTimePicker2.DateTime)+''')' ;
       Data1.ds142.Close;
       Data1.ds142.sql.Text:=sqlstr+sqlstr1;
       data1.ds142.Open;
       Label1.Caption:='总共：'+IntToStr(Data1.ds142.RecordCount)+' 条记录';
       data1.ds142.ReadOnly:=True;
end;

end.
