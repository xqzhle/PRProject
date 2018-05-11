unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, ImgList, tmsAdvGridExcel,DateUtils,
  Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, ToolWin, Buttons, AdvObj,
  AdvUtil;

type
  TForm22 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    DBAdvGrid1: TDBAdvGrid;
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    SaveDialog1: TSaveDialog;
    AdvGridExcelIO1: TAdvGridExcelIO;
    Panel12: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    PageSizebox: TComboBox;
    SelPageBox: TComboBox;
    Sp: TADOStoredProc;
    Label6: TLabel;
    ComboBox5: TComboBox;
    Label4: TLabel;
    ComboBox3: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Label26Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure SelPageBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure selectbottle(const pages:Integer);
  public
    { Public declarations }
    zbool:Boolean;
    qzid:string;
  end;

var
  Form22: TForm22;

implementation

uses
  DbUnit;
{$R *.dfm}
var
  onebool : Boolean=True;
  sql1,sql2,sql3:string;
  Pagecurrent:Integer=0;  // 当前页
  Pagecount:Integer=0;    //总页数

procedure TForm22.selectbottle(const pages: Integer);
var
 wherestr,orderbystr,fromstr,selectstr,fdname:string;
 rows:Integer;
begin
   selectstr:=sql1;
   fromstr:=sql2;
   wherestr:=sql3;
   orderbystr:=' DossierID';
   fdname:='a.ID';
   Sp.Close;
   sp.ProcedureName:='PageShowOneshang;1';
   sp.Parameters.Refresh;
   sp.Parameters.ParamByName('@PageSize').Value:=StrToInt(PageSizebox.Text);
   sp.Parameters.ParamByName('@PageCurrent').Value:=pages;
   sp.Parameters.ParamByName('@FdName').Value:=fdname;
   sp.Parameters.ParamByName('@fromstr').Value:=fromstr;
   sp.Parameters.ParamByName('@selectstr').Value:=selectstr;
   sp.Parameters.ParamByName('@orderbystr').Value:=orderbystr;
   sp.Parameters.ParamByName('@wherestr').Value:=wherestr;
   sp.Open;
   rows:=Sp.Parameters.ParamValues['@CountRows']  ;
   Pagecount:=Sp.Parameters. ParamValues['@CountPage'];
   Pagecurrent:=pages;
   Label23.Caption:=Format('共 %D 条记录',[rows]);
   Label24.Caption:=Format('/ %D页 ',[pagecount]);
   label25.Caption:=Format('%D',[pages]);
   SelPageBox.Items.Clear;
   for rows := 1 to Pagecount do
   SelPageBox.Items.Add('第'+IntToStr(rows)+'页');
end;

procedure TForm22.SelPageBoxChange(Sender: TObject);
begin
  if SelPageBox.ItemIndex=-1 then Exit;
   if Pagecurrent=SelPageBox.ItemIndex+1 then Exit;
   Selectbottle(SelPageBox.ItemIndex+1);
end;

procedure TForm22.FormShow(Sender: TObject);
var
  i:Integer;
begin           //F.NameC as 最后修改用户,A.UpdateDate as 最后修改时间,
//A.DossierID as 档案编号, A.WorksNumber as 识别编号, ,A.PlanThick as 钢瓶壁厚,A.workPressure as 工作压力,A.Waterpressure as 水压压力 ,'+'A.InitialVolume as 钢瓶容积
   sql1:=' A.BottleBar as 钢瓶标签,A.Bottleid as 钢瓶编号,a.FactoryID as 厂家名称,C.Spec_Name as 钢瓶规格,D.Type_Name as 充装介质,A.InitialHeft as 钢瓶重量,A.MakeTime as 生产时间,'+
         'A.BuysDate as 购入日期,A.NextProbe as 下检日期,A.Lastdate as 最新检测日期,A.ScrapDate As 报废日期,'+
         ' A.CreateDate as 新建日期,a.CreateUser as 新建用户, '+
         'case when A.instate=''0'' then ''正常'' when A.instate=''1'' then ''报废'' when A.instate=''2'' then ''丢失'' else ''检测'' end as 使用状态,s.name as 检测单位,case when a.Bottleright=''0'' then ''自有'' else ''非自有'' end as 产权 ,a.Remark as 备注';
   sql2:=' tbBottle_Dossier A left join tbBottle_Spec'+' C'+
         ' On C.Spec_ID=A.SpecID left join tbBottle_Class D On D.Type_ID=A.TypeID left join tbUser_Info F On F.UserID=A.UpdateUser left join tb_Inspection s on A.chickname=s.name_id';
   if onebool and Data1.ADOConnection1.Connected then
   begin
      adoquery1.Close;
      adoquery1.SQL.Clear;
      adoquery1.SQL.Add('Select Spec_ID,Spec_Name From tbBottle_Spec Order By Spec_ID');
      adoquery1.Open;
      if adoquery1.RecordCount>0 then
      begin
        adoquery1.First;
        for i:=1 to adoquery1.RecordCount do
        begin
          combobox3.Items.Append(adoquery1.Fields.Fields[1].AsString);
          adoquery1.Next;
        end;
      end;
      adoquery1.Close;
      onebool := False;
   end;
end;

