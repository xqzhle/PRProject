unit Unit28;

interface

uses
  Windows, Messages,  SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame,
  StdCtrls, Grids, AcRptUtils,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, ImgList, AdvGlowButton, ExtCtrls,
  AdvPanel, ComCtrls, AdvGroupBox, AdvOfficeButtons, OleServer, DateUtils,
  AdvStyleIF, AcReport_TLB, AdvSmoothMessageDialog, Menus, AdvMenus,  AcReport_TLB_Int;

type
  TForm28 = class(TUniFrame)
    AdvPanel6: TAdvPanel;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    ImageList3: TImageList;
    AdvPanel2: TAdvPanel;
    DBAdvGrid1: TDBAdvGrid;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label8: TLabel;
    AdvGlowButton4: TAdvGlowButton;
    AdvGroupBox1: TAdvGroupBox;
    AdvOfficeRadioButton1: TAdvOfficeRadioButton;
    AdvOfficeRadioButton2: TAdvOfficeRadioButton;
    AdvOfficeRadioButton3: TAdvOfficeRadioButton;
    AdvOfficeRadioButton4: TAdvOfficeRadioButton;
    AdvOfficeRadioButton5: TAdvOfficeRadioButton;
    AdvOfficeRadioButton6: TAdvOfficeRadioButton;
    AcRptEngine1: TAcRptEngine;
    AdvGlowButton2: TAdvGlowButton;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    Label11: TLabel;
    ComboBox1: TComboBox;
    AdvGroupBox2: TAdvGroupBox;
    AdvGroupBox3: TAdvGroupBox;
    AdvGlowButton3: TAdvGlowButton;
    Edit1: TEdit;
    AdvOfficeRadioButton7: TAdvOfficeRadioButton;
    AdvOfficeRadioButton8: TAdvOfficeRadioButton;
    AdvOfficeRadioButton9: TAdvOfficeRadioButton;
    AdvOfficeRadioButton10: TAdvOfficeRadioButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGroupBox4: TAdvGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    AdvGlowButton8: TAdvGlowButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Label14: TLabel;
    Edit4: TEdit;
    Label2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    AdvPopupMenu1: TAdvPopupMenu;
    N1: TMenuItem;
    Label19: TLabel;
    AdvGlowButton9: TAdvGlowButton;
    sSaveDialog1: TSaveDialog;
    Label10: TLabel;
    Label9: TLabel;
    AdvOfficeRadioButton11: TAdvOfficeRadioButton;
    lbl1: TLabel;
    edt1: TEdit;
    AdvGroupBox5: TAdvGroupBox;
    Label17: TLabel;
    ComboBox2: TComboBox;
    AdvGlowButton10: TAdvGlowButton;
    Edit5: TEdit;
    Label18: TLabel;
    ComboBox3: TComboBox;
    AdvGroupBox6: TAdvGroupBox;
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure DBAdvGrid1DblClick(Sender: TObject);
    procedure edt1Click(Sender: TObject);

    procedure ComboBox2Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure selectcount;
  public
    { Public declarations }
  end;

var
  Form28: TForm28;
  Editbool:Boolean=True;

implementation

uses
  DbUnit, MainUnit, CallCentUnit,zcomm, Unit77,SqgUnit;

{$R *.dfm}
var
  sqlstr,sqls: string;


