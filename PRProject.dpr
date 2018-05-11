program PRProject;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  ComapUnit in 'ComapUnit.pas' {ComapFrame: TFrame},
  DbUnit in 'DbUnit.pas' {Data1: TDataModule},
  SpLxUnit in 'SpLxUnit.pas' {SpLxiFrame: TUniFrame},
  SpXxUnit in 'SpXxUnit.pas' {SpXxFrame: TUniFrame},
  GpjUnit in 'GpjUnit.pas' {GpjFrame: TUniFrame},
  MdJgUnit in 'MdJgUnit.pas' {MdJgFrame: TUniFrame},
  DjYfUnit in 'DjYfUnit.pas' {DjYfFrame: TUniFrame},
  KhLxUnit in 'KhLxUnit.pas' {KhLxFrame: TUniFrame},
  DqSzUnit in 'DqSzUnit.pas' {DqSzFrame: TUniFrame},
  KhXxUnit in 'KhXxUnit.pas' {KhXxForm},
  KhEditUnit in 'KhEditUnit.pas' {KhEditForm},
  TsYhUnit in 'TsYhUnit.pas' {TsYhFrame: TUniFrame},
  SelKhUnit in 'SelKhUnit.pas' {SelKhForm},
  GsKhYhUnit in 'GsKhYhUnit.pas' {GsKhYhFrame: TUniFrame},
  DeptInfoUnit in 'DeptInfoUnit.pas' {DeptInfoFrame: TUniFrame},
  GwInfoUnit in 'GwInfoUnit.pas' {GwInfoFrame: TUniFrame},
  YgInfoUnit in 'YgInfoUnit.pas' {YgInfoFrame: TUniFrame},
  CallCentUnit in 'CallCentUnit.pas' {CallCentForm},
  UpwxUnit in 'UpwxUnit.pas' {UpwxForm},
  WxUnit in 'WxUnit.pas' {WxForm},
  SaveBXUnit in 'SaveBXUnit.pas' {SaveBXForm},
  Unit30 in 'Unit30.pas' {Form30},
  Unit31 in 'Unit31.pas' {Form31},
  Unit33 in 'Unit33.pas' {Form33},
  Unit32 in 'Unit32.pas' {Form32},
  Unit41 in 'Unit41.pas' {Form41},
  Unit77 in 'Unit77.pas' {Form77},
  Unit28 in 'Unit28.pas' {Form28},
  SqgUnit in 'SqgUnit.pas' {SqgForm},
  Unit29 in 'Unit29.pas' {Form29},
  CustwaingUnit in 'CustwaingUnit.pas' {CustwaingForm},
  Unit89 in 'Unit89.pas' {Form89},
  Unit88 in 'Unit88.pas' {Form88},
  ajjpegUnit in 'ajjpegUnit.pas' {ajjpegForm},
  SqgUnitpas in 'SqgUnitpas.pas' {Form94},
  SelajUnit in 'SelajUnit.pas' {SelajForm},
  Unit96 in 'Unit96.pas' {Form96},
  Unit71 in 'Unit71.pas' {Form71},
  Unit72 in 'Unit72.pas' {Form72},
  PowerUnit in 'PowerUnit.pas' {PowerForm},
  UserInfoUnit in 'UserInfoUnit.pas' {UserInfoFrame: TUniFrame},
  MdPgUnit in 'MdPgUnit.pas' {MdPgFrame: TUniFrame},
  Unit38 in 'Unit38.pas' {Form38},
  Unit57 in 'Unit57.pas' {Form57},
  MdHdUnit in 'MdHdUnit.pas' {MdHdFrame: TUniFrame},
  DdListUnit in 'DdListUnit.pas' {DdListFrame: TUniFrame},
  BottleTypeUnit in 'BottleTypeUnit.pas' {BottleTypeFrame: TUniFrame},
  BottleSpecUnit in 'BottleSpecUnit.pas' {BottleSpecFrame: TUniFrame},
  BottleClassUnit in 'BottleClassUnit.pas' {BottleClassFrame: TUniFrame},
  BottleWorkUnit in 'BottleWorkUnit.pas' {BottleWorkFrame: TUniFrame},
  LPGUnit in 'LPGUnit.pas' {LPGForm},
  CustBillUnit in 'CustBillUnit.pas' {CustBillForm},
  LogUnit in 'LogUnit.pas' {LogForm},
  CodeUnit in 'CodeUnit.pas' {CodeForm},
  CustBlendUnit in 'CustBlendUnit.pas' {CustBlendForm},
  CustMoneyUnit in 'CustMoneyUnit.pas' {CustMoneyForm},
  EditCustMoneyUnit in 'EditCustMoneyUnit.pas' {EditCustMoneyForm},
  LetterUnit in 'LetterUnit.pas' {LetterForm},
  EditLetterUnit in 'EditLetterUnit.pas' {EditLetterForm},
  GiveUnitpas in 'GiveUnitpas.pas' {GiveForm},
  BottleInsUnit in 'BottleInsUnit.pas' {BottleInsFrame: TUniFrame},
  PzUnit in 'PzUnit.pas' {PzForm},
  DtelUnit in 'DtelUnit.pas' {DtelForm},
  XstypeUnit in 'XstypeUnit.pas' {XstypeForm},
  YwyUnit in 'YwyUnit.pas' {YwyForm},
  Unit54 in 'Unit54.pas' {Form54},
  QzUnit in 'QzUnit.pas' {QzFrame: TUniFrame},
  CarUnit in 'CarUnit.pas' {CarForm},
  GMoneyUnit in 'GMoneyUnit.pas' {GMoneyForm},
  khgpUnit in 'khgpUnit.pas' {khgpForm},
  MdgpUnit in 'MdgpUnit.pas' {MdgpForm},
  LzUnit in 'LzUnit.pas' {lzForm},
  DUnitpas in 'DUnitpas.pas' {DForm},
  BottleinfoUnit in 'BottleinfoUnit.pas' {BottleInfoForm},
  BottleListUnit in 'BottleListUnit.pas' {BottleListFrame: TUniFrame},
  YpDayUnit in 'YpDayUnit.pas' {YpDaycFrame: TUniFrame},
  YpTjUnit in 'YpTjUnit.pas' {YpTjFrame: TUniFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title:='普燃配送管理平台';
  Application.CreateForm(TData1, Data1);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TKhEditForm, KhEditForm);
  Application.CreateForm(TSelKhForm, SelKhForm);
  Application.CreateForm(TCallCentForm, CallCentForm);
  Application.CreateForm(TUpwxForm, UpwxForm);
  Application.CreateForm(TWxForm, WxForm);
  Application.CreateForm(TSaveBXForm, SaveBXForm);
  Application.CreateForm(TForm30, Form30);
  Application.CreateForm(TForm31, Form31);
  Application.CreateForm(TForm33, Form33);
  Application.CreateForm(TForm32, Form32);
  Application.CreateForm(TForm41, Form41);
  Application.CreateForm(TForm77, Form77);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TSqgForm, SqgForm);
  Application.CreateForm(TForm29, Form29);
  Application.CreateForm(TCustwaingForm, CustwaingForm);
  Application.CreateForm(TForm89, Form89);
  Application.CreateForm(TForm88, Form88);
  Application.CreateForm(TajjpegForm, ajjpegForm);
  Application.CreateForm(TForm94, Form94);
  Application.CreateForm(TSelajForm, SelajForm);
  Application.CreateForm(TForm96, Form96);
  Application.CreateForm(TForm71, Form71);
  Application.CreateForm(TForm72, Form72);
  Application.CreateForm(TPowerForm, PowerForm);
  Application.CreateForm(TForm38, Form38);
  Application.CreateForm(TForm57, Form57);
  Application.CreateForm(TLPGForm, LPGForm);
  Application.CreateForm(TCustBillForm, CustBillForm);
  Application.CreateForm(TLogForm, LogForm);
  Application.CreateForm(TCodeForm, CodeForm);
  Application.CreateForm(TCustBlendForm, CustBlendForm);
  Application.CreateForm(TCustMoneyForm, CustMoneyForm);
  Application.CreateForm(TEditCustMoneyForm, EditCustMoneyForm);
  Application.CreateForm(TLetterForm, LetterForm);
  Application.CreateForm(TEditLetterForm, EditLetterForm);
  Application.CreateForm(TGiveForm, GiveForm);
  Application.CreateForm(TDtelForm, DtelForm);
  Application.CreateForm(TXstypeForm, XstypeForm);
  Application.CreateForm(TYwyForm, YwyForm);
  Application.CreateForm(TForm54, Form54);
  Application.CreateForm(TCarForm, CarForm);
  Application.CreateForm(TGMoneyForm, GMoneyForm);
  Application.CreateForm(TkhgpForm, khgpForm);
  Application.CreateForm(TMdgpForm, MdgpForm);
  Application.CreateForm(TlzForm, lzForm);
  Application.CreateForm(TDForm, DForm);
  Application.CreateForm(TBottleInfoForm, BottleInfoForm);
  Application.CreateForm(TPzForm, PzForm);
  Application.Run;
end.
