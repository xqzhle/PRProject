unit PRRead_TLBUnit;

interface
 uses
  Windows,Messages,SysUtils,bass,Dialogs,TlHelp32;
const
 Openone  = 1;
 OpenTwo  = 2;
 CloseAll = 3;
 ReadCard = 4;
 WM_PRMSG=WM_USER+200;
 WM_ZHPRMSG=WM_USER+400;
 WM_WRITECARD=WM_USER+800;
 PRDllname='ZHPRReadCard.dll';

 function OpenRead:Boolean;stdcall;external PRDllname;
 function CloseRead:Boolean;stdcall;external PRDllname;
 function readinit(hand:hwnd;ipaddress:string;port:Integer):Boolean;stdcall;external PRDllname;
 function Openonejdq:Boolean;
 function Opentwojdq:Boolean;
 function Closealljdq:Boolean;
 function StartRead:Boolean;
 function sendmsg(const msg:Integer):Boolean;
 function sendCard(const Card:string):Boolean;
 function ClosePRExe:Boolean;
 function PlayMusic(const types:Integer):Boolean;
 function KillTask(ExeFileName: string): Integer;

implementation

function KillTask(ExeFileName: string): Integer;   //����ָ������
const
 PROCESS_TERMINATE = $0001;
var
 ContinueLoop: BOOL;
 FSnapshotHandle: THandle;
 FProcessEntry32: TProcessEntry32;
begin
 Result := 0;
 FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
 FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
 ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

 while Integer(ContinueLoop) <> 0 do
 begin
   if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
     UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
     UpperCase(ExeFileName))) then
     Result := Integer(TerminateProcess(
       OpenProcess(PROCESS_TERMINATE,
       BOOL(0),
       FProcessEntry32.th32ProcessID),
       0));
   ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
 end;
 CloseHandle(FSnapshotHandle);
end;


function PlayMusic(const types:Integer):Boolean;
var
 Mp3Path: AnsiString;
 hs: HSTREAM; {����� û�ҵ���ƿ���ݣ�ȷ���Ѿ����}
begin
//   ShowMessage('22');
   case types of
    0:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\w1.mp3');
    1:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\1.wav');
    2:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\w6.mp3');
    3:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\3.wav');
    4:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\w7.mp3');  //����ʧ��
    5:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\��ƿ�Ѿ�����������ɨ��.wav');
    6:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\w13.mp3');//û�ҵ���ƿ����
    7:Mp3Path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\����.wav');
    8:Mp3Path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\���ɹ�.wav');
    9:Mp3Path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\w5.mp3'); //û�ҵ���ƿ����
    10:Mp3Path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\wck.wav'); //��δ����
   end;
   if not FileExists(Mp3Path) then
   begin
     Result:=False;
     showmessage('û�ҵ��ļ�')  ;
      exit;
   end;

    BASS_StreamFree(hs); {��������ļ���, ��Ҫ�ͷ���}
     hs := BASS_StreamCreateFile(False, PAnsiChar(Mp3Path), 0, 0, 0);
    BASS_ChannelPlay(hs, False); {���� 1 �������; ���� 2 ���� True ÿ�ζ����ͷ����}
  {����������}

   Result:=True;
end;

function ClosePRExe:Boolean;
begin
  SendMessage(FindWindow(nil,'�麣��ȼ��д��ͨѶ�м��'),WM_CLOSE,0,0);
end;

function sendmsg(const msg:Integer):Boolean;
 var
  h: HWND;
  Size: Integer;
  CopyDataStruct: TCopyDataStruct;
  ss:string;
begin
  h := FindWindow(nil, '�麣��ȼ��д��ͨѶ�м��'); { ���������Ŀ�괰�� }
  ss:=inttostr(msg);
  if h > 0 then
  begin
    //Size := ByteLength(Edit1.Text) + 2;   { ����������ֽ����ں���� #0 }
    CopyDataStruct.lpData := @ss[1];; { Ҫ���͵��ַ���, #0 ��ʾ PChar ����}
    CopyDataStruct.dwData := WM_ZHPRMSG;            { ָ����Ϣ���� }
    CopyDataStruct.cbData := length(ss)* sizeof(ansichar)+1;                   { ָ��Ҫ���͵����ݵĴ�С }
    SendMessage(h, WM_COPYDATA, 0, LPARAM(@CopyDataStruct)); { ���� }
    Result:=True;
  end
  else Result:=False;
end;

function sendCard(const Card:String):Boolean;
var
  h: HWND;
  ds:   TCopyDataStruct;
  cDataParam: TCopyDataStruct;
  msg:ansistring;
begin
   msg:=Card;
   h := FindWindow(nil, PChar('�麣��ȼ��д��ͨѶ�м��'));//''); { ���������Ŀ�괰�� }
    if h > 0 then
    begin

     cDataParam.dwData :=WM_WRITECARD;
     cDataParam.cbData := length(msg)* sizeof(char)+1;
     cDataParam.lpData := PChar(msg);
     SendMessage(h, WM_COPYDATA,0, LPARAM(@cDataParam)) ;
     Result:=True;
    end
    else Result:=False;

end;

 function Openonejdq:Boolean;
 begin
  if sendmsg(Openone) then
     Result:=True
   else Result:=False;
 end;
 function Opentwojdq:Boolean;
 begin
  if   sendmsg(OpenTwo) then
   Result:=True
   else Result:=False;
 end;
 function Closealljdq:Boolean;
 begin
  if  sendmsg(CloseAll) then
   Result:=True
   else Result:=False;
 end;
 function StartRead:Boolean;
 begin
   if sendmsg(ReadCard) then
     Result:=True
   else Result:=False;
 end;


end.
