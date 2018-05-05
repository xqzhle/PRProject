unit zcomm;
interface
uses
  WinSock,Windows,OleCtrls,DateUtils,SysUtils,Dialogs,IniFiles;
type
  TDllRegisterServer=function:HResult; stdcall;
  function GetCpuId(): UINT;      // 获取cpuid
  function GetBuildInfo:string;   //获取版本号
  function LocalIP: String;    //获取本地ip
  function Get_Name:String;    //获取计算机名
  procedure WriteLog(logStr:String);//写日志文件
  procedure WriteLogg(logStr:String);//写日志事件文件
  procedure WriteLoggg(logStr:String);//写日志事件文件
  procedure WriteLogyc(logStr:String);//写日志预测文件
  procedure WriteLogzj(logStr:String);//写日志转接文件
  procedure WriteLogsx(logStr:String);//写日志刷新文件
  procedure WriteLogz(logStr:String);//写日志主线程文件
  procedure zhangregocx(s:string);  //注册ocx控件
  function   CTimeToDateTime(t:double):TDateTime;
  procedure zWriteString(sec,ide,defaults:string);
  procedure zwriteInteger(sec,ide:string;defaults:Integer);
  procedure zwriteBool(sec,ide:string;defaults:Boolean);
  function zReadString(sec,ide,defaults:string):string;
  function zReadInteger(sec,ide:string;defaults:Integer):Integer;
  function zReadBool(sec,ide:string;defaults:Boolean):Boolean;
  function gettimer(const mis:integer):TDateTime;   // 秒转换为时间
  function getsecss(const intime:TDateTime):Integer;  // 时间转换为秒
  function Enc(Str:String):String;
  function Dec(Str:String):String;
  procedure mshowmessage(msg:string);
  function botostr(fin:Boolean):string;
  function gettime:string;

implementation
const
 XorKey:array[0..7] of Byte=($A1,$B7,$AC,$57,$1C,$63,$3B,$81); //字符串加密用

function gettime:string;
begin
  Result:=FormatDateTime('yyyy-mm-dd hh:mm:ss',Now);
end;

function botostr(fin:Boolean):string;
begin
 if fin then Result:='1'
 else Result:='0';
end;

procedure mshowmessage(msg:string);
begin
  ShowMessage(msg);
end;

function Enc(Str:String):String;//字符加密函數 這是用的一個異或加密
var
i,j:Integer;
begin
Result:='';
j:=0;
for i:=1 to Length(Str) do
   begin
     Result:=Result+IntToHex(Byte(Str[i]) xor XorKey[j],2);
     j:=(j+1) mod 8;
   end;
end;

function Dec(Str:String):String;//字符解密函數
var
i,j:Integer;
begin
Result:='';
j:=0;
for i:=1 to Length(Str) div 2 do
   begin
     Result:=Result+Char(StrToInt('$'+Copy(Str,i*2-1,2)) xor XorKey[j]);
     j:=(j+1) mod 8;
   end;
end;

function GetCpuId(): UINT;   // inttostr()
var
  bException: BOOL;
  szCpu: array [0 .. 15] of BYTE;
  uCpuID: UINT;
begin
  Result := 0;
  ZeroMemory(@szCpu, sizeof(szCpu));
  uCpuID := 0;
  bException := False;

  try
    asm
      mov eax, 0
      cpuid
      mov dword ptr szCpu[0], ebx
      mov dword ptr szCpu[4], edx
      mov dword ptr szCpu[8], ecx
      mov eax, 1
      cpuid
      mov uCpuID, edx
    end;
  except
    bException := TRUE;
  end;

  if not bException then
    Result := uCpuID;
end;

procedure zWriteString(sec,ide,defaults:string);
var
 ini:TIniFile;
begin
   ini := TIniFile.Create(extractfilepath(paramstr(0))+'clientconfig.ini');
   ini.WriteString(sec,ide,defaults);
   ini.Destroy;
