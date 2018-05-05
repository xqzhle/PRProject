unit Unit89;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, dxRibbonForm, ImgList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxRibbon, AdvSmoothMessageDialog,AdvStyleIF, AdvGlowButton,
  Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TForm89 = class(TdxRibbonForm)
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
    AdvGlowButton1: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form89: TForm89;
  //stlID:TStrings;
 // y,yy:Boolean;
implementation

uses DbUnit, CallCentUnit;

{$R *.dfm}
var
sqlstr,sqlstr1,sqlstr2:string;

procedure TForm89.AdvGlowButton1Click(Sender: TObject);
begin
      data1.ds144.Close;
      Data1.ds144.SQL.Text:=sqlstr;
      data1.ds144.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds144.RecordCount)+' 条记录';
end;

procedure TForm89.AdvGlowButton2Click(Sender: TObject);
begin
      sqlstr2:='';

      if (ComboBox1.Text='') and (ComboBox2.Text='')  then
      begin
      data1.ds144.Close;
      Data1.ds144.SQL.Text:=sqlstr+sqlstr1;
       data1.ds144.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds144.RecordCount)+' 条记录';
      Exit;
      end;

       if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') then
      begin
      sqlstr2:=' and (b.shopname='''+combobox1.Text+''') and (d.creid='''+combobox2.Text+''') ';
      data1.ds144.Close;
      Data1.ds144.SQL.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds144.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds144.RecordCount)+' 条记录';
      Exit;
      end;

        if ComboBox1.Text<>'' then
        begin
        sqlstr2:=' and (b.shopname='''+combobox1.Text+''')';
        data1.ds144.Close;
        Data1.ds144.SQL.Text:=sqlstr+sqlstr1+sqlstr2;
        data1.ds144.Open;
        Label1.Caption:='总共：'+IntToStr(Data1.ds144.RecordCount)+' 条记录';
        Exit;
        end;
        if ComboBox2.Text<>'' then
        begin
        sqlstr2:=' and (d.creid='''+combobox2.Text+''')';
        data1.ds144.Close;
      Data1.ds144.SQL.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds144.Open;
      Label1.Caption:='总共：'+IntToStr(Data1.ds144.RecordCount)+' 条记录';
      Exit;
      end;


end;

procedure TForm89.AdvGlowButton6Click(Sender: TObject);
begin
    close;
end;



procedure TForm89.DateTimePicker1CloseUp(Sender: TObject);
begin
   sqlstr1:=' where  (d.credate>='''+datetimetostr(DateTimePicker1.DateTime)+''') and (d.credate<='''+datetimetostr(DateTimePicker2.DateTime)+''')' ;
end;

procedure TForm89.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  // if (DBAdvGrid1.Cells[4,ARow]=trim('催气信息')) then AFont.Color:=clred;
end;

procedure TForm89.DBAdvGrid1Resize(Sender: TObject);
begin
     DBAdvGrid1.AutoSizeColumns(False,2); //根据内容调节列宽
end;

procedure TForm89.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Data1.ds144.Close;
end;

procedure TForm89.FormCreate(Sender: TObject);
begin
  DBAdvGrid1.SetStyle(gsOffice2007Luna);
  DateTimePicker1.Date:=Date;
  DateTimePicker2.Date:=Date;
  ComboBox1.Items :=CallCentform.ComboBox4.Items;
//  Data1.cmd3.Close;;
//  Data1.cmd3.SQL.Text:='select shopname from tshop where shopid<>0';
//  Data1.cmd3.Open;
//  ComboBox1.Items.Clear;
//  if not Data1.cmd3.IsEmpty then
//  begin
//        while not Data1.cmd3.Eof do
//        begin
//          ComboBox1.Items.Add(Data1.cmd3.FieldByName('shopname').AsString);
//          Data1.cmd3.Next;
//        end;
//  end;
      Data1.cmd3.Close;
      Data1.cmd3.SQL.Text:='select name from tUser where type<>2';
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
end;

procedure TForm89.FormShow(Sender: TObject);
begin
      sqlstr:='select a.psid as 门店编号,b.shopname as 所属门店,a.barcode as 客户条码,a.namec as 客户名称,a.ywy as 业务员,A.contact as 联系人,c.type_name as 类型,a.typec as 类型编号,a.address as 客户地址,'+
       'a.tel as 电话1,a.fax as 电话2,d.hmemo as 回访内容,d.CreDate as 回访日期,d.creid as 回访人 from tthf d left join tbCustomer_Info a on a.barcode=d.coustid left join tshop b on d.shopid=b.shopid left join tbCustomer_type c on a.typec=c.type_id ';
       sqlstr1:=' where  (d.credate>='''+datetimetostr(DateTimePicker1.DateTime)+''') and (d.credate<='''+datetimetostr(DateTimePicker2.DateTime)+''')' ;
       Data1.ds144.Close;
       Data1.ds144.SQL.Text:=sqlstr+sqlstr1;
       data1.ds144.Open;
       Label1.Caption:='总共：'+IntToStr(Data1.ds144.RecordCount)+' 条记录';
       data1.ds144.ReadOnly:=True;
end;

end.
