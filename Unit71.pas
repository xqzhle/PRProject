unit Unit71;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls,cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxRibbon,dxRibbonForm,AdvSmoothMessageDialog, StdCtrls, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TForm71 = class(TdxRibbonForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label11: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form71: TForm71;

implementation

uses
  DbUnit, MainUnit;    //, datecomm


{$R *.dfm}
var
 secok:Boolean=False;
 gpbh:string;

procedure TForm71.Button1Click(Sender: TObject);
var
 bisentids,str:string;
 list:TStringList;
 I:Integer;
begin
    if Edit5.Text='' then
    begin
      ShowSmoothMessage('请输入收款金额');
      exit;
    end;
    if Edit4.Text='' then
    begin
      ShowSmoothMessage('请输入押金单号');
      exit;
    end;
//      if gpbh='' then
//    begin
//      ShowSmoothMessage('请输入钢瓶编号并回车');
//      exit;
//    end;
     if Edit1.Text='' then
    begin
      ShowSmoothMessage('请输入客户名称');
      exit;
    end;
     if Edit8.Text='0' then
    begin
      ShowSmoothMessage('请读取或输入押金瓶');
      exit;
    end;
//   if (secok) then // (gpbh<>'') and
//   begin
     with Data1.sqlcmd1 do
     begin                      //usName
       close;
       SQL.Text := 'select id from tbskbottle where gqsn='''+Edit4.Text+''' ';
       Open;
       if not IsEmpty then
       begin
         ShowSmoothMessage('押金单号已存在,请重新输入');
         Edit4.Clear;
         edit4.SetFocus;
         Exit;
       end;
       Close;
       SQL.Text:='INSERT INTO tbskbottle (shopid,crename,credate,name,barcode,gqsn,code,money,memo,sl,stype)'+
         ' values ('''+shopid+''','''+usname+''',GETDATE(),'''+edit1.Text+''','''+edit2.Text+''','''+edit4.Text+''','''+gpbh+''''+
         ' ,'''+edit5.Text+''','''+combobox1.Text+''','''+Edit8.Text+''',''0'')';
       try
          ExecSQL;
//          str :=Edit4.Text+'('+Edit8.Text+')'+' ';;
//          Data1.sds111.Close;
//          Data1.sds111.SQL.Text:='update tbCustomer_Info set kfsn=kfsn+'''+str+''' where barcode='''+Edit2.Text+''' ';
//          Data1.sds111.ExecSQL;
//          Data1.sds111.Close;
//          Data1.sds111.SQL.Text:='select max(bisentid) as maxid from tbisent where optdate>='''+FormatDateTime('yyyy-mm-dd' ,Now)+''' ';
//          Data1.sds111.Open;
//          if  Data1.sds111.FieldByName('maxid').AsString<>'' then
//          begin
//             str:=Data1.sds111.FieldByName('maxid').AsString;
//             bisentids:='SN'+FormatDateTime('yymmdd' ,Now)+inttostr(strtoint(copy(str,9,6))+1)
//          end
//          else   begin
//             bisentids:='SN'+FormatDateTime('yymmdd' ,Now)+'100001';
//          end;
//          Data1.sds111.Close;
//          Data1.sds111.SQL.Text:='INSERT INTO tbisentprice (bisentid,pricename,sl,dw,dj,yfmoney,smoney,money,priceid)'+
//             ' VALUES('''+bisentids+''',''收取押金'','''+Edit8.Text+''',''项'','''+edit5.Text+''',''0'',''0'','''+edit5.Text+''',''1'')';
//          Data1.sds111.ExecSQL;
//          Data1.sds111.Close;
//          Data1.sds111.SQL.Text:='INSERT INTO tbisent (bisentid,shopid,shopname,sl,status,hmoney,yhmoney,smoney,money,corpname,corpid,optid,pddate,optdate,hddate)'+
//             ' VALUES('''+bisentids+''','''+shopid+''','''+shopaa+''','''+Edit8.Text+''',''1'','''+edit5.Text+''',''0'',''0'','''+edit5.Text+''','''+edit1.Text+''','''+edit2.Text+''', '+
//             ' '''+usname+''','''+datetimetostr(sdatetime)+''','''+datetimetostr(sdatetime)+''','''+datetimetostr(sdatetime)+''' )';
//          Data1.sds111.ExecSQL;
        if gpbh<>'' then
        begin
//          Data1.sds111.Close;
//          Data1.sds111.SQL.Text:='select id from tbisent where bisentid='''+bisentids+''' ';
//          Data1.sds111.Open;
//          if not Data1.sds111.IsEmpty then
//          begin
//            Fid := Data1.sds111.FieldByName('id').AsString;
//          end;
         try
           List := TStringList.Create;
           List.CommaText := gpbh;
           for I := 0 to List.Count - 1 do
           begin
             str:=list[I];
             if str='' then Break;
             with Data1.sqlcmd1 do
             begin
               Close;
               SQL.Text:='delete from tb_khgp where gptm='''+str+''' ';  //更新客户瓶记录 ,bistid  ,'''+Fid+'''
               ExecSQL;
               Close;
               sql.Text:='insert into tb_khgp (gptm,khbh,cuser,cdate,shopid) values ('''+str+''','''+edit2.Text+''','+
                  ' '''+usname+''',GETDATE(),'''+shopid+''') ';
               ExecSQL;
             end;
           end;
         finally
           list.Free;
         end;
        end;
          ShowSmoothMessage('收款成功');
          self.Close;
       except
         on E:Exception do
         begin
           ShowSmoothMessage('收款失败:'+e.Message);
         end;
//         Data1.sds111.Close;
//         Data1.sds111.SQL.Text:='delete from  tbisent where bisentid='''+bisentids+''' ';
//         Data1.sds111.ExecSQL;
//         Data1.sds111.Close;
//         Data1.sds111.SQL.Text:='delete from  tbisentprice where bisentid='''+bisentids+''' ';
//         Data1.sds111.ExecSQL;
       end;
       Close;
     end;
//   end
//   else ShowMessage('请输入钢瓶编号并回车');
end;

procedure TForm71.Button2Click(Sender: TObject);
begin
    close;
end;

procedure TForm71.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9','.',#8,#13]) then
    key:=#0;
end;

procedure TForm71.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
   begin
     if edit6.text='' then  Exit;
     Data1.sqlcmd1.Close;
     Data1.sqlcmd1.SQL.Text:='Select a.ScrapDate as ScrapDate,C.spec_name as spec_name,a.Bottleid as Bottleid  from tbBottle_Dossier a   '+
      ' left join  tbBottle_SPEC c on a.specid=c.spec_id  Where a.Bottlebar='''+trim(Edit6.Text)+''' or a.Bottleid='''+trim(Edit6.Text)+''' or a.gptm='''+trim(Edit6.Text)+'''';
     Data1.sqlcmd1.Open;
     if Data1.sqlcmd1.IsEmpty then
     begin
       ShowSmoothMessage('钢瓶条码不存在');
       edit6.Clear;
       Edit6.SetFocus;
       exit;
     end
     else
     begin
        if gpbh='' then
        begin
          gpbh := Data1.sqlcmd1.FieldByName('Bottleid').AsString;
          Edit8.Text:='1';
        end
        else
        begin
          if Pos(Data1.sqlcmd1.FieldByName('Bottleid').AsString, gpbh) > 0 then
          begin
            ShowSmoothMessage('已扫描过该钢瓶！');
            Exit;
          end
          else
          begin
            gpbh := gpbh+','+Data1.sqlcmd1.FieldByName('Bottleid').AsString;
            try
              Edit8.Text:=IntToStr(StrToInt(Edit8.Text)+1);
            except

            end;
          end;
        end;
//        Edit11.Text:='客户押瓶:'+gpbh;
        Edit6.Clear;
        edit7.text := Data1.sqlcmd1.FieldByName('ScrapDate').AsString; // 报废日期
        ComboBox1.text := Data1.sqlcmd1.FieldByName('spec_name').AsString; // 钢瓶类型
        secok:=True;
     end;
   end;
end;

procedure TForm71.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then
    key:=#0;
end;

procedure TForm71.FormShow(Sender: TObject);
begin
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  ComboBox1.Text := '';
  Edit8.Text :='0' ;
  gpbh:='';
end;

end.
