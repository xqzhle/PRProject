unit DbUnit;

interface

uses
  SysUtils, Classes, ImgList, Controls, Uni, DB, MemDS, DBAccess, UniProvider,
  SQLServerUniProvider,Dialogs, tmsAdvGridExcel, ADODB, IdMultiPartFormData,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TData1 = class(TDataModule)
    DataSource1: TDataSource;
    DataSource4: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource9: TDataSource;
    DataSource10: TDataSource;
    DataSource11: TDataSource;
    DataSource12: TDataSource;
    DataSource13: TDataSource;
    DataSource14: TDataSource;
    DataSource15: TDataSource;
    DataSource16: TDataSource;
    DataSource17: TDataSource;
    DataSource18: TDataSource;
    DataSource19: TDataSource;
    DataSource20: TDataSource;
    DataSource21: TDataSource;
    DataSource22: TDataSource;
    DataSource23: TDataSource;
    DataSource24: TDataSource;
    DataSource25: TDataSource;
    DataSource26: TDataSource;
    DataSource27: TDataSource;
    DataSource28: TDataSource;
    DataSource29: TDataSource;
    DataSource30: TDataSource;
    DataSource31: TDataSource;
    DataSource32: TDataSource;
    DataSource33: TDataSource;
    DataSource34: TDataSource;
    DataSource35: TDataSource;
    DataSource36: TDataSource;
    DataSource37: TDataSource;
    DataSource38: TDataSource;
    DataSource39: TDataSource;
    DataSource40: TDataSource;
    DataSource41: TDataSource;
    DataSource42: TDataSource;
    DataSource43: TDataSource;
    DataSource44: TDataSource;
    DataSource45: TDataSource;
    DataSource46: TDataSource;
    DataSource47: TDataSource;
    DataSource48: TDataSource;
    DataSource49: TDataSource;
    DataSource50: TDataSource;
    DataSource51: TDataSource;
    DataSource52: TDataSource;
    DataSource53: TDataSource;
    DataSource54: TDataSource;
    DataSource55: TDataSource;
    DataSource56: TDataSource;
    DataSource57: TDataSource;
    DataSource58: TDataSource;
    DataSource59: TDataSource;
    DataSource60: TDataSource;
    DataSource61: TDataSource;
    DataSource62: TDataSource;
    DataSource63: TDataSource;
    DataSource64: TDataSource;
    DataSource65: TDataSource;
    DataSource66: TDataSource;
    DataSource67: TDataSource;
    DataSource68: TDataSource;
    DataSource69: TDataSource;
    DataSource70: TDataSource;
    DataSource71: TDataSource;
    UniConnection1: TUniConnection;
    SQLServerUniProvider1: TSQLServerUniProvider;
    z1: TUniQuery;
    ClientDataSet2: TUniQuery;
    ClientDataSet1: TUniQuery;
    sqlcmd1: TUniQuery;
    sqlcmd11: TUniQuery;
    cmd2: TUniQuery;
    cd13: TUniQuery;
    cd12: TUniQuery;
    cd11: TUniQuery;
    cd17: TUniQuery;
    ds14: TUniQuery;
    ds141: TUniQuery;
    ds142: TUniQuery;
    ds143: TUniQuery;
    ds144: TUniQuery;
    cd1112: TUniQuery;
    cc5: TUniQuery;
    cc4: TUniQuery;
    cc6: TUniQuery;
    cc3: TUniQuery;
    qphh: TUniQuery;
    cc8: TUniQuery;
    cc9: TUniQuery;
    mdbisent: TUniQuery;
    cwsk: TUniQuery;
    qh: TUniQuery;
    qhss: TUniQuery;
    boole15: TUniQuery;
    ds31: TUniQuery;
    ClientDataSet8: TUniQuery;
    ClientDataSet9: TUniQuery;
    selajdata: TUniQuery;
    ds22: TUniQuery;
    cd14: TUniQuery;
    cd15: TUniQuery;
    cd16: TUniQuery;
    cc1: TUniQuery;
    cc7: TUniQuery;
    cc2: TUniQuery;
    bottle5: TUniQuery;
    yjreport: TUniQuery;
    mdzpxc: TUniQuery;
    allmdzpxc: TUniQuery;
    ClientDataSet3: TUniQuery;
    ClientDataSet6: TUniQuery;
    ds1: TUniQuery;
    ds2: TUniQuery;
    ds3: TUniQuery;
    ds13: TUniQuery;
    ds12: TUniQuery;
    ds21: TUniQuery;
    ClientDataSet7: TUniQuery;
    ds5: TUniQuery;
    ds6: TUniQuery;
    ds9: TUniQuery;
    ds7: TUniQuery;
    ds11: TUniQuery;
    ds4: TUniQuery;
    cd22: TUniQuery;
    ds71: TUniQuery;
    cd19: TUniQuery;
    cd18: TUniQuery;
    cd2: TUniQuery;
    cd1: TUniQuery;
    ds111: TUniQuery;
    ss1: TUniQuery;
    ss2: TUniQuery;
    ss3: TUniQuery;
    ss4: TUniQuery;
    ss5: TUniQuery;
    ss6: TUniQuery;
    z2: TUniQuery;
    cs1: TUniQuery;
    cd111: TUniQuery;
    sqlcmd5: TUniQuery;
    sqlcmd8: TUniQuery;
    sqlcmd6: TUniQuery;
    cmd1: TUniQuery;
    sqlcmd4: TUniQuery;
    ds8: TUniQuery;
    sqlcmd3: TUniQuery;
    sqlcmd2: TUniQuery;
    sds1: TUniQuery;
    sds111: TUniQuery;
    lzcx: TUniQuery;
    cmd3: TUniQuery;
    sqlcmd9: TUniQuery;
    sqlcmd7: TUniQuery;
    UniStoredProc1: TUniStoredProc;
    ds10: TDataSource;
    hyyh: TUniQuery;
    UniQuery1: TUniQuery;
    ds15: TDataSource;
    DataSource2: TDataSource;
    UniQuery2: TUniQuery;
    UniQuery3: TUniQuery;
    DataSource3: TDataSource;
    UniQuery4: TUniQuery;
    DataSource72: TDataSource;
    UniQuery5: TUniQuery;
    DataSource73: TDataSource;
    UniQuery6: TUniQuery;
    DataSource74: TDataSource;
    UniQuery7: TUniQuery;
    spdata: TUniQuery;
    DataSource75: TDataSource;
    UniQuery8: TUniQuery;
    UniQuery9: TUniQuery;
    DataSource76: TDataSource;
    UniQuery10: TUniQuery;
    ss7: TUniQuery;
    DataSource77: TDataSource;
    ss8: TUniQuery;
    DataSource78: TDataSource;
    Code: TUniQuery;
    Data_Code: TDataSource;
    Customer: TUniQuery;
    Data_Customer: TDataSource;
    Letter: TUniQuery;
    Data_Letter: TDataSource;
    CustMoney: TUniQuery;
    Data_CustMoney: TDataSource;
    CustMoney_list: TUniQuery;
    Data_CustMoney_list: TDataSource;
    CustBlend: TUniQuery;
    Data_CustBlend: TDataSource;
    UniLGP: TUniQuery;
    Data_LGP: TDataSource;
    UniLOG: TUniQuery;
    Data_LOG: TDataSource;
    UniBill: TUniQuery;
    Data_Bill: TDataSource;
    UniGive: TUniQuery;
    Data_Give: TDataSource;
    UniSqf: TUniQuery;
    Data_Sqf: TDataSource;
    work: TUniQuery;
    SaveDialog1: TSaveDialog;
    ImageList1: TImageList;
    UniTransaction1: TUniTransaction;
    ADOConnection1: TADOConnection;
    banner: TUniQuery;
    bannerDataSource: TDataSource;
    IdHTTP1: TIdHTTP;
    OpenDialog1: TOpenDialog;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SP: TADOStoredProc;
    BottlelistDataSource: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function UpImage:string;
    procedure WriteLog(stype,memo,cuser:string);  //写操作日志 操作类型，操作内容，操作人
  end;

