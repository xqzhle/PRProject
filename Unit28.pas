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
  Data1.cmd1.SQL.Text := 'select count(a.bisentid) as ����� from tbisent a ' + sqls + ' and (a.status=''1'') and (a.type<>''3'')';
  Data1.cmd1.Open;
  Label2.Caption := '����� ' + data1.cmd1.FieldByName('�����').AsString + ' ��';
  Data1.cmd1.Close;
  Data1.cmd1.SQL.Text := 'select count(a.bisentid) as δ�ɹ� from tbisent a ' + sqls + ' and (a.status=''0'') and (a.type<>''3'')';
  Data1.cmd1.Open;
  Label15.Caption := 'δ�ɹ� ' + data1.cmd1.FieldByName('δ�ɹ�').AsString + ' ��';
  Data1.cmd1.Close;
  Data1.cmd1.SQL.Text := 'select count(a.bisentid) as ������ from tbisent a ' + sqls + ' and  (a.type=''3'')';
  Data1.cmd1.Open;
  Label16.Caption := '������ ' + data1.cmd1.FieldByName('������').AsString + ' ��';
  Data1.cmd1.Close;
  Data1.cmd1.SQL.Text := 'select count(a.bisentid) as δ�ص� from tbisent a ' + sqls + ' and (a.status=''2'') and (a.type<>''3'') ';
  Data1.cmd1.Open;
  Label19.Caption := 'δ�ص� ' + data1.cmd1.FieldByName('δ�ص�').AsString + ' ��';
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
  Data1.sqlcmd1.SQL.Text:='select  empname from tb_yginfo where gwname like ''%��%''  order by empname';
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
    //case when a.ddstype=0 then ''��ͨ����'' when a.ddstype=1 then ''΢�Ŷ���'' end as ��������,  ��������������Ǹ��µĶ���
  sqlstr := 'select a.optid as �µ���,a.shopname as �������,a.bisentid as ������,case when a.type=''2'' then ''�Ӽ�����'' when a.type=''3'' then ''���϶���'' when a.type=''1'' then ''ԤԼ����'' else ''��ͨ����'' end as ��������,'+
  ' case when a.Fsktype=0 then ''δ֧��'' when a.Fsktype=1 then ''΢����֧��'' end as �տʽ, '+
  ' b.pricename as ��Ʒ����,case when a.status=''0'' then ''δ�ɹ�'' when a.status=''2'' then ''δ�ص�'' when a.status=''3'' then ''����'' else ''�����'' end as ״̬,' +
  ' a.corpid as �ͻ����,a.corpname as �ͻ�����,a.tel as �ͻ��绰,a.hynumber as ��Ա����,Char(39)+d.bayday as ���֤,a.jsname as ����������,'+
  ' Char(39)+a.jssfnumber as ���������֤,a.empname as ������,a.ywy as ҵ��Ա,a.address as ��ַ,' +    //������
  ' a.sl as ����,a.hmoney as ����,a.smoney as ������,a.glmoney as ��ƿ��,a.money as �ܽ��,Char(39)+a.zpbar as ��ƿ����, '+
  ' Char(39)+a.kpbar as ��ƿ����,a.optdate as ����ʱ��,a.pddate as �ɹ�ʱ��,a.hddate as �ص�ʱ��,' +
  ' a.memo as ������ע,a.zfyy as ����ԭ��,a.yydate as ԤԼʱ�� ,bcmemo as ��������' +  //c.bottleoutsl as Ƿƿ����,a.yjps as Ѻ��ƿ��,a.yjje as Ѻ����,  left join tbbottleqh c on a.bisentid=c.bisentid
  ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info d on a.corpid=d.barcode ';

