unit Unit72;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,dxRibbonForm,AdvSmoothMessageDialog,AdvStyleIF, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbon,
  StdCtrls, dxSkinsCore, dxSkinsDefaultPainters, ComCtrls;

type
  TForm72 = class(TdxRibbonForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Label1: TLabel;
    Label2: TLabel;
    dbedit1: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Edit6: TEdit;
    Label4: TLabel;
    Edit7: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Edit8: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form72: TForm72;

implementation

uses DbUnit, zcomm, MainUnit;

{$R *.dfm}

procedure TForm72.Button1Click(Sender: TObject);
var
 ss,bisentids,str:string;
begin
  if edit6.text='' then
   begin
     ShowSmoothMessage('请输入钢瓶数量');
     exit;
   end;
   if combobox1.text='' then
   begin
     ShowSmoothMessage('请选择钢瓶类型');
     exit;
   end;
   if edit3.text='' then
   begin
     ShowSmoothMessage('请输入金额');
     exit;
   end;
   try
      if RadioButton1.Checked then
      begin
        ss:='1';  //  收验瓶费
//       Data1.cmd1.Close;
//       Data1.cmd1.SQL.Text:='update tbCustomer_Info set Remark=remark+'''+ datetostr(sdatetime)+' 收取验瓶费：'+edit3.text+','+''' where barcode='''+dbedit1.Text+''' ';
//       Data1.cmd1.ExecSQL;     //写入客户资料的备注栏
      end
      else  ss:='2';  //收租管费
      {
         Data1.sds111.Close;
         Data1.sds111.SQL.Text:='select max(bisentid) as maxid from tbisent where optdate>='''+FormatDateTime('yyyy-mm-dd' ,Now)+''' ';
         Data1.sds111.Open;
         if  Data1.sds111.FieldByName('maxid').AsString<>'' then
         begin
             str:=Data1.sds111.FieldByName('maxid').AsString;
             bisentids:='SN'+FormatDateTime('yymmdd' ,Now)+inttostr(strtoint(copy(str,9,6))+1)
         end
         else   begin
             bisentids:='SN'+FormatDateTime('yymmdd' ,Now)+'100001';
         end;
         Data1.sds111.Close;
         Data1.sds111.SQL.Text:='INSERT INTO tbisentprice (bisentid,pricename,sl,dw,dj,yfmoney,smoney,money,priceid)'+
         ' VALUES('''+bisentids+''','''+ss+''',''1'',''项'','''+edit3.Text+''',''0'',''0'','''+edit3.Text+''',''1'')';
         Data1.sds111.ExecSQL;
         Data1.sds111.Close;
         Data1.sds111.SQL.Text:='INSERT INTO tbisent (bisentid,shopid,shopname,sl,status,hmoney,yhmoney,smoney,money,corpid,corpname,corptypename,optid,pddate,optdate,hddate)'+
         ' VALUES('''+bisentids+''','''+edit1.Text+''','''+edit2.Text+''',''1'',''1'','''+edit3.Text+''',''0'',''0'','''+edit3.Text+''','''+dbedit1.Text+''','''+edit4.Text+''','''+edit5.Text+''','+
         ' '''+usname+''','''+datetimetostr(sdatetime)+''','''+datetimetostr(sdatetime)+''','''+datetimetostr(sdatetime)+''' )';
         Data1.sds111.Execute;   }
         Data1.sds111.Close;                //写收款记录     bottlenf,    '''+edit7.Text+''',    shopname ,'''+edit2.Text+'''
//         Data1.sds111.SQL.Text:='INSERT INTO tbypfsk (corpid,corpname,shopid,shopname,bottletype,bottlesl,credate,crename,skmoney) '+
         Data1.sds111.SQL.Text:='INSERT INTO tbskbottle (barcode,name,shopid,memo,sl,credate,crename,money,stype,bfdate)'+
         'values ('''+dbedit1.Text+''','''+edit4.Text+''','''+edit1.Text+''','''+combobox1.Text+''','''+edit6.Text+''', '+
         ' '''+gettime+''','''+usname+''','''+edit3.text+''','''+ss+''','''+DateToStr(DateTimePicker1.Date)+''')';
         data1.sds111.ExecSQL;
         ShowSmoothMessage('收款成功！');
         Self.Close;
   except
     ShowSmoothMessage('收款失败！');
//     Data1.sds111.Close;
//     Data1.sds111.SQL.Text:='delete from  tbisent where bisentid='''+bisentids+''' ';
//     Data1.sds111.ExecSQL;
//     Data1.sds111.Close;
//     Data1.sds111.SQL.Text:='delete from  tbisentprice where bisentid='''+bisentids+''' ';
//     Data1.sds111.ExecSQL;
    end;
end;

procedure TForm72.Button2Click(Sender: TObject);
begin
    Close;
end;

procedure TForm72.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9','.',#8,#13]) then
    key:=#0;
end;

procedure TForm72.FormCreate(Sender: TObject);
begin
   ComboBox1.Clear;
    Data1.cmd1.Close;
    Data1.cmd1.SQL.Text:='select spec_name from tbBottle_Spec ORDER BY id DESC ';
    Data1.cmd1.Open;
    if not Data1.cmd1.IsEmpty then
    while not Data1.cmd1.Eof do
    begin
      ComboBox1.Items.Add(Data1.cmd1.FieldByName('spec_name').AsString);
      Data1.cmd1.Next;
    end;
end;

procedure TForm72.FormShow(Sender: TObject);
begin
    edit3.Clear;
    Edit7.Clear;
    Edit6.Text:='1';
    data1.cmd1.Close;
    ComboBox1.ItemIndex:=-1;
    RadioButton2.Checked := True;
    DateTimePicker1.Date :=now+365;
end;

end.
