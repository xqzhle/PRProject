unit MdPgUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,Mydialogs,
  uniGUIClasses, uniGUIFrame, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  StdCtrls, ExtCtrls, DB, MemDS, DBAccess, Uni, ComCtrls, AdvDateTimePicker,
  OleServer, AcReport_TLB_Int, AdvUtil, AcReport_TLB;

type
  TMdPgFrame = class(TUniFrame)
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
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    AcRptEngine1: TAcRptEngine;

    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure DBAdvGrid4Resize(Sender: TObject);
    procedure DBAdvGrid4GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  DbUnit, SqgUnit, Unit38,MainUnit;

{$R *.dfm}
 var
 wherestr:string;
 sqlstr,orderstr:string;


procedure TMdPgFrame.Button1Click(Sender: TObject);
var
 wstr:string;
begin
  wstr:='';
  if Edit1.Text<>'' then
  wstr:=' and (a.corpid like ''%'+edit1.text+'%'')';
  wstr:= wstr+' and (a.pddate>='''+formatdatetime('yyyy-mm-dd hh:mm:ss',AdvDateTimePicker1.DateTime)+''') and (a.pddate<='''+formatdatetime('yyyy-mm-dd hh:mm:ss',AdvDateTimePicker2.DateTime)+''')';
   with Data1.ss6 do
   begin
     Close;
     SQL.Text:=sqlstr+wherestr+wstr+orderstr;
      Open;
   end;
end;

procedure TMdPgFrame.Button2Click(Sender: TObject);
begin
    if not Data1.ss6.Active then Exit;
    if Data1.ss6.RecordCount=0 then Exit;
    if Data1.ss6.FieldByName('״̬').AsString='�ɹ�' then
     begin
       Form38.Edit2.Text:=Data1.ss6.FieldByName('������').AsString;
       Form38.ShowModal;

     end;
end;

procedure TMdPgFrame.Button3Click(Sender: TObject);
var
 rpt_path,ss,botteltype:string;
 a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a17,atel,optdate,hykh:string;
begin
   if not Data1.ss6.Active then Exit;
    if Data1.ss6.RecordCount=0 then Exit;
    with Data1.ss6 do
    begin
      a1:=FieldByName('����').AsString;
      a2:=FieldByName('�ͻ����').AsString;
      a3:=FieldByName('��Ʒ����').AsString;
      a4:=FieldByName('�ͻ�').AsString;
      a5:=FieldByName('����').AsString;
      a6:=FieldByName('�˷�').AsString;
      a7:=FieldByName('����').AsString;
      hykh :=FieldByName('��Ա����').AsString;
       atel:=Data1.ss6.FieldByName('��ϵ�绰').AsString;
      a9:=Data1.ss6.FieldByName('ʵ�ս��').AsString;
      a11:=shopname;
      a12:='';
      a13:=Data1.ss6.FieldByName('������ַ').AsString;
      a14:=Data1.ss6.FieldByName('�µ���').AsString;
      a17:=Data1.ss6.FieldByName('��ע').AsString;
//    a17:=Data1.ss6.FieldByName('���֤').AsString;
      optdate:=Data1.ss6.FieldByName('����ʱ��').AsString;
      if FieldByName('��������').AsString='ԤԼ'  then
      begin
        a15:=FieldByName('ԤԼʱ��').AsString;
        System.Delete(a15,1,5);
        a15:=Copy(a15,1,11);
      end
      else a15:='';
       ACRptEngine1.Init;
          ACRptEngine1.AddGlobalVariable('optdate', optdate) ;
          ACRptEngine1.AddGlobalVariable('a17', a17) ;
          ACRptEngine1.AddGlobalVariable('a10', a10) ;
          ACRptEngine1.AddGlobalVariable('a8', FieldByName('������').AsString) ;
          ACRptEngine1.AddGlobalVariable('a1', a1) ;
          ACRptEngine1.AddGlobalVariable('a2', a2) ;
          ACRptEngine1.AddGlobalVariable('a3', a3) ;
          ACRptEngine1.AddGlobalVariable('a4', a4) ;
          ACRptEngine1.AddGlobalVariable('a5', a5) ;
          ACRptEngine1.AddGlobalVariable('a6', a6) ;
          ACRptEngine1.AddGlobalVariable('a7', a7) ;
          ACRptEngine1.AddGlobalVariable('a9', a9) ;
          ACRptEngine1.AddGlobalVariable('a11', a11) ;
          ACRptEngine1.AddGlobalVariable('a12', a12) ;
          ACRptEngine1.AddGlobalVariable('a13', a13) ;
          ACRptEngine1.AddGlobalVariable('a14', a14) ;
          ACRptEngine1.AddGlobalVariable('a15', a15) ;
          ACRptEngine1.AddGlobalVariable('atel', atel) ;
          ACRptEngine1.AddGlobalVariable('hykh', hykh);
          ACRptEngine1.AddGlobalVariable('a16', usName) ;
          ACRptEngine1.SetReportFile(ExtractFilePath(ParamStr(0)) + '\report\'+'sqd.apt');
          AcRptEngine1.Preview;
    end;
end;

procedure TMdPgFrame.Button4Click(Sender: TObject);
var
 str:string;
begin
   if Data1.ss6.Active then
      begin
       if Data1.ss6.RecordCount<>0 then
        begin
           if Data1.ss6.FieldByName('״̬').AsString='�ɹ�' then
            begin
             if InputQueryEx('��ʾ��Ϣ', '����������ԭ��', str,) then
             begin
                Data1.sds111.Close;
               Data1.sds111.sql.Text:='update  tbisent set type=''3'',zfyy='''+str+''' where bisentid='''+Data1.ss6.FieldByName('����').AsString+''' ';
               try
                 Data1.sds111.ExecSQL;
                 ShowMessage('�������ϳɹ�');
                 Data1.ss6.Close;
                 Data1.ss6.Open;
               except
                  ShowMessage('��������ʧ��');
               end;
             end;

            end;
        end;
      end;
end;

procedure TMdPgFrame.Button5Click(Sender: TObject);
begin
  if Data1.ss6.Active then
  begin
    if Data1.ss6.RecordCount<>0 then
    begin
      if Data1.ss6.FieldByName('״̬').AsString='�ɹ�' then
      begin
      //  SqgForm.ComboBox1.Items:=Form34.ComboBox9.Items;
        SqgForm.ComboBox1.text:=Data1.ss6.FieldByName('������').AsString;
        SqgForm.edit1.Text:= Data1.ss6.FieldByName('����').AsString;
        SqgForm.edit2.Text:= '2';
        SqgForm.ShowModal;
      end;
    end;
  end;
end;

procedure TMdPgFrame.DBAdvGrid4GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    if (DBAdvGrid4.Cells[17,ARow]=trim('�Ӽ�')) then  Afont.Color:=clred;//AFont.Color:=clred;
     if (DBAdvGrid4.Cells[17,ARow]=trim('ԤԼ')) then  AFont.Color:=clblue;
   //  if (DBAdvGrid4.Cells[1,ARow]=trim('�ɹ�')) then  ABrush.Color:=clYellow;
end;

procedure TMdPgFrame.DBAdvGrid4Resize(Sender: TObject);
begin
   DBAdvGrid4.AutoSizeColumns(False,8);
end;

procedure TMdPgFrame.UniFrameCreate(Sender: TObject);

begin
   wherestr:=' and (a.shopid<>'''')';//'(a.shopid='''+shopid+''')';
   with Data1.ss6 do
   begin
     Close;
     sqlstr:='select case when a.status=''0'' then ''�ɹ�'' when a.status=''2'' then ''�ص�'' end as ״̬,a.optdate as ����ʱ��,a.bisentid as ����,a.optid as �µ���,'+
       ' case when a.Fsktype=0 then ''�ֽ�'' when a.Fsktype=1 then ''΢����֧��'' end as �տʽ,a.shopname as �ŵ�����,'+
       'c.hynumber as ��Ա����,c.bayday as ���֤,a.empname as ������,a.corpname as �ͻ�,a.tel as ��ϵ�绰,a.yydate as ԤԼʱ��,b.dj as ����, '+
       'a.pddate as �ɵ�ʱ��,b.pricename as ��Ʒ����,b.sl as ����,b.yfmoney as �Ż�, b.smoney as �˷�,b.glmoney as ��ƿ��,b.money as ʵ�ս��,a.address as ������ַ,c.ywy as ҵ��Ա,a.zpbar as ��ƿ���,case when a.type=''1'' then ''ԤԼ'' when a.type=''2'' then ''�Ӽ�'' else ''����'' end as ��������, '+
       'a.typename as ��ƿ����,a.corpid as �ͻ����'+ //,a.kpbar as �ͻ�ƿ�� case when c.yj=1 then ''��'' else ''��'' end as �½�,
       ',a.memo as ��ע from tbisent a right join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.barcode where  (a.status=0) and (a.type<>3)';
       orderstr:=' order by a.optdate desc';
       SQL.Text:=sqlstr+wherestr+orderstr;
      Open;
   end;
   AdvDateTimePicker1.Time:=StrToTime('00:00:00');
   AdvDateTimePicker1.Date:=Date;
   AdvDateTimePicker2.Time:=StrToTime('23:59:59');
   AdvDateTimePicker2.Date:=Date;
end;

procedure TMdPgFrame.UniFrameDestroy(Sender: TObject);
begin
  Data1.ss6.Close;
end;

end.