end;

procedure zwriteInteger(sec,ide:string;defaults:Integer);
var
 ini:TIniFile;
begin
   ini := TIniFile.Create(extractfilepath(paramstr(0))+'clientconfig.ini');
   ini.WriteInteger(sec,ide,defaults);
   ini.Destroy;
end;

procedure zwriteBool(sec,ide:string;defaults:Boolean);
var
 ini:TIniFile;
begin
   ini := TIniFile.Create(extractfilepath(paramstr(0))+'clientconfig.ini');
   ini.WriteBool(sec,ide,defaults);
   ini.Destroy;
end;

function zReadString(sec,ide,defaults:string):string;
var
 ini:TIniFile;
begin
   ini := TIniFile.Create(extractfilepath(paramstr(0))+'clientconfig.ini');
   Result:=ini.ReadString(sec,ide,defaults);
   ini.Destroy;
end;

function zReadInteger(sec,ide:string;defaults:Integer):Integer;
var
 ini:TIniFile;
begin
   ini := TIniFile.Create(extractfilepath(paramstr(0))+'clientconfig.ini');
   Result:= ini.ReadInteger(sec,ide,defaults);
   ini.Destroy;
end;

function zReadBool(sec,ide:string;defaults:Boolean):Boolean;
var
 ini:TIniFile;
begin
   ini := TIniFile.Create(extractfilepath(paramstr(0))+'clientconfig.ini');
   Result:=ini.ReadBool(sec,ide,defaults);
   ini.Destroy;
end;

function gettimer(const mis:integer):TDateTime;
var
a,b,c:integer;
ss:longint;
time:string;
begin
 ss:=mis;
 a:=ss   div   3600;
 b:=(ss-ss   div   3600   *3600)   div   60;
 c:=ss   mod   60;
 time:=inttostr(a)+ ':'+inttostr(b)+ ':'+inttostr(c);
 Result:=strtotime(time);
end;

function getsecss(const intime:TDateTime):Integer;
var
 Hour, Min, Sec: String;
 S: String;
begin
   Result:=0;
   s:=formatDateTime('HH:MM:SS',intime);
   Hour := Copy(S, 1, 2);
  Min := Copy(s, 4, 2);
  Sec := Copy(S, 7, 2);
  Result:=strtoint(hour)*3600+strtoint(min)*60+strtoint(sec);
end;

function   CTimeToDateTime(t:double):TDateTime;
begin
        Result:=(t-1287829000000)/1000000;
        //Result:=incSecond(strtodatetime('1970-01-01 08:00:00'), t);
end;

procedure WriteLog(logStr:String);//写日志文件
var
  LogFilename,files: String;
  LogFile: TextFile;
  AFormat: TFormatSettings;
begin
 try
  AFormat.ShortDateFormat := 'yyyy-mm-dd';
  AFormat.DateSeparator := '-';
  files:=FormatDateTime('yyyy-mm-dd', Now)+'_RW.LOG';
  LogFilename:=ExtractFilePath(ParamStr(0))+'LOG\'+files;
  AssignFile(LogFile, LogFilename);
  if FileExists(LogFilename) then Append(LogFile)
  else Rewrite(LogFile);
//  Writeln(Logfile,DateTimeToStr(now));
//  Writeln(Logfile,logStr);
  Writeln(Logfile,DateTimeToStr(now)+'  '+logStr);
  CloseFile(LogFile);
 except
    on E: Exception do
    begin
      WriteLogz('错误：'+e.Message);
    end;
  end
end;

procedure WriteLogg(logStr:String);//写日志文件
var
  LogFilename,files: String;
  LogFile: TextFile;
  AFormat: TFormatSettings;
