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
  Pagecurrent:Integer=0;  // ��ǰҳ
  Pagecount:Integer=0;    //��ҳ��

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
   Label23.Caption:=Format('�� %D ����¼',[rows]);
   Label24.Caption:=Format('/ %Dҳ ',[pagecount]);
   label25.Caption:=Format('%D',[pages]);
   SelPageBox.Items.Clear;
   for rows := 1 to Pagecount do
   SelPageBox.Items.Add('��'+IntToStr(rows)+'ҳ');
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
begin           //F.NameC as ����޸��û�,A.UpdateDate as ����޸�ʱ��,
//A.DossierID as �������, A.WorksNumber as ʶ����, ,A.PlanThick as ��ƿ�ں�,A.workPressure as ����ѹ��,A.Waterpressure as ˮѹѹ�� ,'+'A.InitialVolume as ��ƿ�ݻ�
   sql1:=' A.BottleBar as ��ƿ��ǩ,A.Bottleid as ��ƿ���,a.FactoryID as ��������,C.Spec_Name as ��ƿ���,D.Type_Name as ��װ����,A.InitialHeft as ��ƿ����,A.MakeTime as ����ʱ��,'+
         'A.BuysDate as ��������,A.NextProbe as �¼�����,A.Lastdate as ���¼������,A.ScrapDate As ��������,'+
         ' A.CreateDate as �½�����,a.CreateUser as �½��û�, '+
         'case when A.instate=''0'' then ''����'' when A.instate=''1'' then ''����'' when A.instate=''2'' then ''��ʧ'' else ''���'' end as ʹ��״̬,s.name as ��ⵥλ,case when a.Bottleright=''0'' then ''����'' else ''������'' end as ��Ȩ ,a.Remark as ��ע';
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
begin                  //���ڼ��ƿ
  sql3:='';
  if zbool then   sql3:=' ((A.Instate=''3'') and (A.BottleAction<>''4'') and (a.qzid='''+qzid+''')) '
  else  sql3:=' ((A.Instate=''3'') and (A.BottleAction<>''4'')) ';
  if Data1.ADOConnection1.Connected then
   try
     selectbottle(1);
   except

   end
   else ShowMessage('���ݿ�û������');
end;

procedure TForm22.ToolButton2Click(Sender: TObject);
begin              //�鱨�ϸ�ƿ
  sql3:='';
  if zbool then sql3:=' ((A.Instate=''1'') and (A.BottleAction<>''4'') and (a.qzid='''+qzid+''')) '
  else sql3:=' ((A.Instate=''1'') and (A.BottleAction<>''4'')) ';
   if Data1.ADOConnection1.Connected then
     try
        selectbottle(1);
     except

     end
   else
    ShowMessage('���ݿ�û������');
end;

procedure TForm22.ToolButton3Click(Sender: TObject);
begin                //��ѯ�����и�ƿ
   sql3:='';
   if zbool then sql3:=' ((Bottleright=''1'') and (A.BottleAction<>''4'') and (a.qzid='''+qzid+''')) '
   else sql3:=' ((Bottleright=''1'') and (A.BottleAction<>''4'')) ';
   if Data1.ADOConnection1.Connected then

     try
        selectbottle(1);
     except

     end
   else  ShowMessage('���ݿ�û������');
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
   if  trim(combobox5.Text)='����' then//��״̬��û�У����Ե��ò����ݿ�     0
   begin
     sql3 := sql3+' and (A.Instate =''0'') ';
   end
   else if  trim(combobox5.Text)='����' then     //1
   begin
     sql3 :=sql3+' and (A.Instate =''1'') ';
   end else if  trim(combobox5.Text)='����' then   //3
   begin
     sql3 :=sql3+' and  (A.Instate =''3'') ';
   end else if  trim(combobox5.Text)='��ʧ' then   //2
   begin
     sql3 :=sql3+' and (A.Instate =''2'') ';
   end;
   if (trim(combobox3.Text)<>'') then sql3 := sql3+' and (C.Spec_Name = '''+trim(combobox3.Text)+''')';
  selectbottle(1);
end;



procedure TForm22.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     if (DBAdvGrid1.Cells[22,arow]=trim('���')) then AFont.Color:=clgreen;
     if (DBAdvGrid1.Cells[22,ARow]=trim('����')) then AFont.Color:=clred;
     if (DBAdvGrid1.Cells[22,ARow]=trim('��ʧ')) then AFont.Color:=clblue;
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
   combobox5.Items.Append('ȫ��');
   combobox5.Items.Append('����');
   combobox5.Items.Append('����');
   combobox5.Items.Append('����');
   combobox5.Items.Append('��ʧ');
   DateTimePicker1.Date:=Date;
   DateTimePicker2.Date:=Date;
   
   
end;

end.
