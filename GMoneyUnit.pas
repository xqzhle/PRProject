unit GMoneyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, StdCtrls,
  AdvGlowButton, ComCtrls, W7Classes, W7Panels, ImgList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid,DateUtils, tmsAdvGridExcel,cxGridExportLink,
  frxClass, frxDBSet, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  AdvUtil, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TGMoneyForm = class(TForm)
    ImageList3: TImageList;
    W7Panel1: TW7Panel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    DBAdvGrid2: TDBAdvGrid;
    W7Panel2: TW7Panel;
    Label3: TLabel;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    cxGrid1DBTableView1Column12: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGridExcelIO2: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Selectall(stype:Integer);
  public
    { Public declarations }
  end;

var
  GMoneyForm: TGMoneyForm;

implementation
uses DbUnit;
{$R *.dfm}
var
  stype:Integer;
  wstr :string;

procedure TGMoneyForm.AdvGlowButton11Click(Sender: TObject);
begin
  if  not Data1.UniQuery9.IsEmpty then
  begin
    try
      if SaveDialog1.Execute then  ExportGridToEXCEL(SaveDialog1.FileName,cxGrid1,True,True);
      ShowMessage('导出成功！');
    except
      ShowMessage('导出失败！');
    end;
  end
  else ShowMessage('没有数据不能导出！');
end;

procedure TGMoneyForm.AdvGlowButton2Click(Sender: TObject);
begin
  if RadioButton1.Checked then stype:=1;
   if RadioButton2.Checked then stype:=2;
  Selectall(2);
end;

procedure TGMoneyForm.AdvGlowButton3Click(Sender: TObject);
begin
  if RadioButton1.Checked then stype:=1;
   if RadioButton2.Checked then stype:=2;
  Selectall(3);
end;

procedure TGMoneyForm.AdvGlowButton4Click(Sender: TObject);
begin
  if RadioButton1.Checked then stype:=1;
  if RadioButton2.Checked then stype:=2;
  Selectall(1);
end;

procedure TGMoneyForm.AdvGlowButton5Click(Sender: TObject);
begin
  if not Data1.UniQuery8.IsEmpty then
  begin
    frxReport1.DataSet:=frxDBDataset1;
    frxReport1.LoadFromFile('report/qpmx.fr3'); //Picture1
    (frxReport1.FindObject('Memo1') as TfrxMemoView).Text := FormatDateTime('yyyy年mm月dd日', DateTimePicker1.Date)+'--'+FormatDateTime('yyyy年mm月dd日', DateTimePicker2.Date)+'气瓶收费明细表';
    frxReport1.ShowReport;
  end;
end;

procedure TGMoneyForm.AdvGlowButton7Click(Sender: TObject);
begin
  if Data1.UniQuery8.IsEmpty then
  begin
    ShowMessage('没有数据不能导出');
    Exit;
  end;
  if SaveDialog1.Execute then
  begin
    try
      if pos('.', savedialog1.FileName) > 0 then
        AdvGridExcelIO2.XLSExport(savedialog1.FileName)
      else  AdvGridExcelIO2.XLSExport(savedialog1.FileName + '.xls');
      ShowMessage('导出成功！');
    except
      on E: Exception do
      begin
        ShowMessage('导出失败？');
      end;
    end;
  end;
end;

procedure TGMoneyForm.AdvGlowButton8Click(Sender: TObject);
begin
  if not Data1.UniQuery8.IsEmpty then
  begin
    frxReport1.DataSet:=frxDBDataset1;
    frxReport1.LoadFromFile('report/qptj.fr3'); //Picture1
    (frxReport1.FindObject('Memo1') as TfrxMemoView).Text := FormatDateTime('yyyy年mm月dd日', DateTimePicker1.Date)+'--'+FormatDateTime('yyyy年mm月dd日', DateTimePicker2.Date)+'气瓶收费统计表';
    frxReport1.ShowReport;
  end;
end;

procedure TGMoneyForm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if Data1.UniQuery9.IsEmpty then Exit;
  if (IDYES = Application.MessageBox('确认删除该条气瓶收费记录？', pwidechar(Application.Title), MB_YesNo + MB_IconQuestion)) then
    begin
      try
//         Data1.sqlcmd1.Close;
//         Data1.sqlcmd1.SQL.Text := 'delete from tbskbottle where id='''+Data1.UniQuery9.FieldByName('id').AsString+''' ';
//         Data1.sqlcmd1.ExecSQL;
//         Data1.allmdzpxc.Close;
//         Data1.allmdzpxc.Open;
//         ShowMessage('气瓶收费删除成功！');
      except