var
  Data1: TData1;
  wxurl :string='';

implementation

uses zcomm,DatasetUnit;

{$R *.dfm}

procedure TData1.DataModuleCreate(Sender: TObject);
var
 connstr:string;
begin
    UniConnection1.Close;
  UniConnection1.Database := zReadString('database', 'DBNAME', 'shangsoft');
  UniConnection1.Server := zReadString('database', 'SERVER', '');
  UniConnection1.Username := Dec(zReadString('database', 'USERNAME', ''));
  UniConnection1.Password := Dec(zReadString('database', 'PASSWORD', ''));
  connstr:='Provider=SQLOLEDB.1;Password='+UniConnection1.Password+';Persist Security Info=False;User ID='+UniConnection1.Username+';'+
    'Initial Catalog='+UniConnection1.Database+';Data Source='+UniConnection1.Server;
  try
    UniConnection1.Open;
    ADOConnection1.Close;
    ADOConnection1.ConnectionString:=connstr;
    ADOConnection1.Connected:=True;
  except
    on E: Exception do
    begin
      ShowMessage(e.Message);
      DatasetForm := TDatasetForm.Create(nil);
      DatasetForm.Edit1.Text := UniConnection1.Server;
      DatasetForm.Edit2.Text := UniConnection1.Database;
      DatasetForm.Edit3.Text := UniConnection1.Username;
      DatasetForm.Edit4.Text := UniConnection1.Password;
      DatasetForm.ShowModal;
    end;
  end;
end;

function TData1.UpImage: string;
var
  res : String;
  ms : TIdMultiPartFormDataStream;
f:string;
begin
  res :='100';
  if Opendialog1.Execute then f:=Opendialog1.FileName;
  if f<>'' then
  begin
    if wxurl<>'' then
    begin
      try
        ms := TIdMultiPartFormDataStream.Create;
        ms.AddFile('file1',f,'');
        IdHTTP1.Request.ContentType := 'multipart/form-data' ;
        res:=IdHTTP1.Post('http://'+trim(wxurl)+'/lib/uplode.php',ms);
      finally
        ms.Free;
      end;
    end
    else res :='400';
  end;
  Result :=res;
end;

procedure TData1.WriteLog(stype, memo, cuser: string);
begin
  if (stype<>'') and (memo<>'') and (cuser<>'') then
  begin
    try
      work.Close;
      work.sql.Text :='insert into tbLog (stype,memo,cuser,cdate) values ('''+stype+''','''+memo+''','''+cuser+''',GETDATE())';
      work.ExecSQL;
      work.Close;
    except
    end;
  end;
end;

end.