begin
 try
  AFormat.ShortDateFormat := 'yyyy-mm-dd';
  AFormat.DateSeparator := '-';
  files:=FormatDateTime('yyyy-mm-dd', Now)+'_HD.LOG';
  LogFilename:=ExtractFilePath(ParamStr(0))+'LOG\'+files;
  AssignFile(LogFile, LogFilename);
  if FileExists(LogFilename) then Append(LogFile)
  else Rewrite(LogFile);
//  Writeln(Logfile,DateTimeToStr(now));
//  Writeln(Logfile,logStr);
  Writeln(Logfile,DateTimeToStr(now)+'  '+logStr);
  CloseFile(LogFile);
 except
    on E: Exception do
    begin
      WriteLogz('错误1：'+e.Message);
    end;
  end
end;

procedure WriteLoggg(logStr:String);//写日志文件
var
  LogFilename,files: String;
  LogFile: TextFile;
  AFormat: TFormatSettings;
begin
 try
  AFormat.ShortDateFormat := 'yyyy-mm-dd';
  AFormat.DateSeparator := '-';
  files:=FormatDateTime('yyyy-mm-dd', Now)+'_CDR.LOG';
  LogFilename:=ExtractFilePath(ParamStr(0))+'LOG\'+files;
  AssignFile(LogFile, LogFilename);
  if FileExists(LogFilename) then Append(LogFile)
  else Rewrite(LogFile);
//  Writeln(Logfile,DateTimeToStr(now));
//  Writeln(Logfile,logStr);
  Writeln(Logfile,DateTimeToStr(now)+'  '+logStr);
  CloseFile(LogFile);
 except
    on E: Exception do
    begin
      WriteLogz('错误11：'+e.Message);
    end;
  end
end;


procedure WriteLogyc(logStr:String);//写日志文件
var
  LogFilename,files: String;
  LogFile: TextFile;
  AFormat: TFormatSettings;
begin
 try
  AFormat.ShortDateFormat := 'yyyy-mm-dd';
  AFormat.DateSeparator := '-';
  files:=FormatDateTime('yyyy-mm-dd', Now)+'_ZJ.LOG';
  LogFilename:=ExtractFilePath(ParamStr(0))+'LOG\'+files;
  AssignFile(LogFile, LogFilename);
  if FileExists(LogFilename) then Append(LogFile)
  else Rewrite(LogFile);
//  Writeln(Logfile,DateTimeToStr(now));
//  Writeln(Logfile,logStr);
  Writeln(Logfile,DateTimeToStr(now)+'  '+logStr);
  CloseFile(LogFile);
 except
    on E: Exception do
    begin
      WriteLogz('错误2：'+e.Message);
    end;
  end
end;

procedure WriteLogzj(logStr:String);//写日志文件
var
  LogFilename,files: String;
  LogFile: TextFile;
  AFormat: TFormatSettings;
begin
 try
  AFormat.ShortDateFormat := 'yyyy-mm-dd';
  AFormat.DateSeparator := '-';
  files:=FormatDateTime('yyyy-mm-dd', Now)+'_ZT.LOG';
  LogFilename:=ExtractFilePath(ParamStr(0))+'LOG\'+files;
  AssignFile(LogFile, LogFilename);
  if FileExists(LogFilename) then Append(LogFile)
  else Rewrite(LogFile);
//  Writeln(Logfile,DateTimeToStr(now));
//  Writeln(Logfile,logStr);
  Writeln(Logfile,DateTimeToStr(now)+'  '+logStr);
  CloseFile(LogFile);
 except
    on E: Exception do
    begin
      WriteLogz('错误3：'+e.Message);
    end;
  end
end;


procedure WriteLogsx(logStr:String);//写日志文件
var
  LogFilename,files: String;
  LogFile: TextFile;
  AFormat: TFormatSettings;
begin
 try
  AFormat.ShortDateFormat := 'yyyy-mm-dd';
  AFormat.DateSeparator := '-';
  files:=FormatDateTime('yyyy-mm-dd', Now)+'_SX.LOG';
  LogFilename:=ExtractFilePath(ParamStr(0))+'LOG\'+files;
  AssignFile(LogFile, LogFilename);
  if FileExists(LogFilename) then Append(LogFile)
  else Rewrite(LogFile);