//         ShowMessage('气瓶收费删除失败！');
      end;
    end;
end;

procedure TGMoneyForm.DBAdvGrid2DblClick(Sender: TObject);
var
  sqlstr,sstr:string;
begin
  if not Data1.UniQuery8.IsEmpty then
  begin
    if stype=1 then
    begin
      if Data1.UniQuery8.FieldByName('type').AsString<>'6' then sstr :=' and stype ='''+Data1.UniQuery8.FieldByName('type').AsString+''' ';

    end
    else if stype=2 then
    begin
      if Data1.UniQuery8.FieldByName('stype').AsString<>'合计' then sstr :=' and b.shopname ='''+Data1.UniQuery8.FieldByName('stype').AsString+''' ';
    end;
    sqlstr:='select a.id as id,b.shopname as 门店名,case when stype=0 then ''收取押金'' when stype=1 then ''收验瓶费'' when stype=2 then ''收租管费'' when stype=3 then ''退押金'' else ''气瓶置换'' end as 收费类别,barcode as 客户编号,a.name as 客户名称, '+
      ' a.gqsn as 押金单号,a.sl as 钢瓶数量,a.memo as 钢瓶规格,a.money as 收费金额,a.credate as 收款日期,a.crename as 收款人 from tbskbottle a left join tshop b on a.shopid=b.shopid where '+wstr+sstr+' Order By stype,a.id desc';
    with Data1.UniQuery9 do
    begin
      close;
      SQL.Text:=sqlstr;
      Open;
      Label3.Caption:='收费条数:'+inttostr(Data1.UniQuery9.RecordCount);
    end;
  end;
end;

procedure TGMoneyForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  data1.UniQuery8.Close;
  Data1.UniQuery9.Close;
  Label3.Caption := '';
end;

procedure TGMoneyForm.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date:=now;
  DateTimePicker2.Date:=Now;
  Label3.Caption := '';
end;

procedure TGMoneyForm.Selectall(stype: Integer);
var
  selectsql,date1,date2:string;
begin
  if stype=1 then
  begin
    date1:=datetostr(DateTimePicker1.Date)+' 00:00:00';
    date2:=datetostr(DateTimePicker2.Date)+' 23:59:59';
  end
  else if stype=2 then
  begin
    DateTimePicker1.Date:=now;
    DateTimePicker2.Date:=now;
    date1:=datetostr(now)+' 00:00:00';
    date2:=datetostr(now)+' 23:59:59';
  end
  else
  begin
    date1:=datetostr(strtodate(IntToStr(YearOf(now))+'-'+inttostr(MonthOf(now))+'-01'));
    date2:=datetostr(now);
    DateTimePicker1.Date:=StrToDate(date1);
    DateTimePicker2.Date:=StrToDate(date2);
    date1:=date1+' 00:00:00';
    date2:=date2+' 23:59:59';
  end;
  wstr :=' a.credate>='''+date1+''' and a.credate<='''+date2+''' ';
  if ComboBox1.Text<>'' then wstr := wstr+' and b.shopname='''+ComboBox1.Text+''' ';
  if (ComboBox2.Text<>'') and (ComboBox2.ItemIndex<>-1) then wstr := wstr+' and a.stype='''+inttostr(ComboBox2.ItemIndex)+''' ';
  if RadioButton1.Checked then
  begin
    selectsql :='select case when stype=0 then ''收取押金'' when stype=1 then ''收验瓶费'' when stype=2 then ''收租管费'' when stype=3 then ''退押金'' else ''气瓶置换'' end as stype,stype as type,SUM(a.sl) as sl,SUM(a.money) as mon '+
    ' from tbskbottle a left join tshop b on a.shopid=b.shopid where '+wstr+' group by stype union all select ''合计'' as stype,''6'' as type,SUM(a.sl) as sl,SUM(a.money) as mon  '+
    ' from tbskbottle a left join tshop b on a.shopid=b.shopid where '+wstr+' order by type ';
  end
  else
  begin
    selectsql :='select b.shopname as stype,b.shopid as type,SUM(a.sl) as sl,SUM(a.money) as mon '+
    ' from tbskbottle a left join tshop b on a.shopid=b.shopid  where '+wstr+' group by b.shopname,b.shopid '+
    ' union all select ''合计'' as stype,''99'' as type,SUM(a.sl) as sl,SUM(a.money) as mon from tbskbottle a left join tshop b on a.shopid=b.shopid where '+wstr+' order by type';
  end;
  with Data1.UniQuery8 do
  begin
    Close;
    sql.Text := selectsql;
    Open;
  end;

end;

end.