procedure TForm28.selectcount;
begin
  Data1.cmd1.Close;
  Data1.cmd1.SQL.Text := 'select count(a.bisentid) as 已完成 from tbisent a ' + sqls + ' and (a.status=''1'') and (a.type<>''3'')';
  Data1.cmd1.Open;
  Label2.Caption := '已完成 ' + data1.cmd1.FieldByName('已完成').AsString + ' 条';
  Data1.cmd1.Close;
  Data1.cmd1.SQL.Text := 'select count(a.bisentid) as 未派工 from tbisent a ' + sqls + ' and (a.status=''0'') and (a.type<>''3'')';
  Data1.cmd1.Open;
  Label15.Caption := '未派工 ' + data1.cmd1.FieldByName('未派工').AsString + ' 条';
  Data1.cmd1.Close;
  Data1.cmd1.SQL.Text := 'select count(a.bisentid) as 已作废 from tbisent a ' + sqls + ' and  (a.type=''3'')';
  Data1.cmd1.Open;
  Label16.Caption := '已作废 ' + data1.cmd1.FieldByName('已作废').AsString + ' 条';
  Data1.cmd1.Close;
  Data1.cmd1.SQL.Text := 'select count(a.bisentid) as 未回单 from tbisent a ' + sqls + ' and (a.status=''2'') and (a.type<>''3'') ';
  Data1.cmd1.Open;
  Label19.Caption := '未回单 ' + data1.cmd1.FieldByName('未回单').AsString + ' 条';
  Data1.cmd1.Close;
end;

procedure TForm28.UniFrameCreate(Sender: TObject);
begin
   AdvGlowButton2.Enabled := Editbool;
  AdvGlowButton3.Enabled := Editbool;
  DateTimePicker2.Date := date;
  DateTimePicker1.Date := date;

  Data1.ClientDataSet1.Close;
  Data1.ClientDataSet1.SQL.Text:='select comname,id from tcompany where type=3 ';
  Data1.ClientDataSet1.Open;
  ComboBox1.Items.Clear;
  ComboBox2.Items.Clear;
  while not Data1.ClientDataSet1.eof do
  begin

    ComboBox1.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);
    ComboBox2.Items.Add(Data1.ClientDataSet1.Fields[0].AsString);
    Data1.ClientDataSet1.Next;
  end;
  Data1.ClientDataSet1.Close;
  Data1.sqlcmd1.Close;
  Data1.sqlcmd1.SQL.Text:='select  empname from tb_yginfo where gwname like ''%送%''  order by empname';
  Data1.sqlcmd1.Open;
  combobox3.Items.Clear;
  if not Data1.sqlcmd1.IsEmpty then
  begin
         while not Data1.sqlcmd1.Eof do
         begin
            combobox3.Items.Add(Data1.sqlcmd1.FieldByName('empname').AsString);
            Data1.sqlcmd1.Next;
         end;
  end;
  data1.sqlcmd1.Close;
  ComboBox3.ItemIndex:=-1;
  ComboBox1.Text:='';
  ComboBox2.Text:='';
  ComboBox3.Text:='';
  Data1.cd1.Close;
    //case when a.ddstype=0 then ''普通订单'' when a.ddstype=1 then ''微信订单'' end as 订单类型,  现在这个是区分那个下的订单
  sqlstr := 'select a.optid as 下单方,a.shopname as 受理店面,a.bisentid as 订单号,case when a.type=''2'' then ''加急订单'' when a.type=''3'' then ''作废订单'' when a.type=''1'' then ''预约订单'' else ''普通订单'' end as 订单类型,'+
  ' case when a.Fsktype=0 then ''未支付'' when a.Fsktype=1 then ''微信已支付'' end as 收款方式, '+
  ' b.pricename as 商品名称,case when a.status=''0'' then ''未派工'' when a.status=''2'' then ''未回单'' when a.status=''3'' then ''报错'' else ''已完成'' end as 状态,' +
  ' a.corpid as 客户编号,a.corpname as 客户名称,a.tel as 客户电话,a.hynumber as 会员卡号,Char(39)+d.bayday as 身份证,a.jsname as 接收人姓名,'+
  ' Char(39)+a.jssfnumber as 接受人身份证,a.empname as 送气工,a.ywy as 业务员,a.address as 地址,' +    //开户人
  ' a.sl as 数量,a.hmoney as 单价,a.smoney as 送气费,a.glmoney as 租瓶费,a.money as 总金额,Char(39)+a.zpbar as 重瓶条码, '+
  ' Char(39)+a.kpbar as 空瓶条码,a.optdate as 订气时间,a.pddate as 派工时间,a.hddate as 回单时间,' +
  ' a.memo as 订单备注,a.zfyy as 作废原因,a.yydate as 预约时间 ,bcmemo as 报错内容' +  //c.bottleoutsl as 欠瓶数量,a.yjps as 押金瓶数,a.yjje as 押金金额,  left join tbbottleqh c on a.bisentid=c.bisentid
  ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info d on a.corpid=d.barcode ';

