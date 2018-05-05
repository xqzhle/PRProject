unit Unit30;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, dxRibbonForm, ImgList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxRibbon, AdvSmoothMessageDialog,AdvStyleIF, AdvGlowButton,
  Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, AcReport_TLB, Menus, OleServer,
  dxSkinsCore, dxSkinsDefaultPainters, AcReport_TLB_Int;

type
  TForm30 = class(TdxRibbonForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ImageList3: TImageList;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    Label9: TLabel;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    DBAdvGrid1: TDBAdvGrid;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    ComboBox23: TComboBox;
    Label5: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    AcRptEngine1: TAcRptEngine;
    ComboBox2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form30: TForm30;
  //stlID:TStrings;
 // y,yy:Boolean;
implementation

uses DbUnit, MainUnit, SaveBXUnit;

{$R *.dfm}
var
sqlstr,sqlstr1,sqlstr2:string;

procedure TForm30.AdvGlowButton1Click(Sender: TObject);
begin
      data1.ds141.Close;
      Data1.ds141.sql.Text:=sqlstr;
      data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
end;

procedure TForm30.AdvGlowButton2Click(Sender: TObject);
begin
      sqlstr2:='';

      if (ComboBox1.Text='') and (ComboBox2.Text='') and (Edit2.Text='') and (Edit1.Text='') then
      begin
      data1.ds141.Close;
      Data1.ds141.sql.Text:=sqlstr+sqlstr1;
       data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
      Exit;
      end;
      if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') and (Edit1.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.creid='''+combobox2.Text+''') and (a.address='''+edit1.Text+''')';
       data1.ds141.Close;
      Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
      Exit;
      end;
       if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') and (Edit2.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.creid='''+combobox2.Text+''') and (a.tel='''+edit2.Text+''')';
      data1.ds141.Close;;
      Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
      Exit;
      end;
       if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.creid='''+combobox2.Text+''') ';
      data1.ds141.Close;
      Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
      Exit;
      end;
       if (ComboBox1.Text<>'') and (Edit1.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.address='''+edit1.Text+''') ';
       data1.ds141.Close;
      Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
      Exit;
      end;
      if (ComboBox1.Text<>'') and (Edit2.Text<>'') then
      begin
      sqlstr2:=' and (a.shopname='''+combobox1.Text+''') and (a.tel='''+edit2.Text+''') ';
       data1.ds141.Close;
      Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
      Exit;
      end ;
       if (ComboBox2.Text<>'') and (Edit1.Text<>'') then
      begin
      sqlstr2:=' and (a.creid='''+combobox2.Text+''') and (a.address='''+edit1.Text+''') ';
      data1.ds141.Close;
      Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
      Exit;
      end;
       if (ComboBox2.Text<>'') and (Edit2.Text<>'') then
      begin
      sqlstr2:=' and (a.creid='''+combobox2.Text+''') and (a.tel='''+edit2.Text+''') ';
       data1.ds141.Close;
      Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
      Exit;
      end;

        if ComboBox1.Text<>'' then
        begin
        sqlstr2:=' and (a.shopname='''+combobox1.Text+''')';
        data1.ds141.Close;
      Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
      Exit;
        end;
        if ComboBox2.Text<>'' then
        begin
        sqlstr2:=' and (a.creid='''+combobox2.Text+''')';
        data1.ds141.Close;
        Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2;
       data1.ds141.Open;
      Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
      Exit;
      end;


end;

procedure TForm30.AdvGlowButton6Click(Sender: TObject);
begin
    close;
end;



procedure TForm30.DateTimePicker1CloseUp(Sender: TObject);
begin
   sqlstr1:=' where  (a.credate>='''+datetimetostr(DateTimePicker1.DateTime)+''') and (a.credate<='''+datetimetostr(DateTimePicker2.DateTime)+''')' ;
end;

procedure TForm30.DBAdvGrid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
   if (DBAdvGrid1.Cells[4,ARow]=trim('���ϵ�')) then AFont.Color:=clred;
end;

procedure TForm30.DBAdvGrid1Resize(Sender: TObject);
begin
     DBAdvGrid1.AutoSizeColumns(False,2); //�������ݵ����п�
end;

procedure TForm30.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Edit2.Text<>'' then  Edit2.Text:='';

end;

procedure TForm30.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Edit1.Text<>'' then  Edit1.Text:='';
end;

procedure TForm30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Data1.ds141.Close;
end;

procedure TForm30.FormShow(Sender: TObject);
begin
      DBAdvGrid1.SetStyle(gsOffice2007Luna);
      DateTimePicker1.Date:=Date;
      DateTimePicker2.Date:=Date;
      Data1.cmd3.Close;
      Data1.cmd3.sql.Text:='select shopname from tshop where shopid<>0';
      Data1.cmd3.Open;
      ComboBox1.Items.Clear;
      if not Data1.cmd3.IsEmpty then
      begin
        while not Data1.cmd3.Eof do
        begin
          ComboBox1.Items.Add(Data1.cmd3.FieldByName('shopname').AsString);
          Data1.cmd3.Next;
        end;
      end;
      Data1.cmd3.Close;
      ComboBox2.Clear;
//      Data1.cmd3.CommandText:='';
//      Data1.cmd3.CommandText:='select name from tUser where type<>2';
//      Data1.cmd3.Open;
//      ComboBox2.Items.Clear;
//      if not Data1.cmd3.IsEmpty then
//      begin
//        while not Data1.cmd3.Eof do
//        begin
//          ComboBox2.Items.Add(Data1.cmd3.FieldByName('name').AsString);
//          Data1.cmd3.Next;
//        end;
//      end;
//      Data1.cmd3.Close;
      sqlstr:='select a.id as ���,a.Creid as ����,a.ShopID as ���,a.Shopname as �ŵ�����,a.credate as Ͷ��ʱ��,case when a.ins=''1'' then ''δ����'' when a.ins=''2'' then ''�Ѵ���'' '+
      ' when a.ins=''3'' then ''���ϵ�'' else ''δ����'' end as ״̬,a.custid as �ͻ����,a.custname as �ͻ�����,a.address as ��ַ,a.tel as �绰,'+
      'a.memo as Ͷ������,a.cljg as ������,a.clr as ������ from tttousu a   ';
       sqlstr1:=' where  (a.credate>='''+datetimetostr(DateTimePicker1.DateTime)+''') and (a.credate<='''+datetimetostr(DateTimePicker2.DateTime)+''')' ;
       Data1.ds141.Close;;
       Data1.ds141.sql.Text:=sqlstr+sqlstr1;
       data1.ds141.Open;
       Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
       data1.ds141.ReadOnly:=True;
end;

procedure TForm30.N1Click(Sender: TObject);
begin
      if not Data1.ds141.Active then   Exit;
    if Data1.ds141.IsEmpty then Exit;
    if data1.ds141.FieldByName('״̬').AsString='δ����' then
    begin
       SaveBXForm.Caption:='����Ͷ��';
       SaveBXForm.Edit1.Text:=Data1.ds141.FieldByName('���').AsString;
       SaveBXForm.ShowModal;
       Data1.ds141.Close;
       Data1.ds141.Open;
    end;
end;

procedure TForm30.N2Click(Sender: TObject);
var
 rpt_path:string;
 djsn:string;
begin
      if not Data1.ds141.Active then   Exit;
      if Data1.ds141.IsEmpty then Exit;
       rpt_path := ExtractFilePath(ParamStr(0)) + '\report\';
//       if DBEdit1.Text='' then
//      begin
//        ShowSmoothMessage('û�пͻ����ϲ��ܱ��ޣ�',tsoffice2007Luna);
//        exit;
//      end;
//      if Memo1.Text='' then
//      begin
//         ShowSmoothMessage('�������ݲ���Ϊ�գ�',tsoffice2007Luna);
//        exit;
//      end;
       // djsn:=FormatDateTime('yyyyMMddhhmmss',Now);
        with Data1.ds141 do
        begin
          ACRptEngine1.Init;
          ACRptEngine1.AddVariable('coutname', FieldByName('�ͻ�����').AsString) ;
          ACRptEngine1.AddVariable('coutid', FieldByName('�ͻ����').AsString) ;
          ACRptEngine1.AddVariable('coutaddress', FieldByName('��ַ').AsString) ;
          ACRptEngine1.AddVariable('counttel', FieldByName('�绰').AsString) ;
          ACRptEngine1.AddVariable('shopname', FieldByName('�ŵ�����').AsString) ;
          ACRptEngine1.AddVariable('bdate', datetimetostr(now)) ;
          ACRptEngine1.AddVariable('memo', FieldByName('Ͷ������').AsString) ;
          ACRptEngine1.AddVariable('crename', loginname) ;
          AcRptEngine1.AddVariable('sn',FieldByName('����').AsString);
        end;
       // b8:= NumToChnStr(StrToFloat(b6),True);
       //  ACRptEngine1.AddGlobalVariable('b8', b8) ;
        ACRptEngine1.SetReportFile(rpt_path+'tsd.apt');
        //ACRptEngine1.Preview;
        ACRptEngine1.ShowDesigner;


end;

procedure TForm30.RadioButton1Click(Sender: TObject);
begin
       Data1.ds141.Close;
       Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2+' and a.ins=0';
       data1.ds141.Open;
       Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
end;

procedure TForm30.RadioButton2Click(Sender: TObject);
begin
       Data1.ds141.Close;
       Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2+' and a.ins=1';
       data1.ds141.Open;
       Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
end;

procedure TForm30.RadioButton3Click(Sender: TObject);
begin
       Data1.ds141.Close;
       Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2+' and a.ins=2';
       data1.ds141.Open;
       Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
end;

procedure TForm30.RadioButton4Click(Sender: TObject);
begin
       Data1.ds141.Close;
       Data1.ds141.sql.Text:=sqlstr+sqlstr1+sqlstr2+' and a.ins=3';
       data1.ds141.Open;
       Label1.Caption:='�ܹ���'+IntToStr(Data1.ds141.RecordCount)+' ����¼';
end;

end.