//  sqlstr := 'select a.optid as �µ���,a.shopname as �������,a.bisentid as ������,case when a.type=''2'' then ''�Ӽ�����'' when a.type=''3'' then ''���϶���'' when a.type=''1'' then ''ԤԼ����'' else ''��ͨ����'' end as ��������,'+
//  ' b.pricename as ��Ʒ����,case when a.status=''0'' then ''δ�ɹ�'' when a.status=''2'' then ''δ�ص�'' when a.status=''3'' then ''����'' else ''�����'' end as ״̬,' +
//  ' a.corpname as �ͻ�����,a.corpid as �ͻ����,d.ywy as ��Ա����,a.address as ��ַ,' +
//  'a.sl as ����,a.hmoney as ����,a.smoney as ������,a.glmoney as ��ƿ��,a.money as �ܽ��,a.zpbar as ��ƿ����,a.kpbar as �ص���ƿ����,' +
//  ' a.optdate as ����ʱ��,a.pddate as �ɹ�ʱ��,a.hddate as �ص�ʱ��,' +  //c.bottleoutsl as Ƿƿ����,a.yjps as Ѻ��ƿ��,a.yjje as Ѻ����,
//  ' a.empname as ������,a.zfyy as ����ԭ��,a.yydate as ԤԼʱ�� ,bcmemo as ��������' +
//  ' from tbisent a left join tbisentprice b on a.bisentid=b.bisentid left join tbbottleqh c on a.bisentid=c.bisentid left join tbCustomer_Info d on a.corpid=d.barcode';
  sqls := ' where ((a.optdate>=''' + datetimetostr(DateTimePicker1.Datetime) + ''') and (a.optdate<=''' + datetimetostr(DateTimePicker2.Datetime) + '''))';
  Data1.cd1.SQL.Text := sqlstr + sqls + ' Order   By   a.id   desc';
  Data1.cd1.Open;
  Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '��';
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
  Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '��';
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
    ShowSmoothMessage('����������ԭ��', tsOffice2007Luna);
    exit;
  end;
  if Data1.cd1.RecordCount <> 0 then
  begin                                         // and (Data1.cd1.FieldByName('״̬').AsString <> 'δ�ص�')
    if (Data1.cd1.FieldByName('״̬').AsString = 'δ�ɹ�') then
    begin
      AdvSmoothMessageDialog1.Caption := Mainform.Caption;
      AdvSmoothMessageDialog1.HTMLText.Text := 'ȷ��Ҫ���϶�����';
      case AdvSmoothMessageDialog1.ExecuteDialog of
        mryes:
          begin
            sid := Data1.cd1.FieldByName('������').AsString;
            Data1.cd1.Close;
            try
              Data1.sqlcmd1.Close;
              Data1.sqlcmd1.SQL.Text := 'update  tbisent set type=''3'',zfyy=''' + edit4.Text + ''',hddate=GETDATE() where bisentid=''' + sid + ''' ';
              Data1.sqlcmd1.ExecSQL;

              ShowSmoothMessage('�������ϳɹ���'+sid, tsOffice2007Luna);
              Data1.cd1.Open;
            except
              ShowSmoothMessage('��������ʧ�ܣ�', tsOffice2007Luna);
              Data1.cd1.Open;
            end;
          end;
      end;
      Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '��';
    end
    else  ShowSmoothMessage('����ɡ�δ�ص������������ϣ�', tsOffice2007Luna);
  end;
end;

procedure TForm28.AdvGlowButton3Click(Sender: TObject);
var
  sid: string;
begin
  if (ComboBox1.Text <> '') and (Edit1.Text <> '') then
  begin
    if Data1.cd1.RecordCount <> 0 then
    begin                         // and (Data1.cd1.FieldByName('״̬').AsString <> 'δ�ص�')
      if (Data1.cd1.FieldByName('״̬').AsString = 'δ�ɹ�') then
      begin

        AdvSmoothMessageDialog1.Caption := Mainform.Caption;
        AdvSmoothMessageDialog1.HTMLText.Text := 'ȷ��Ҫ�Ѷ���ת�ɵ���' + combobox1.text + '��';
        case AdvSmoothMessageDialog1.ExecuteDialog of
          mryes:
            begin
              sid := Data1.cd1.FieldByName('������').AsString;
              Data1.cd1.Close;
              try
                Data1.sqlcmd1.Close;
                Data1.sqlcmd1.SQL.Text := 'update  tbisent set shopid=''' + edit1.Text + ''',shopname=''' + combobox1.Text + ''' where bisentid=''' + sid + ''' ';
                Data1.sqlcmd1.ExecSQL;
                ShowSmoothMessage('ת���ŵ�ɹ���', tsOffice2007Luna);
                Data1.cd1.Open;
              except
                ShowSmoothMessage('ת���ŵ�ʧ�ܣ�', tsOffice2007Luna);
                Data1.cd1.Open;
              end;
            end;
        end;
        Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '��';
      end
      else
        ShowSmoothMessage('����ɡ�δ�ص���������ת�ɣ�', tsOffice2007Luna);
    end
    else
      ShowSmoothMessage('��ѡ���ŵ꣡', tsOffice2007Luna);
  end;
end;

procedure TForm28.AdvGlowButton4Click(Sender: TObject);
begin
  sqls := ' where ((a.optdate>=''' + datetimetostr(DateTimePicker1.Datetime) + ''') and (a.optdate<=''' + datetimetostr(DateTimePicker2.Datetime) + '''))';
  Data1.cd1.Close;
  Data1.cd1.SQL.Text := sqlstr + sqls + ' Order   By   a.id   desc';
  Data1.cd1.Open;
  Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '��';
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
    str := sqlstr + sqls + ' and (b.pricename like ''%��Ѻ��%'') ';
  if AdvOfficeRadioButton8.Checked then
    str := sqlstr + sqls + ' and (b.pricename like ''%��Ѻ��%'') ';
  if AdvOfficeRadioButton9.Checked then
    str := sqlstr + sqls + ' and (b.pricename like ''%�˻ؿͻ�%'') ';
  if AdvOfficeRadioButton10.Checked then
    str := sqlstr + sqls + ' and (b.pricename like ''%��ƿ��%'') ';
  Data1.cd1.Close;
  Data1.cd1.SQL.Text := str + ' Order By a.id desc';
  Data1.cd1.Open;
  Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '��';
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
  Label10.Caption := IntToStr(Data1.cd1.RecordCount) + '��';
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
      mShowMessage('�����ɹ���');

    except
      mShowMessage('����ʧ�ܣ�');
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
    mShowMessage('��û�в���Ȩ��');
    Exit;
  end;
  if (Data1.cd1.FieldByName('״̬').AsString = '�����') then
  begin
    Form77.Edit1.Text := Data1.cd1.FieldByName('�������').AsString;
    Form77.Edit2.Text := Data1.cd1.FieldByName('������').AsString;
    Form77.Edit3.Text := Data1.cd1.FieldByName('��Ʒ����').AsString;
    Form77.Edit4.Text := Data1.cd1.FieldByName('״̬').AsString;
    Form77.Edit6.Text:=StringReplace(Data1.cd1.FieldByName('��ƿ����').AsString, '''', '', [rfReplaceAll]);
    Form77.Edit7.Text:=StringReplace(Data1.cd1.FieldByName('��ƿ����').AsString, '''', '', [rfReplaceAll]);
    Form77.ShowModal;
  end;
  if (Data1.cd1.FieldByName('״̬').AsString = 'δ�ɹ�') then
  begin
    SqgForm.ComboBox1.Items:=callcentform.ComboBox3.Items;
    SqgForm.ComboBox1.Text :=Data1.cd1.FieldByName('������').AsString;
    SqgForm.edit1.Text:= Data1.cd1.FieldByName('������').AsString;
    SqgForm.edit2.Text:= '1';
    SqgForm.ShowModal;
  end;
end;

procedure TForm28.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if (DBAdvGrid1.Cells[4, arow] = trim('ԤԼ����')) then
    AFont.Color := clgreen;
  if (DBAdvGrid1.Cells[4, ARow] = trim('���϶���')) then
    AFont.Color := clred;
  if (DBAdvGrid1.Cells[4, ARow] = trim('�Ӽ�����')) then
    AFont.Color := clblue;
  if (DBAdvGrid1.Cells[6, ARow] = trim('����')) then
    AFont.Color := clred;
//    ABrush.Color := clred;
end;

procedure TForm28.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False, 2); //�������ݵ����п�
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