//  sqlstr := 'select a.optid as 下单方,a.shopname as 受理店面,a.bisentid as 订单号,case when a.type=''2'' then ''加急订单'' when a.type=''3'' then ''作废订单'' when a.type=''1'' then ''预约订单'' else ''普通订单'' end as 订单类型,'+
//  ' b.pricename as 商品名称,case when a.status=''0'' then ''未派工'' when a.status=''2'' then ''未回单'' when a.status=''3'' then ''报错'' else ''已完成'' end as 状态,' +
//  ' a.corpname as 客户名称,a.corpid as 客户编号,d.ywy as 会员卡号,a.address as 地址,' +
//  'a.sl as 数量,a.hmoney as 单价,a.smoney as 送气费,a.glmoney as 租瓶费,a.money as 总金额,a.zpbar as 重瓶条码,a.kpbar as 回单空瓶条码,' +
//  ' a.optdate as 订气时间,a.pddate as 派工时间,a.hddate as 回单时间,' +  //c.bottleoutsl as 欠瓶数量,a.yjps as 押金瓶数,a.yjje as 押金金额,
//  ' a.empname as 送气工,a.zfyy as 作废原因,a.yydate as 预约时间 ,bcmemo as 报错内容' +
//  ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tbbottleqh c on a.bisentid=c.bisentid left join tbCustomer_Info d on a.corpid=d.barcode';
  sqls := ' where ((a.optdate>=''' + datetimetostr(DateTimePicker1.Datetime) + ''') and (a.optdate<=''' + datetimetostr(DateTimePicker2.Datetime) + '''))';
  Data1.cd1.SQL.Text := sqlstr + sqls + ' Order   By   a.id   desc';
  Data1.cd1.Open;
  Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '条';
  if not Data1.cd1.IsEmpty then
  begin
    selectcount;
  end;
end;

procedure TForm28.UniFrameDestroy(Sender: TObject);
begin
    Data1.cd1.Close;
  Data1.cd2.Close;
end;

procedure TForm28.AdvGlowButton10Click(Sender: TObject);
var
  str: string;
begin
  sqls := ' where ((a.optdate>=''' + datetimetostr(DateTimePicker1.Datetime) + ''') and (a.optdate<=''' + datetimetostr(DateTimePicker2.Datetime) + '''))';
  str := '';//sqlstr + sqls;
  if AdvOfficeRadioButton1.Checked then
    str := str + ' and (a.status=''0'') and (a.type<>''3'')';
  if AdvOfficeRadioButton2.Checked then
    str := str + ' and (a.status=''2'') and (a.type<>''3'')';
  if AdvOfficeRadioButton3.Checked then
    str := str + ' and (a.status=''1'') and (a.type<>''3'')';
  if AdvOfficeRadioButton11.Checked then
    str := str + '  and (a.status=''3'') and (a.type<>''3'')';
  if AdvOfficeRadioButton4.Checked then
    str := str + ' and (a.type=''3'')';
  if AdvOfficeRadioButton5.Checked then
    str := str + ' and (a.type=''2'')';
  if AdvOfficeRadioButton6.Checked then
    str := str + ' and (a.type=''1'')';
  if (edit5.Text <>'') and (ComboBox2.Text<>'') then
    str := str+ ' and (a.shopid='''+edit5.Text+''') ';
  if ComboBox3.Text<>'' then
    str := str + ' and (a.empname='''+ComboBox3.Text+''') ';
    sqls:=sqls+str;
  Data1.cd1.Close;
  Data1.cd1.SQL.Text := sqlstr+sqls + ' Order   By   a.id   desc';
  Data1.cd1.Open;
  Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '条';
  if not Data1.cd1.IsEmpty then
  begin
    selectcount;
  end;
end;

procedure TForm28.AdvGlowButton1Click(Sender: TObject);
begin
  if Data1.cd1.RecordCount > 0 then
  begin
    Data1.cd1.DisableControls;
    AcRptEngine1.Init;
    AcRptEngine1.AddVariable('ks', DateToStr(DateTimePicker1.Date));
    AcRptEngine1.AddVariable('js', DateToStr(DateTimePicker2.Date));
    AcRptEngine1.AddVariable('us', loginName);
   // AddCommonDatasetToAcReport(Data1.cd1, AcRptEngine1, 'sse');
    Data1.cd1.EnableControls;
    AcRptEngine1.SetReportFile(ExtractFilePath(ParamStr(0)) + '\report\bisentreport.apt');
//    AcRptEngine1.ShowDesigner;
       AcRptEngine1.Preview;

  end;
end;

procedure TForm28.AdvGlowButton2Click(Sender: TObject);
var
  sid: string;
//  jf:Real;
begin
  if Edit4.Text = '' then
  begin
    ShowSmoothMessage('请输入作废原因', tsOffice2007Luna);
    exit;
  end;
  if Data1.cd1.RecordCount <> 0 then
  begin                                         // and (Data1.cd1.FieldByName('状态').AsString <> '未回单')
    if (Data1.cd1.FieldByName('状态').AsString = '未派工') then
    begin
      AdvSmoothMessageDialog1.Caption := Mainform.Caption;
      AdvSmoothMessageDialog1.HTMLText.Text := '确认要作废订单吗？';
      case AdvSmoothMessageDialog1.ExecuteDialog of
        mryes:
          begin
            sid := Data1.cd1.FieldByName('订单号').AsString;
            Data1.cd1.Close;
            try
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text := 'update  tbisent set type=''3'',zfyy=''' + edit4.Text + ''',hddate=GETDATE() where bisentid=''' + sid + ''' ';
              Data1.sqlcmd1.ExecSQL;

              ShowSmoothMessage('订单作废成功！'+sid, tsOffice2007Luna);
              Data1.cd1.Open;
            except
              ShowSmoothMessage('订单作废失败！', tsOffice2007Luna);
              Data1.cd1.Open;
            end;
          end;
      end;
      Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '条';
    end
    else  ShowSmoothMessage('已完成、未回单订单不能作废！', tsOffice2007Luna);
  end;
end;

procedure TForm28.AdvGlowButton3Click(Sender: TObject);
var
  sid: string;
begin
  if (ComboBox1.Text <> '') and (Edit1.Text <> '') then
  begin
    if Data1.cd1.RecordCount <> 0 then
    begin                         // and (Data1.cd1.FieldByName('状态').AsString <> '未回单')
      if (Data1.cd1.FieldByName('状态').AsString = '未派工') then
      begin

        AdvSmoothMessageDialog1.Caption := Mainform.Caption;
        AdvSmoothMessageDialog1.HTMLText.Text := '确认要把订单转派到：' + combobox1.text + '吗？';
        case AdvSmoothMessageDialog1.ExecuteDialog of
          mryes:
            begin
              sid := Data1.cd1.FieldByName('订单号').AsString;
              Data1.cd1.Close;
              try
                Data1.sqlcmd1.Close;
                Data1.sqlcmd1.SQL.Text := 'update  tbisent set shopid=''' + edit1.Text + ''',shopname=''' + combobox1.Text + ''' where bisentid=''' + sid + ''' ';
                Data1.sqlcmd1.ExecSQL;
                ShowSmoothMessage('转派门店成功！', tsOffice2007Luna);
                Data1.cd1.Open;
              except
                ShowSmoothMessage('转派门店失败！', tsOffice2007Luna);
                Data1.cd1.Open;
              end;
            end;
        end;
        Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '条';
      end
      else
        ShowSmoothMessage('已完成、未回单订单不能转派！', tsOffice2007Luna);
    end
    else
      ShowSmoothMessage('请选择门店！', tsOffice2007Luna);
  end;
end;

procedure TForm28.AdvGlowButton4Click(Sender: TObject);
begin
  sqls := ' where ((a.optdate>=''' + datetimetostr(DateTimePicker1.Datetime) + ''') and (a.optdate<=''' + datetimetostr(DateTimePicker2.Datetime) + '''))';
  Data1.cd1.Close;
  Data1.cd1.SQL.Text := sqlstr + sqls + ' Order   By   a.id   desc';
  Data1.cd1.Open;
  Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '条';
  if not Data1.cd1.IsEmpty then
  begin
    selectcount;

  end;
end;

procedure TForm28.AdvGlowButton5Click(Sender: TObject);
var
  str: string;
  hddate: string;
begin
  hddate := '';
  sqls := ' where ((a.optdate>=''' + datetimetostr(DateTimePicker1.Datetime) + ''') and (a.optdate<=''' + datetimetostr(DateTimePicker2.Datetime) + '''))';
  if AdvOfficeRadioButton7.Checked then
    str := sqlstr + sqls + ' and (b.pricename like ''%收押金%'') ';
  if AdvOfficeRadioButton8.Checked then
    str := sqlstr + sqls + ' and (b.pricename like ''%退押金%'') ';
  if AdvOfficeRadioButton9.Checked then
    str := sqlstr + sqls + ' and (b.pricename like ''%退回客户%'') ';
  if AdvOfficeRadioButton10.Checked then
    str := sqlstr + sqls + ' and (b.pricename like ''%验瓶费%'') ';
  Data1.cd1.Close;
  Data1.cd1.SQL.Text := str + ' Order By a.id desc';
  Data1.cd1.Open;
  Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '条';
  if not Data1.cd1.IsEmpty then
  begin
    selectcount;

  end;
//  if not Data1.cd1.IsEmpty then
//  begin
//    selectcount;
//  end;
end;

procedure TForm28.AdvGlowButton8Click(Sender: TObject);
var
  ssql: string;
begin
  if Edit2.Text <> '' then
    ssql := ' and (a.corpid=''' + edit2.Text + ''') and (a.type<>''3'')';
  if edt1.Text <> '' then
    ssql := ' and (a.hynumber=''' + edt1.Text + ''') and (a.type<>''3'')';
  if Edit3.Text <> '' then
    ssql := ' and (a.tel=''' + edit3.Text + ''') and (a.type<>''3'')';
  sqls := ' where ((a.optdate>=''' + datetimetostr(DateTimePicker1.Datetime) + ''') and (a.optdate<=''' + datetimetostr(DateTimePicker2.Datetime) + '''))';
  Data1.cd1.Close;
  Data1.cd1.SQL.Text := sqlstr + sqls + ssql + ' Order   By   a.id   desc';
  Data1.cd1.Open;
  Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '条';
  if not Data1.cd1.IsEmpty then
  begin
    selectcount;

  end;
//  if not Data1.cd1.IsEmpty then
//  begin
//    selectcount;
//  end;
end;

procedure TForm28.AdvGlowButton9Click(Sender: TObject);
begin
  if sSaveDialog1.Execute then
  begin
    try
      if pos('.', ssavedialog1.FileName) > 0 then
        DBAdvGrid1.SaveToXLS(ssavedialog1.FileName)
      else   DBAdvGrid1.SaveToXLS(ssavedialog1.FileName + '.xls');
//      if pos('.', ssavedialog1.FileName) > 0 then
//        AdvGridExcelIO1.XLSExport(ssavedialog1.FileName)
//      else
//        AdvGridExcelIO1.XLSExport(ssavedialog1.FileName + '.xls');
      mShowMessage('导出成功！');

    except
      mShowMessage('导出失败！');
    end;
  end;
end;

procedure TForm28.ComboBox1Click(Sender: TObject);
begin
  if ComboBox1.Text <> '' then
  begin
    data1.sqlcmd1.Close;
    Data1.sqlcmd1.SQL.Text := 'select id from tcompany where comname=''' + combobox1.Text + ''' ';
    Data1.sqlcmd1.Open;
    if not Data1.sqlcmd1.IsEmpty then
    begin
      Edit1.Text := Data1.sqlcmd1.FieldByName('id').AsString;
    end;
    data1.sqlcmd1.Close;
  end;
end;

procedure TForm28.ComboBox2Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    data1.sqlcmd1.Close;
    Data1.sqlcmd1.SQL.Text := 'select shopid from tshop where shopname=''' + combobox2.Text + ''' ';
    Data1.sqlcmd1.Open;
    if not Data1.sqlcmd1.IsEmpty then
    begin
      Edit5.Text := Data1.sqlcmd1.FieldByName('shopid').AsString;
      ComboBox3.Items.Clear;
      Data1.sqlcmd1.Close;
      Data1.sqlcmd1.SQL.Text:='select EmpName from tAchEmployee where shopid='''+Edit5.Text+''' ';
      Data1.sqlcmd1.Open;
      if not Data1.sqlcmd1.IsEmpty then
      begin
        while not Data1.sqlcmd1.Eof do
        begin
          ComboBox3.Items.Add(Data1.sqlcmd1.FieldByName('EmpName').AsString);
          Data1.sqlcmd1.Next;
        end;
      end;
    end;
    data1.sqlcmd1.Close;
  end;
end;

procedure TForm28.DBAdvGrid1DblClick(Sender: TObject);
begin
  if Data1.cd1.IsEmpty then Exit;
  if Editbool=False then
  begin
    mShowMessage('您没有操作权限');
    Exit;
  end;
  if (Data1.cd1.FieldByName('状态').AsString = '已完成') then
  begin
    Form77.Edit1.Text := Data1.cd1.FieldByName('受理店面').AsString;
    Form77.Edit2.Text := Data1.cd1.FieldByName('订单号').AsString;
    Form77.Edit3.Text := Data1.cd1.FieldByName('商品名称').AsString;
    Form77.Edit4.Text := Data1.cd1.FieldByName('状态').AsString;
    Form77.Edit6.Text:=StringReplace(Data1.cd1.FieldByName('重瓶条码').AsString, '''', '', [rfReplaceAll]);
    Form77.Edit7.Text:=StringReplace(Data1.cd1.FieldByName('空瓶条码').AsString, '''', '', [rfReplaceAll]);
    Form77.ShowModal;
  end;
  if (Data1.cd1.FieldByName('状态').AsString = '未派工') then
  begin
    SqgForm.ComboBox1.Items:=callcentform.ComboBox3.Items;
    SqgForm.ComboBox1.Text :=Data1.cd1.FieldByName('送气工').AsString;
    SqgForm.edit1.Text:= Data1.cd1.FieldByName('订单号').AsString;
    SqgForm.edit2.Text:= '1';
    SqgForm.ShowModal;
  end;
end;

procedure TForm28.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if (DBAdvGrid1.Cells[4, arow] = trim('预约订单')) then
    AFont.Color := clgreen;
  if (DBAdvGrid1.Cells[4, ARow] = trim('作废订单')) then
    AFont.Color := clred;
  if (DBAdvGrid1.Cells[4, ARow] = trim('加急订单')) then
    AFont.Color := clblue;
  if (DBAdvGrid1.Cells[6, ARow] = trim('报错')) then
    AFont.Color := clred;
//    ABrush.Color := clred;
end;

procedure TForm28.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False, 2); //根据内容调节列宽
end;

procedure TForm28.Edit2Click(Sender: TObject);
begin
  edit3.Clear;
  edt1.Clear;
end;

procedure TForm28.Edit3Click(Sender: TObject);
begin
  Edit2.Clear;
  edt1.Clear;
end;

procedure TForm28.edt1Click(Sender: TObject);
begin
  Edit2.Clear;
  Edit3.Clear;
end;



end.