//  Writeln(Logfile,DateTimeToStr(now));
//  Writeln(Logfile,logStr);
  Writeln(Logfile,DateTimeToStr(now)+'  '+logStr);
  CloseFile(LogFile);
 except
    on E: Exception do
    begin
      WriteLogz('错误4：'+e.Message);
    end;
  end
end;

procedure WriteLogz(logStr:String);//写日志文件
var
  LogFilename,files: String;
  LogFile: TextFile;
  AFormat: TFormatSettings;
begin
 try
  AFormat.ShortDateFormat := 'yyyy-mm-dd';
  AFormat.DateSeparator := '-';
  files:=FormatDateTime('yyyy-mm-dd', Now)+'_Z.LOG';
  LogFilename:=ExtractFilePath(ParamStr(0))+'LOG\'+files;
  AssignFile(LogFile, LogFilename);
  if FileExists(LogFilename) then Append(LogFile)
  else Rewrite(LogFile);
//  Writeln(Logfile,DateTimeToStr(now));
//  Writeln(Logfile,logStr);
  Writeln(Logfile,DateTimeToStr(now)+'  '+logStr);
  CloseFile(LogFile);
 except
    on E: Exception do
    begin
      WriteLogyc('错误5：'+e.Message);
    end;
  end
end;

function GetBuildInfo:string;   //获取版本号
var
    VerInfoSize: DWORD;
    VerInfo: Pointer;
    VerValueSize: DWORD;
    VerValue: PVSFixedFileInfo;
    Dummy: DWORD;
    V1,V2,V3,V4:Word;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then
  begin
    Dummy := GetLastError;
//    Result := 'V 0.0.0.0';
    Result := '0.0.0.0';
  end; {if}
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  Result :=IntToStr(V1) + '.'
    + IntToStr(V2);// + '.'
//    + IntToStr(V3) + '.'
//    + IntToStr(V4);
  FreeMem(VerInfo, VerInfoSize);
end;

function LocalIP: String;
type
  TaPInAddr = Array[0..10] of PInAddr;
  PaPInAddr = ^TaPInAddr;

var
  phe: PHostEnt;
  pptr: PaPInAddr;
  Buffer: Array[0..63] of AnsiChar;
  i: Integer;
  GInitData: TWSAData;
begin
  WSAStartup($101, GInitData);
  Result := '';
  GetHostName(Buffer, SizeOf(Buffer));
  phe := GetHostByName(buffer);
  if phe = nil then Exit;
  pPtr := PaPInAddr(phe^.h_addr_list);
  i := 0;
  while pPtr^[i] <> nil do
  begin
    Result := inet_ntoa(pptr^[i]^);
    Inc(i);
  end;
  WSACleanup;
end;

procedure zhangregocx(s:string);
var//注册ＯＣＸ控件
  OCXHWD: THandle ;
  RegFun: TDllRegisterServer ;
begin
   try
    OCXHWD := LoadLibrary(PChar(s));
    RegFun:=GetProcAddress(OCXHWD,'DllRegisterServer');
    if RegFun <> 0 then
    begin
      WriteLog('控件:'+s+'注册失败');
      exit ;
    end;
      //Application.MessageBox('注册成功！', '警告', MB_OK +
      //MB_ICONINFORMATION);
  finally
    FreeLibrary(OCXHWD );
  end;
end;


function Get_Name:String;
var
ComputerName: array[0..MAX_COMPUTERNAME_LENGTH+1] of char;
Size: Cardinal;
begin
result:='';
Size := MAX_COMPUTERNAME_LENGTH+1;
GetComputerName(ComputerName, Size);
Result:=StrPas(ComputerName);
end;
end.
