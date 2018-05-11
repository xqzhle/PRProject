unit BottleListUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, ComCtrls, StdCtrls, Buttons, ExtCtrls, AdvUtil,
  Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, DB, MemDS, DBAccess, Uni, ADODB,
  Menus, AdvMenus, tmsAdvGridExcel, frxBarcode, frxClass, AdvPanel;

type
  TBottleListFrame = class(TUniFrame)
    Panel2: TadvPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label21: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Edit3: TEdit;
    Edit4: TEdit;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Edit9: TEdit;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    Panel12: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    PageSizebox: TComboBox;
    SelPageBox: TComboBox;
    DBAdvGrid1: TDBAdvGrid;
    ADOQuery1: TUniQuery;
    Button1: TButton;
    AdvPopupMenu1: TAdvPopupMenu;
    N62: TMenuItem;
    N63: TMenuItem;
    N11: TMenuItem;
    N22: TMenuItem;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    frxReport1: TfrxReport;
    procedure UniFrameCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure PageSizeboxChange(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure SelPageBoxChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
  private
    { Private declarations }
    procedure selectbottle(const pages:Integer);
  public
    { Public declarations }
  end;
 var
  BottleListFrame :TBottleListFrame;
implementation

uses
  DbUnit, BottleinfoUnit, MainUnit,zcomm;

{$R *.dfm}
var
  Pagecurrent:Integer=0;  // ��ǰҳ
  Pagecount:Integer=0;    //��ҳ��
  seltypes:string='0';
  whereallstr:string;
  selectallstr,orderbyallstr,fromallstr:string;


procedure TBottleListFrame.Button1Click(Sender: TObject);
var
  s:string;
begin//��ƿ��ѯ
   if  trim(combobox5.Text)='����' then//��״̬��û�У����Ե��ò����ݿ�     0
   begin
     s:=' and (A.Instate =''0'') ';
   end
   else if  trim(combobox5.Text)='����' then     //1
   begin
     s:=' and (A.Instate =''1'') ';
   end else if  trim(combobox5.Text)='����' then   //3
   begin
     s:=' and  (A.Instate =''3'') ';
   end else if  trim(combobox5.Text)='��ʧ' then   //2
   begin
     s:=' and (A.Instate =''2'') ';
   end;
   if (datetimepicker1.Checked) and datetimepicker2.Checked then
   begin
     s:=s+' and (A.MakeTime >='''+datetostr(datetimepicker2.Date)+''') and (A.MakeTime<='''+datetostr(datetimepicker1.Date)+''') ';
   end else if datetimepicker2.Checked then
   begin
        s:=s+' and (A.MakeTime >='''+datetostr(datetimepicker2.Date)+''') '
   end else  if datetimepicker1.Checked then
   begin
     s:=s+' and (A.MakeTime<='''+datetostr(datetimepicker1.Date)+''') ';
   end;
   if (datetimepicker3.Checked) and datetimepicker4.Checked then
   begin
     s:=s+' and (A.CreateDate >='''+datetostr(datetimepicker3.Date)+''') and (A.CreateDate<='''+datetostr(datetimepicker4.Date)+''') ';
   end else if datetimepicker3.Checked then
   begin
        s:=s+' and (A.CreateDate >='''+datetostr(datetimepicker3.Date)+''') '
   end else  if datetimepicker4.Checked then
   begin
     s:=s+' and (A.CreateDate<='''+datetostr(datetimepicker4.Date)+''') ';
   end;
   if  trim(combobox2.Text)<>'' then  s:=s+' and (A.FactoryID = '''+trim(combobox2.Text)+''')';
   if (trim(combobox3.Text)<>'') then s:=s+' and (C.Spec_Name = '''+trim(combobox3.Text)+''')';
   if (trim(combobox4.Text)<>'') then s:=s+' and (D.Type_Name = '''+trim(combobox4.Text)+''')';
   if (trim(edit3.Text)<>'') then s:=' and (A.Bottleid='''+trim(edit3.Text)+''')';  //(A.Bottleid like ''%''+'''+trim(edit3.Text)+'''+''%'')
   if (trim(edit4.Text)<>'') then s:=' and (A.BottleBar='''+trim(trim(edit4.Text))+''' or A.gptm='''+trim(trim(edit4.Text))+''')';
   if (trim(edit9.Text)<>'') then  s:=' and ( A.Probe_id= '''+trim(trim(edit9.Text))+''')';
   if ComboBox6.Text<>'' then  s := s+' and a.qzid='''+ComboBox7.Text+''' ';
   whereallstr:='(a.BottleAction<>''4'') and (stype=0) '+ s;
   selectbottle(1);

end;

procedure TBottleListFrame.Button2Click(Sender: TObject);
begin
   with BottleInfoForm do
   begin
      Caption:='��ƿ��Ϣ-����';
      ComboBox1.Items:=Self.combobox3.Items; //��ƿ���
      ComboBox2.Items:=Self.combobox2.Items; //��������
      ComboBox3.Items:=Self.combobox4.Items; //��������
      Edit13.Text:=Loginname;
      Edit15.Text:=gettime;
      Edit14.Text:='';
      Edit16.Text:='';
      ShowModal;
   end;
end;

procedure TBottleListFrame.Button3Click(Sender: TObject);
begin
    if Data1.SP.RecordCount=0 then exit;
   with BottleInfoForm do
   begin
      Caption:='��ƿ��Ϣ-�޸�';
      ComboBox1.Items:=Self.combobox3.Items; //��ƿ���
      ComboBox1.Text:=Data1.sp.FieldByName('��ƿ���').AsString;
      ComboBox2.Items:=Self.combobox2.Items; //��������
      ComboBox2.Text:=Data1.sp.FieldByName('���쳧��ȫ��').AsString;
      ComboBox3.Items:=Self.combobox4.Items; //��װ����
      ComboBox3.Text:=Data1.sp.FieldByName('��װ����').AsString;
      Edit14.Text:=Data1.sp.FieldByName('�½��û�').AsString;
      Edit16.Text:=Data1.sp.FieldByName('�½�����').AsString;
      Edit13.Text:=Loginname;
      Edit15.Text:=gettime;
      if ShowModal=mrOK  then selectbottle(1);
   end;
end;

procedure TBottleListFrame.Button5Click(Sender: TObject);
begin
   if not Data1.SP.Active then exit;
   if not Data1.SP.RecordCount=0 then Exit;
   if savedialog1.Execute then
   begin
     if  pos('.', savedialog1.FileName)>0 then  advgridexcelio1.XLSExport(savedialog1.FileName)
       else   advgridexcelio1.XLSExport(savedialog1.FileName+'.xls');
   end;
end;

procedure TBottleListFrame.DBAdvGrid1GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     if (DBAdvGrid1.Cells[25,arow]=trim('����')) then AFont.Color:=clgreen;
     if (DBAdvGrid1.Cells[25,ARow]=trim('����')) then AFont.Color:=clred;
     if (DBAdvGrid1.Cells[25,ARow]=trim('��ʧ')) then AFont.Color:=clblue;
end;

procedure TBottleListFrame.DBAdvGrid1Resize(Sender: TObject);
begin
    DBAdvGrid1.AutoSizeColumns(False,10);
end;

procedure TBottleListFrame.Label26Click(Sender: TObject);
begin
    if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   selectbottle(1);
end;

procedure TBottleListFrame.Label27Click(Sender: TObject);
begin
if (Pagecurrent=1) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    selectbottle(Pagecurrent-1);
end;

procedure TBottleListFrame.Label28Click(Sender: TObject);
begin
  if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
    selectbottle(Pagecurrent+1);
end;

procedure TBottleListFrame.Label29Click(Sender: TObject);
begin
 if (Pagecurrent=Pagecount) or (Pagecount=0) or (Pagecurrent=0) then  Exit;
   selectbottle(Pagecount);
end;

procedure TBottleListFrame.N11Click(Sender: TObject);
begin
    if Data1.sp.RecordCount >0 then
  begin
    frxReport1.LoadFromFile('report/gptm.fr3');
    (frxReport1.FindObject('BarCode1') as TfrxBarCodeView).Text :=  Data1.sp.FieldByName('��ƿ����').AsString;
    (frxReport1.FindObject('BarCode2') as TfrxBarCodeView).visible := False;
   // Data1.Sp.Next;
 //   frxReport1.ShowReport;
    frxReport1.PrepareReport();
    frxReport1.PrintOptions.ShowDialog:=false;
    frxReport1.print;
  end;
end;

procedure TBottleListFrame.N22Click(Sender: TObject);
begin
     if Data1.sp.RecordCount >0 then
  begin
    frxReport1.LoadFromFile('report/gptm.fr3');
    (frxReport1.FindObject('BarCode1') as TfrxBarCodeView).Text := Data1.sp.FieldByName('��ƿ����').AsString;
    Data1.Sp.Next;
    if not Data1.sp.Eof then
    begin
      (frxReport1.FindObject('barcode2') as TfrxBarCodeView).Text := Data1.sp.FieldByName('��ƿ����').AsString;
    end;
    frxReport1.PrepareReport();
    frxReport1.PrintOptions.ShowDialog:=false;
    frxReport1.print;
  end;
end;

procedure TBottleListFrame.PageSizeboxChange(Sender: TObject);
begin
    if PageSizebox.ItemIndex=-1 then  Exit;
    Selectbottle(1);
end;

procedure TBottleListFrame.selectbottle(const pages: Integer);
var
 wherestr,orderbystr,fromstr,selectstr,fdname:string;
 rows:Integer;
begin
   selectstr:=selectallstr;
   fromstr:=fromallstr;

   wherestr:=whereallstr;
   orderbystr:=orderbyallstr;
   fdname:='a.ID';
   Data1.Sp.Close;
   Data1.sp.ProcedureName:='PageShowOneshang;1';
   Data1.sp.Parameters.Refresh;
   Data1.sp.Parameters.ParamByName('@PageSize').Value:=StrToInt(PageSizebox.Text);
   Data1.sp.Parameters.ParamByName('@PageCurrent').Value:=pages;
   Data1.sp.Parameters.ParamByName('@FdName').Value:=fdname;
   Data1.sp.Parameters.ParamByName('@fromstr').Value:=fromstr;
   Data1.sp.Parameters.ParamByName('@selectstr').Value:=selectstr;
   Data1.sp.Parameters.ParamByName('@orderbystr').Value:=orderbystr;
   Data1.sp.Parameters.ParamByName('@wherestr').Value:=wherestr;
   Data1.sp.Open;
   rows:=Data1.Sp.Parameters.ParamValues['@CountRows']  ;
   Pagecount:=Data1.Sp.Parameters. ParamValues['@CountPage'];
//    ADODataSet1.DataSetField:=Sp.DataSetField;
   // ADODataSet1.DataSource:=DataSource1;
   // ShowMessage(IntToStr(rows)+'/'+inttostr(Pagecount));
    Pagecurrent:=pages;
   Label23.Caption:=Format('�� %D ����¼',[rows]);
   Label24.Caption:=Format('/ %Dҳ ',[pagecount]);
   label25.Caption:=Format('%D',[pages]);
   SelPageBox.Items.Clear;
   for rows := 1 to Pagecount do
   SelPageBox.Items.Add('��'+IntToStr(rows)+'ҳ');
   if not Data1.SP.IsEmpty then
     DBAdvGrid1.PopupMenu:=advPopupMenu1
   else DBAdvGrid1.PopupMenu:=nil;
end;

procedure TBottleListFrame.SelPageBoxChange(Sender: TObject);
begin
    if SelPageBox.ItemIndex=-1 then Exit;
   if Pagecurrent=SelPageBox.ItemIndex+1 then Exit;
   Selectbottle(SelPageBox.ItemIndex+1);
end;

procedure TBottleListFrame.UniFrameCreate(Sender: TObject);
var
 i:Integer;
begin
   combobox5.Text:='';
   combobox5.Items.Clear;
   combobox5.Items.Append('ȫ��');
   combobox5.Items.Append('����');
   combobox5.Items.Append('����');
   combobox5.Items.Append('����');
   combobox5.Items.Append('��ʧ');
   datetimepicker1.DateTime:=now;
   datetimepicker2.DateTime:=now;
   datetimepicker3.DateTime:=now;
   datetimepicker4.DateTime:=now;
   datetimepicker1.Checked:=false;
   datetimepicker2.Checked:=false;
   datetimepicker3.Checked:=false;
   datetimepicker4.Checked:=false;
    adoquery1.Close;
          adoquery1.SQL.Clear;
          adoquery1.SQL.Add('Select Factory_ID,NameC From tbWorks_Info Order By Factory_ID');
          adoquery1.Open;
          if adoquery1.RecordCount>0 then
            begin
              combobox2.Text:='';
              combobox2.Items.Clear;
             for i:=1 to  adoquery1.RecordCount do
                begin
                   adoquery1.RecNo:=i;
                   combobox2.Items.Append(adoquery1.Fields.Fields[1].AsString);
                end;
            end;
          //���ƿ���
          adoquery1.Close;
          adoquery1.SQL.Clear;
          adoquery1.SQL.Add('Select Spec_ID,Spec_Name From tbBottle_Spec Order By Spec_ID');
          adoquery1.Open;
          if adoquery1.RecordCount>0 then
            begin
              adoquery1.First;
              combobox3.Text:='';
              combobox3.Items.Clear;
              for i:=1 to adoquery1.RecordCount do
                begin
                   combobox3.Items.Append(adoquery1.Fields.Fields[1].AsString);
                   adoquery1.Next;
                end;
            end;
           //���������
          adoquery1.Close;
          adoquery1.SQL.Clear;
          adoquery1.SQL.Add('Select Type_ID,Type_Name From tbBottle_Class Order By Type_ID');
          adoquery1.Open;
          if adoquery1.RecordCount>0 then
            begin
              adoquery1.First;
              combobox4.Text:='';
              combobox4.Items.Clear;
              while not adoquery1.Eof do
                begin
                   combobox4.Items.Append(adoquery1.Fields.Fields[1].AsString);
                   adoquery1.Next;
                end;
            end;
        ComboBox6.Clear;
        ComboBox7.Clear;
        ADOQuery1.Close;
        ADOQuery1.SQL.Text := 'select id,namec from tbQizhan_Info';
        ADOQuery1.open;
        while not ADOQuery1.Eof do
        begin
           ComboBox6.Items.Add(ADOQuery1.FieldByName('namec').AsString);
           ComboBox7.Items.Add(ADOQuery1.FieldByName('id').AsString);
           ADOQuery1.Next;
        end;
          ADOQuery1.Close;
          ADOQuery1.sql.text:='';
          ADOQuery1.sql.text:='update tbBottle_Dossier set instate=''3'' where NextProbe<='''+datetostr(date)+'''';
          ADOQuery1.ExecSQL;
          ADOQuery1.Close;
          ADOQuery1.sql.text:='';
          ADOQuery1.sql.text:='update tbBottle_Dossier set instate=''1'' where ScrapDate<='''+datetostr(date)+'''';
          ADOQuery1.ExecSQL;
              selectallstr:=' a.id as ���, A.BottleBar as ��ƿ��ǩ,A.Bottleid as ��ƿ���,A.gptm as ��ƿ����,'+
         'case when a.type=0 then ''δ���'' when a.type=1 then ''��վ'' when a.type=2 then ''�ŵ�'' when a.type=3 then ''�ͻ�'' when a.type=4 then ''��;'' when a.type=9 then ''������'' else ''�ͼ�'' end as ��ƿλ��,a.address as ����,a.upuser as ������,a.endtime as ���ʱ��, '+
         'A.FactoryID as ���쳧��ȫ��,C.Spec_Name as ��ƿ���,g.class_name as ��ƿ����,D.Type_Name as ��װ����,' +  //A.UpdateDate as ����޸�ʱ��, a.UpdateUser as ����޸��û�, A.InitialVolume as ��ƿ�ݻ�,
         'A.InitialHeft as ��ƿ����,A.MakeTime as ��������,A.NextProbe as �¼�����,'+
         'A.Lastdate as ���¼�������,a.chickcs as �������,A.Probe_id as ������,A.ScrapDate As ��������, A.CreateDate as �½�����,A.CreateUser as �½��û�, '+
         'A.UpdateDate as �޸�ʱ��, a.UpdateUser as �޸��û�,case when A.instate=''0'' then ''����'' when A.instate=''1'' then ''����'' when A.instate=''2'' then ''��ʧ'' else ''����'' '+
         'end as ״̬,s.name as ��ⵥλ,case when a.Bottleright=''0'' then ''����'' else ''������'' end as ��Ȩ,A.Remark as ��ע ';
         fromallstr:=' tbBottle_Dossier A  '+                                      //left join tbStock_In m on a.BottleBar=m.BottleBar
        'left join tbmdzpxc k on a.BottleBar=k.BottleBar   '+   // left join tzybottle j on j.barbottle like ''%''+A.bottlebar+''%'' or j.barbottle like ''%''+A.bottleid+''%''
        ' left join tbBottle_Spec C On C.Spec_ID=A.SpecID left join tbBottle_Class D On D.Type_ID=A.TypeID'+   //left join tshop l on l.shopid=k.shopcode or l.shopid=m.shopcode
        ' left join tbBottle_Type g on a.classid=g.class_id left join tb_Inspection s on A.chickname=s.name_id';
        whereallstr:=' (A.BottleAction<>''4'') and (a.stype=0) ';  //left join tbWorks_Info B On B.Factory_ID=A.FactoryID
        orderbyallstr:='a.ID desc';
        selectbottle(1);
        BottleListFrame:=Self;
end;

procedure TBottleListFrame.UniFrameDestroy(Sender: TObject);
begin
    Data1.SP.Close;
end;

end.
