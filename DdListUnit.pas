unit DdListUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  StdCtrls, ExtCtrls, DB, MemDS, DBAccess, Uni, ComCtrls, AdvDateTimePicker,
  OleServer,  tmsAdvGridExcel;

type
  TDdListFrame = class(TUniFrame)
    Panel1: TPanel;
    Button2: TButton;
    DBAdvGrid4: TDBAdvGrid;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    AdvDateTimePicker1: TAdvDateTimePicker;
    AdvDateTimePicker2: TAdvDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure DBAdvGrid4Resize(Sender: TObject);
    procedure DBAdvGrid4GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  DbUnit, SqgUnit, Unit38,MainUnit,zcomm;

{$R *.dfm}
 var
 wherestr:string;
 sqlstr,orderstr:string;


procedure TDdListFrame.Button1Click(Sender: TObject);
var
 wstr:string;
begin
  wstr:='';
  if Edit1.Text<>'' then
  wstr:=' and (a.corpid like ''%'+edit1.text+'%'')';
  if Edit2.Text<>'' then
  wstr:=wstr+' and (a.corpname like ''%'+edit2.text+'%'')';
  if ComboBox1.Text<>'' then
  wstr:=wstr+' and (a.empname ='''+ComboBox1.text+''')';
  wstr:= wstr+' and (a.hddate>='''+formatdatetime('yyyy-mm-dd hh:mm:ss',AdvDateTimePicker1.DateTime)+''') and (a.hddate<='''+formatdatetime('yyyy-mm-dd hh:mm:ss',AdvDateTimePicker2.DateTime)+''')';
   with Data1.ss8 do
   begin
     Close;
     SQL.Text:=sqlstr+wherestr+wstr+orderstr;
      Open;
   end;
end;

procedure TDdListFrame.Button2Click(Sender: TObject);
begin
    if not Data1.ss8.Active then Exit;
    if Data1.ss8.RecordCount=0 then Exit;
     if SaveDialog1.Execute then
      begin
       try
        if  pos('.', savedialog1.FileName)>0 then  AdvGridExcelIO1.XLSExport(savedialog1.FileName)
       else   AdvGridExcelIO1.XLSExport(savedialog1.FileName+'.xls');
        mShowMessage('�����ɹ���');
       except
         mShowMessage('����ʧ�ܣ�');
       end;
      end;
end;

procedure TDdListFrame.DBAdvGrid4GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    if (DBAdvGrid4.Cells[19,ARow]=trim('�Ӽ�')) then  Afont.Color:=clred;//AFont.Color:=clred;
     if (DBAdvGrid4.Cells[19,ARow]=trim('ԤԼ')) then  AFont.Color:=clblue;
   //  if (DBAdvGrid4.Cells[1,ARow]=trim('�ɹ�')) then  ABrush.Color:=clYellow;
end;

procedure TDdListFrame.DBAdvGrid4Resize(Sender: TObject);
begin
   DBAdvGrid4.AutoSizeColumns(False,8);
end;

procedure TDdListFrame.UniFrameCreate(Sender: TObject);

begin
   wherestr:=' and (a.shopid<>'''')';//'(a.shopid='''+shopid+''')';
   with Data1.ss8 do
   begin
     Close;
     sqlstr:='select case when a.status=''0'' then ''�ɹ�'' when a.status=''2'' then ''�ص�'' else ''�����'' end as ״̬,a.bisentid as ����,a.optid as �µ���,'+
       ' case when a.Fsktype=0 then ''�ֽ�'' when a.Fsktype=1 then ''΢����֧��'' end as �տʽ,a.shopname as �ŵ�����,'+
       'c.hynumber as ��Ա����,c.bayday as ���֤,a.empname as ������,a.corpname as �ͻ�,a.tel as ��ϵ�绰,a.yydate as ԤԼʱ��,b.dj as ����, '+
       'a.optdate as ����ʱ��,a.pddate as �ɵ�ʱ��,a.hddate as �ص�ʱ��,b.pricename as ��Ʒ����,b.sl as ����,b.yfmoney as �Ż�, b.smoney as �˷�,b.glmoney as ��ƿ��,'+
       'b.money as ʵ�ս��,a.address as ������ַ,c.ywy as ҵ��Ա,a.zpbar as ��ƿ���,case when a.type=''1'' then ''ԤԼ'' when a.type=''2'' then ''�Ӽ�'' else ''����'' end as ��������, '+
       'a.typename as ��ƿ����,a.corpid as �ͻ����'+ //,a.kpbar as �ͻ�ƿ�� case when c.yj=1 then ''��'' else ''��'' end as �½�,
       ',a.memo as ��ע from tbisent a right join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.barcode where  (a.status=1) and (a.type<>3)';
       orderstr:=' order by a.optdate desc';
       SQL.Text:=sqlstr+wherestr+orderstr;
      Open;
   end;
   AdvDateTimePicker1.Time:=StrToTime('00:00:00');
   AdvDateTimePicker1.Date:=Date;
   AdvDateTimePicker2.Time:=StrToTime('23:59:59');
   AdvDateTimePicker2.Date:=Date;
   Data1.sqlcmd1.Close;
      Data1.sqlcmd1.SQL.Text:='select  empname from tb_yginfo where gwname like ''%��%''  order by empname';
      Data1.sqlcmd1.Open;
      ComboBox1.Items.Clear;
       if not Data1.sqlcmd1.IsEmpty then
       begin
         while not Data1.sqlcmd1.Eof do
         begin
            ComboBox1.Items.Add(Data1.sqlcmd1.FieldByName('empname').AsString);
            Data1.sqlcmd1.Next;
         end;
       end;
       data1.sqlcmd1.Close;
       ComboBox1.ItemIndex:=-1;
       ComboBox1.Text:='';
end;

procedure TDdListFrame.UniFrameDestroy(Sender: TObject);
begin
  Data1.ss8.Close;
end;

end.
