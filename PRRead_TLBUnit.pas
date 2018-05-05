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

function KillTask(ExeFileName: string): Integer;   //结束指定进程
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
 hs: HSTREAM; {流句柄 没找到重瓶数据，确认已经入库}
begin
//   ShowMessage('22');
   case types of
    0:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\w1.mp3');
    1:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\1.wav');
    2:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\w6.mp3');
    3:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\3.wav');
    4:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\w7.mp3');  //保存失败
    5:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\钢瓶已经存在请重新扫描.wav');
    6:mp3path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\w13.mp3');//没找到重瓶数据
    7:Mp3Path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\催气.wav');
    8:Mp3Path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\新派工.wav');
    9:Mp3Path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\w5.mp3'); //没找到空瓶数据
    10:Mp3Path:=AnsiString(ExtractFilePath(ParamStr(0))+'Music\wck.wav'); //刚未出库
   end;
   if not FileExists(Mp3Path) then
   begin
     Result:=False;
     showmessage('没找到文件')  ;
      exit;
   end;

    BASS_StreamFree(hs); {如果已有文件打开, 先要释放它}
     hs := BASS_StreamCreateFile(False, PAnsiChar(Mp3Path), 0, 0, 0);
    BASS_ChannelPlay(hs, False); {参数 1 是流句柄; 参数 2 若是 True 每次都会从头播放}
  {建立播放流}

   Result:=True;
end;

function ClosePRExe:Boolean;
begin
  SendMessage(FindWindow(nil,'珠海普燃读写器通讯中间件'),WM_CLOSE,0,0);
end;

function sendmsg(const msg:Integer):Boolean;
 var
  h: HWND;
  Size: Integer;
  CopyDataStruct: TCopyDataStruct;
  ss:string;
begin
  h := FindWindow(nil, '珠海普燃读写器通讯中间件'); { 按标题查找目标窗口 }
  ss:=inttostr(msg);
  if h > 0 then
  begin
    //Size := ByteLength(Edit1.Text) + 2;   { 多出的两个字节用于后面的 #0 }
    CopyDataStruct.lpData := @ss[1];; { 要发送的字符串, #0 表示 PChar 结束}
    CopyDataStruct.dwData := WM_ZHPRMSG;            { 指定消息类型 }
    CopyDataStruct.cbData := length(ss)* sizeof(ansichar)+1;                   { 指定要发送的数据的大小 }
    SendMessage(h, WM_COPYDATA, 0, LPARAM(@CopyDataStruct)); { 发送 }
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
   h := FindWindow(nil, PChar('珠海普燃读写器通讯中间件'));//''); { 按标题查找目标窗口 }
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