procedure TForm22.Label26Click(Sender: TObject);
begin
  if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   selectbottle(1);
end;

procedure TForm22.Label27Click(Sender: TObject);
begin
  if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    selectbottle(Pagecurrent-1);
end;

procedure TForm22.Label28Click(Sender: TObject);
begin
  if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    selectbottle(Pagecurrent+1);
end;

procedure TForm22.Label29Click(Sender: TObject);
begin
  if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   selectbottle(Pagecount);
end;

procedure TForm22.ToolButton1Click(Sender: TObject);
begin                  //查在检钢瓶
  sql3:='';
  if zbool then   sql3:=' ((A.Instate=''3'') and (A.BottleAction<>''4'') and (a.qzid='''+qzid+''')) '
  else  sql3:=' ((A.Instate=''3'') and (A.BottleAction<>''4'')) ';
  if Data1.ADOConnection1.Connected then
   try
     selectbottle(1);
   except

   end
   else ShowMessage('数据库没有连接');
end;

procedure TForm22.ToolButton2Click(Sender: TObject);
begin              //查报废钢瓶
  sql3:='';
  if zbool then sql3:=' ((A.Instate=''1'') and (A.BottleAction<>''4'') and (a.qzid='''+qzid+''')) '
  else sql3:=' ((A.Instate=''1'') and (A.BottleAction<>''4'')) ';
   if Data1.ADOConnection1.Connected then
     try
        selectbottle(1);
     except

     end
   else
    ShowMessage('数据库没有连接');
end;

procedure TForm22.ToolButton3Click(Sender: TObject);
begin                //查询非自有钢瓶
   sql3:='';
   if zbool then sql3:=' ((Bottleright=''1'') and (A.BottleAction<>''4'') and (a.qzid='''+qzid+''')) '
   else sql3:=' ((Bottleright=''1'') and (A.BottleAction<>''4'')) ';
   if Data1.ADOConnection1.Connected then

     try
        selectbottle(1);
     except

     end
   else  ShowMessage('数据库没有连接');
end;

procedure TForm22.ToolButton5Click(Sender: TObject);
begin
    if savedialog1.Execute then
   begin
     if  pos('.', savedialog1.FileName)>0 then  advgridexcelio1.XLSExport(savedialog1.FileName)
       else   advgridexcelio1.XLSExport(savedialog1.FileName+'.xls');
   end;
end;

procedure TForm22.ToolButton6Click(Sender: TObject);
begin
   adotable1.Active:=false;
   ADOQuery1.Close;
   Close;
end;

procedure TForm22.BitBtn1Click(Sender: TObject);
begin
   if zbool then   sql3:='  (A.BottleAction<>''4'') and (a.qzid='''+qzid+''') '
   else sql3 := ' (A.BottleAction<>''4'') ';
   if (datetimepicker1.Checked) then  sql3 := sql3+' and (a.CreateDate>='''+datetostr(DateTimePicker1.Date)+''') ';
   if (datetimepicker2.Checked) then  sql3 := sql3+' and (a.CreateDate<='''+datetostr(DateTimePicker2.Date)+''') ';
   if (datetimepicker3.Checked) then  sql3 := sql3+' and (a.MakeTime>='''+datetostr(DateTimePicker3.Date)+''') ';
   if (datetimepicker4.Checked) then  sql3 := sql3+' and (a.MakeTime<='''+datetostr(DateTimePicker4.Date)+''') ';
   if  trim(combobox5.Text)='在用' then//是状态，没有，所以得用查数据库     0
   begin
     sql3 := sql3+' and (A.Instate =''0'') ';
   end
   else if  trim(combobox5.Text)='报废' then     //1
   begin
     sql3 :=sql3+' and (A.Instate =''1'') ';
   end else if  trim(combobox5.Text)='检验' then   //3
   begin
     sql3 :=sql3+' and  (A.Instate =''3'') ';
   end else if  trim(combobox5.Text)='丢失' then   //2
   begin
     sql3 :=sql3+' and (A.Instate =''2'') ';
   end;
   if (trim(combobox3.Text)<>'') then sql3 := sql3+' and (C.Spec_Name = '''+trim(combobox3.Text)+''')';
  selectbottle(1);
end;



procedure TForm22.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     if (DBAdvGrid1.Cells[22,arow]=trim('检测')) then AFont.Color:=clgreen;
     if (DBAdvGrid1.Cells[22,ARow]=trim('报废')) then AFont.Color:=clred;
     if (DBAdvGrid1.Cells[22,ARow]=trim('丢失')) then AFont.Color:=clblue;
end;

procedure TForm22.DBAdvGrid1Resize(Sender: TObject);
begin
     DBAdvGrid1.AutoSizeColumns(False,20);
end;

procedure TForm22.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   adotable1.Active:=false;
   ADOQuery1.Close;
end;

procedure TForm22.FormCreate(Sender: TObject);
begin
   combobox5.Clear;
   combobox3.Clear;
   combobox5.Items.Append('全部');
   combobox5.Items.Append('在用');
   combobox5.Items.Append('检验');
   combobox5.Items.Append('报废');
   combobox5.Items.Append('丢失');
   DateTimePicker1.Date:=Date;
   DateTimePicker2.Date:=Date;
   
   
end;

end.
