unit uDBJson;

interface
uses SysUtils,Classes,Variants,DB,DBClient,SuperObject;
//type
//TTableJSon = class

//private

const cstFieldType = 'FieldType';
const cstFieldName = 'FieldName';
const cstFieldSize = 'FieldSize';
const cstJsonType = 'JsonType';
const cstRequired = 'Required';
const cstFieldIndex = 'FieldIndex';
const cstCols= 'Cols';
const cstData= 'Data';
//public
   function JSonFromDataSet(DataSet:TDataSet):string;
 // class function CreateFieldByJson(Fields:TFieldDefs;ColsJson:ISuperObject):Boolean;
 // class function ImportDataFromJSon(DataSet:TDataSet;DataJson:ISuperObject):Integer;
//  class function CDSFromJSon(CDS:TClientDataSet;Json:ISuperObject):Boolean;
 // class function GetValue(Json:ISuperObject;const Name:string):Variant;
//  class function CreateJsonValue(Json:ISuperObject;const Name:string;const Value:Variant):Boolean;
  function CreateJsonValueByField(Json:ISuperObject;Field:TField):Boolean;
  // class function GetValue2Field(Field:TField;JsonValue:ISuperObject):Variant;
//end;

implementation
 uses TypInfo,encddecd,zcomm;
{ TTableJSon }

 procedure WriteLog(logStr:String);//写日志文件
var
  LogFilename,files: String;
  LogFile: TextFile;
begin
 try
   if not DirectoryExists(ExtractFilePath(ParamStr(0))+'LOG\') then
       CreateDir(ExtractFilePath(ParamStr(0))+'LOG\');
  files:=FormatDateTime('yyyy-mm-dd', Now)+'.LOG';
  LogFilename:=ExtractFilePath(ParamStr(0))+'LOG\'+files;
  AssignFile(LogFile, LogFilename);
  if FileExists(LogFilename) then Append(LogFile)
  else Rewrite(LogFile);
  Writeln(Logfile,DateTimeToStr(now)+'  '+logStr);
  CloseFile(LogFile);
 except
    on E: Exception do
    begin
      WriteLog('WriteLog：'+e.Message);
    end;
  end
end;

 function CreateJsonValueByField(Json: ISuperObject;
  Field: TField): Boolean;
begin
   Result := False;
   if Field.FieldName='gptm' then
   begin
    Json.O[Field.FieldName] := SO(Field.Value);
    Result := True;
    Exit;
   end;
   if Field Is TDateTimeField then
       Json.O[Field.FieldName] := SO(Field.AsDateTime)
    else if Field is TBlobField then
       Json.S[Field.FieldName] := EncodeString(Field.AsString)
       else    Json.O[Field.FieldName] := SO(Field.Value);
       Result := True;
end;



 function JSonFromDataSet(DataSet: TDataSet): string;
procedure GetFieldTypeInfo(Field:TField;var Fieldtyp,JsonTyp:string);
begin
  Fieldtyp := GetEnumName(TypeInfo(tfieldtype),ord(Field.DataType));
   Delete(Fieldtyp,1,2);
  if Field is TStringField then
    JsonTyp := 'string'
  else
  if Field is TDateTimeField then
    JsonTyp := 'integer'
  else
  if (Field is TIntegerField) or (Field is TLargeintField) then
     JsonTyp := 'integer'
  else if Field is TCurrencyField then
    JsonTyp := 'currency'
  else if Field is TNumericField then
    JsonTyp := 'double'
  else if Field is TBooleanField then
    JsonTyp := 'boolean'
  else      JsonTyp :='variant';
end;
   var
   sj,aj,sj2:ISuperObject;
   i:Integer;
   Fieldtyp,JsonTyp:string;
   List:TStringList;
begin
  try
   sj := SO();//创建列
   aj := SA([]);
   List := TStringList.Create;
    try
      List.Sorted := True;
//     for i := 0 to DataSet.FieldCount - 1 do
//      begin
//        sj2 := SO();
//        GetFieldTypeInfo(DataSet.Fields[i],Fieldtyp,JsonTyp);
//        sj2.S[cstFieldName] := DataSet.Fields[i].FieldName;
//        sj2.S[cstFieldType] := Fieldtyp;
//        sj2.S[cstJsonType] := JsonTyp;
//        sj2.I[cstFieldSize] := DataSet.Fields[i].Size;
//        sj2.B[cstRequired] := DataSet.Fields[i].Required;
//        sj2.I[cstFieldIndex] := DataSet.Fields[i].Index;
//        aj.AsArray.Add(sj2);
//        List.Add(DataSet.Fields[i].FieldName+'='+JsonTyp);
//      end;
       sj.O['Cols'] := aj;    //创建数据集的数据
       DataSet.DisableControls;
       DataSet.First;
       aj := SA([]);
       while not DataSet.Eof do
       begin
           sj2 := SO();
           for i := 0 to DataSet.FieldCount - 1 do
           begin                            //sj2.S[IntToStr(DataSet.Fields[i].Index)] := VarToStrDef(DataSet.Fields[i].Value,'');
             if VarIsNull(DataSet.Fields[i].Value) then
                sj2.O[DataSet.Fields[i].FieldName] := SO('')
             else
             begin
               if DataSet.Fields[i].FieldName<>'imgbase' then
                CreateJsonValueByField(sj2,DataSet.Fields[i]);
//                sj2.O[DataSet.Fields[i].FieldName]:=SO(DataSet.Fields[i].AsString);
             end;
           end;
           aj.AsArray.Add(sj2);
           DataSet.Next;
       end;
         sj.O['ShangchaoData'] := aj;
         Result := aj.AsString;
    finally
             List.Free;
             DataSet.EnableControls;
    end;
  except
    on E: Exception do
    begin
      WriteLog('JSonFromDataSet:' + e.Message);
    end;
  end;
end;




end.
