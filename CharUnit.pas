unit CharUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, W7Classes, W7Panels,
  RzTabs,AdvSmoothMessageDialog, ImgList, RzButton, ComCtrls, DBChart,DateUtils;

type
  TCharForm = class(TForm)
    Chart1: TChart;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    W7Panel1: TW7Panel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    RzToolButton1: TRzToolButton;
    ImageList1: TImageList;
    RzToolButton2: TRzToolButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    W7Panel2: TW7Panel;
    Label3: TLabel;
    Label4: TLabel;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    DateTimePicker4: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Chart2: TChart;
    CheckBox1: TCheckBox;
    TabSheet3: TRzTabSheet;
    W7Panel3: TW7Panel;
    Label5: TLabel;
    Label6: TLabel;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    DateTimePicker6: TDateTimePicker;
    DateTimePicker5: TDateTimePicker;
    CheckBox2: TCheckBox;
    Series1: TPieSeries;
    Series2: TPieSeries;
    DBChart1: TDBChart;
    Series3: TPieSeries;
    TabSheet4: TRzTabSheet;
    W7Panel4: TW7Panel;
    Label7: TLabel;
    Label8: TLabel;
    RzToolButton8: TRzToolButton;
    DateTimePicker8: TDateTimePicker;
    DateTimePicker7: TDateTimePicker;
    Chart3: TChart;
    Series4: TPieSeries;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    TabSheet5: TRzTabSheet;
    W7Panel5: TW7Panel;
    Label9: TLabel;
    Label10: TLabel;
    RzToolButton7: TRzToolButton;
    DateTimePicker9: TDateTimePicker;
    DateTimePicker10: TDateTimePicker;
    DBChart2: TDBChart;
    Series5: TFastLineSeries;
    RzToolButton9: TRzToolButton;
    Label11: TLabel;
    ComboBox1: TComboBox;
    TabSheet6: TRzTabSheet;
    W7Panel6: TW7Panel;
    Label12: TLabel;
    Label13: TLabel;
    RzToolButton10: TRzToolButton;
    RzToolButton11: TRzToolButton;
    Label14: TLabel;
    DateTimePicker11: TDateTimePicker;
    DateTimePicker12: TDateTimePicker;
    ComboBox2: TComboBox;
    DBChart3: TDBChart;
    FastLineSeries1: TFastLineSeries;
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RzToolButton10Click(Sender: TObject);
    procedure RzToolButton11Click(Sender: TObject);
  private
    procedure getuserbb(stype:Integer;isqy:Boolean);
    procedure getbisentbb(stype:Integer;iswc:Boolean);
    procedure getmdxsbb(stype:Integer;iswc:Boolean);
    procedure gethwbb;
    procedure getxsbb(ismonth:Boolean);
    procedure getadduser(ismonth:Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CharForm: TCharForm;

implementation
uses DbUnit;
{$R *.dfm}

procedure TCharForm.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date:=Now;
  DateTimePicker2.Date:=Now;
  DateTimePicker3.Date:=Now;
  DateTimePicker4.Date:=Now;
  DateTimePicker5.Date:=Now;
  DateTimePicker6.Date:=Now;
  DateTimePicker7.Date:=Now;
  DateTimePicker8.Date:=Now;
  DateTimePicker9.Date:=Now;
  DateTimePicker10.Date:=Now;
  DateTimePicker11.Date:=Now;
  DateTimePicker12.Date:=Now;
  RadioButton5.Checked := True;
end;

procedure TCharForm.getadduser(ismonth: Boolean);
var
  i:Integer;
  sqlstr,wherestr,date2,date1:string;
begin
  if ismonth then
  begin
    date1:=datetostr(strtodate(IntToStr(YearOf(now))+'-'+inttostr(MonthOf(now))+'-01'));
    date2:=datetostr(now);
    date1:=date1+' 00:00:00';
    date2:=date2+' 23:59:59';
    wherestr := ' where CreateDate>='''+date1+''' and CreateDate<='''+date2+''' ';
  end
  else
  begin
     wherestr :=' where CreateDate>='''+DateTimeToStr(DateTimePicker12.DateTime)+''' and CreateDate<='''+DateTimeToStr(DateTimePicker11.DateTime)+''' ';
  end;
  sqlstr := 'SELECT COUNT(id) as sl,CONVERT(VARCHAR(10), CreateDate,120) as cdate FROM tbCustomer_Info ';
  if ComboBox2.Text<>'' then
  begin
    with Data1.sds1 do
    begin
      close;
      SQL.Text := 'select shopid from tshop where shopname='''+combobox2.Text+''' ';
      Open;
      if not IsEmpty then
      begin
        wherestr := wherestr+' and shopid='''+Data1.sds1.FieldByName('shopid').AsString+''' ';
      end;
    end;
  end;
  with Data1.sqlcmd1 do
  begin
    FastLineSeries1.Clear;
    Close;
    sql.Text:=sqlstr+wherestr+' group by CONVERT(VARCHAR(10), CreateDate,120) order by CONVERT(VARCHAR(10), CreateDate,120)';
    open;
    if not IsEmpty then
    begin
      for I := 0 to RecordCount-1 do
      begin
         FastLineSeries1.AddXY(I+1,FieldByName('sl').AsInteger,FieldByName('cdate').AsString);
         Next;
      end;
    end;
  end;
end;

procedure TCharForm.getbisentbb(stype: Integer;iswc:Boolean);
var
  ssum,i:Integer;
  sqlstr:string;
begin
  with Data1.sqlcmd1 do
  begin
    Series2.Clear;
    if iswc then
    begin
      if stype=1 then sqlstr:='select count(id) as sl from tbisent where (status=1) and (type<>''3'') '
      else sqlstr:='select count(id) as sl from tbisent where (status=1) and (type<>''3'') and optdate>='''+DateTimeToStr(DateTimePicker3.DateTime)+''' and optdate<='''+DateTimeToStr(DateTimePicker4.DateTime)+''' ';
    end
    else
    begin
      if stype=1 then sqlstr:='select count(id) as sl from tbisent'
      else sqlstr:='select count(id) as sl from tbisent where (type<>''3'') and optdate>='''+DateTimeToStr(DateTimePicker3.DateTime)+''' and optdate<='''+DateTimeToStr(DateTimePicker4.DateTime)+''' ';
    end;

    Close;
    sql.Text:=sqlstr;
    open;
    ssum:=FieldByName('sl').AsInteger;
    if ssum>1 then
    begin
      if iswc then
      begin
        if stype=1 then sqlstr:='SELECT COUNT(id) as sl,case when  ddstype=2 then ''门店员'' when ddstype=5 then ''送气工'' when ddstype=0 then ''接线员'' when ddstype=1 then ''微信订单'' end as name FROM tbisent where (status=1) and (type<>''3'') group by ddstype order by sl desc '
        else sqlstr:='SELECT COUNT(id) as sl,case when  ddstype=2 then ''门店员'' when ddstype=5 then ''送气工'' when ddstype=0 then ''接线员'' when ddstype=1 then ''微信订单'' end as name FROM tbisent where (status=1) and (type<>''3'') and optdate>='''+DateTimeToStr(DateTimePicker3.DateTime)+''' and optdate<='''+DateTimeToStr(DateTimePicker4.DateTime)+''' group by ddstype order by sl desc ';
      end
      else
      begin
        if stype=1 then sqlstr:='SELECT COUNT(id) as sl,case when  ddstype=2 then ''门店员'' when ddstype=5 then ''送气工'' when ddstype=0 then ''接线员'' when ddstype=1 then ''微信订单'' end as name FROM tbisent group by ddstype order by sl desc '
        else sqlstr:='SELECT COUNT(id) as sl,case when  ddstype=2 then ''门店员'' when ddstype=5 then ''送气工'' when ddstype=0 then ''接线员'' when ddstype=1 then ''微信订单'' end as name FROM tbisent where optdate>='''+DateTimeToStr(DateTimePicker3.DateTime)+''' and optdate<='''+DateTimeToStr(DateTimePicker4.DateTime)+''' group by ddstype order by sl desc ';
      end;
       Close;
       sql.Text:=sqlstr;
       open;
       if not IsEmpty then
       begin
         for I := 0 to RecordCount-1 do
         begin
           Series2.AddPie(strtofloat(formatfloat('0.00',FieldByName('sl').AsInteger/ssum*100)),FieldByName('name').AsString+'  '+FieldByName('sl').AsString);
           Next;
         end;
       end;
    end
    else ShowSmoothMessage('没有客户数据不能生成图表');
  end;

end;

procedure TCharForm.gethwbb;
var
  ssum,i:Integer;
  sqlstr,wherestr:string;
begin

  with Data1.sqlcmd1 do
  begin
    Series4.Clear;
    sqlstr := 'select count(id) as sl from ttbill ';
    wherestr := 'where billdate>='''+DateTimeToStr(DateTimePicker7.DateTime)+''' and billdate<='''+DateTimeToStr(DateTimePicker8.DateTime)+''' ';
    if RadioButton3.Checked then wherestr := wherestr+' and type=''未接'' ';
    if RadioButton4.Checked then wherestr := wherestr+' and type=''已接'' ';
    Close;
    sql.Text:=sqlstr+wherestr;
    open;
    ssum:=FieldByName('sl').AsInteger;
    if ssum>1 then
    begin
       sqlstr := 'select count(id) as sl,SUM(case when type=''未接'' then 1 end) as wj,SUM(case when type=''已接'' then 1 end) as yj,ext from ttbill '+wherestr+' group by ext ';
       Close;
       sql.Text:=sqlstr;
       open;
       if not IsEmpty then
       begin
         for I := 0 to RecordCount-1 do
         begin
           if RadioButton5.Checked then
             Series4.AddPie(strtofloat(formatfloat('0.00',FieldByName('sl').AsInteger/ssum*100)),' 话务: '+FieldByName('ext').AsString+' 数量: '+FieldByName('sl').AsString+' 未接: '+FieldByName('wj').AsString+' 已接: '+FieldByName('yj').AsString)
           else
             Series4.AddPie(strtofloat(formatfloat('0.00',FieldByName('sl').AsInteger/ssum*100)),' 话务: '+FieldByName('ext').AsString+' 数量: '+FieldByName('sl').AsString);
           Next;
         end;
       end;
    end
    else ShowSmoothMessage('没有数据不能生成图表');
  end;
end;

procedure TCharForm.getmdxsbb(stype: Integer; iswc: Boolean);
var
  ssum,i:Integer;
  sqlstr:string;
begin
  with Data1.sqlcmd1 do
  begin
    Series3.Clear;
    if stype=1 then sqlstr:='select count(id) as sl from tbisent where (status=1) and (type<>''3'')'
    else
    begin
      if iswc then sqlstr:='select count(id) as sl from tbisent where (status=1) and (type<>''3'') and optdate>='''+DateTimeToStr(DateTimePicker5.DateTime)+''' and optdate<='''+DateTimeToStr(DateTimePicker6.DateTime)+''' '
      else sqlstr:='select count(id) as sl from tbisent where (status=1) and (type<>''3'') and hddate>='''+DateTimeToStr(DateTimePicker5.DateTime)+''' and hddate<='''+DateTimeToStr(DateTimePicker6.DateTime)+''' ';
    end;
    Close;
    sql.Text:=sqlstr;
    open;
    ssum:=FieldByName('sl').AsInteger;
    if ssum>1 then
    begin
      if stype=1 then sqlstr:='SELECT COUNT(a.id) as sl,sum(a.money) as money,case when b.shopname IS null then ''未知门店'' else b.shopname end as name '+
      ' FROM tbisent a left join tshop b on (a.shopid=b.shopid) where a.shopid<>''anyType{}'' and (a.status=1) and (a.type<>''3'') group by b.shopname order by sl desc '
      else
      begin
        if iswc then sqlstr:='SELECT COUNT(a.id) as sl,sum(a.money) as money,case when b.shopname IS null then ''未知门店'' else b.shopname end as name FROM tbisent a left join tshop b on (a.shopid=b.shopid) where a.shopid<>''anyType{}'' and (a.status=1) and (a.type<>''3'') and a.optdate>='''+DateTimeToStr(DateTimePicker5.DateTime)+''' and a.optdate<='''+DateTimeToStr(DateTimePicker6.DateTime)+''' group by b.shopname order by sl desc '
        else sqlstr:='SELECT COUNT(a.id) as sl,sum(a.money) as money,case when b.shopname IS null then ''未知门店'' else b.shopname end as name FROM tbisent a left join tshop b on (a.shopid=b.shopid) where a.shopid<>''anyType{}'' and (a.status=1) and (a.type<>''3'') and a.hddate>='''+DateTimeToStr(DateTimePicker5.DateTime)+''' and a.hddate<='''+DateTimeToStr(DateTimePicker6.DateTime)+''' group by b.shopname order by sl desc ';
      end;
       Close;
       sql.Text:=sqlstr;
       open;
       if not IsEmpty then
       begin
         for I := 0 to RecordCount-1 do
         begin
           Series3.AddPie(strtofloat(formatfloat('0.00',FieldByName('sl').AsInteger/ssum*100)),FieldByName('name').AsString+'  '+FieldByName('sl').AsString+'  '+FieldByName('money').AsString);
           Next;
         end;
       end;
    end
    else ShowSmoothMessage('没有客户数据不能生成图表');
  end;

end;

procedure TCharForm.getuserbb(stype: Integer;isqy:Boolean);
var
  ssum,i:Integer;
  sqlstr:string;
begin
  with Data1.sqlcmd1 do
  begin
    Series1.Clear;

    if stype=1 then sqlstr:='select count(id) as sl from tbCustomer_Info'
    else sqlstr:='select count(id) as sl from tbCustomer_Info where CreateDate>='''+DateTimeToStr(DateTimePicker1.DateTime)+''' and CreateDate<='''+DateTimeToStr(DateTimePicker2.DateTime)+''' ';
    Close;
    sql.Text:=sqlstr;
    open;
    ssum:=FieldByName('sl').AsInteger;
    if ssum>1 then
    begin
      if isqy then
      begin
        if stype=1 then sqlstr:='SELECT COUNT(a.id) as sl,case when b.namec IS NULL then ''未知区域'' else b.namec end as name FROM tbCustomer_Info a left join tbkh_qy b on (a.qyid=b.id) group by b.namec order by sl desc '
        else sqlstr:='SELECT COUNT(a.id) as sl,case when b.namec IS NULL then ''未知区域'' else b.namec end as name FROM tbCustomer_Info a left join tbkh_qy b on (a.qyid=b.id) where a.CreateDate>='''+DateTimeToStr(DateTimePicker1.DateTime)+''' and a.CreateDate<='''+DateTimeToStr(DateTimePicker2.DateTime)+''' group by b.namec order by sl desc ';
      end
      else
      begin
        if stype=1 then sqlstr:='SELECT COUNT(a.id) as sl,case when b.namec IS NULL then ''未知区域'' else b.namec end as name FROM tbCustomer_Info a left join tbkh_jd b on (a.jdid=b.id) group by b.namec order by sl desc '
        else sqlstr:='SELECT COUNT(a.id) as sl,case when b.namec IS NULL then ''未知区域'' else b.namec end as name FROM tbCustomer_Info a left join tbkh_jd b on (a.jdid=b.id) where a.CreateDate>='''+DateTimeToStr(DateTimePicker1.DateTime)+''' and a.CreateDate<='''+DateTimeToStr(DateTimePicker2.DateTime)+''' group by b.namec order by sl desc ';
      end;
       Close;
       sql.Text:=sqlstr;
       open;
       if not IsEmpty then
       begin
         for I := 0 to RecordCount-1 do
         begin
           Series1.AddPie(strtofloat(formatfloat('0.00',FieldByName('sl').AsInteger/ssum*100)),FieldByName('name').AsString+'  '+FieldByName('sl').AsString);
           Next;
         end;
       end;
    end
    else ShowSmoothMessage('没有客户数据不能生成图表');
  end;

end;

procedure TCharForm.getxsbb(ismonth: Boolean);
var
  i:Integer;
  sqlstr,wherestr,date2,date1:string;
begin
  if ismonth then
  begin
    date1:=datetostr(strtodate(IntToStr(YearOf(now))+'-'+inttostr(MonthOf(now))+'-01'));
    date2:=datetostr(now);
    date1:=date1+' 00:00:00';
    date2:=date2+' 23:59:59';
    wherestr := ' and hddate>='''+date1+''' and hddate<='''+date2+''' ';
  end
  else
  begin
     wherestr :=' and hddate>='''+DateTimeToStr(DateTimePicker10.DateTime)+''' and hddate<='''+DateTimeToStr(DateTimePicker9.DateTime)+''' ';
  end;
  sqlstr := 'select sum(money) as money,CONVERT(VARCHAR(10), hddate,120) as hddate from tbisent where (status=1) and (type<>''3'')';
  if ComboBox1.Text<>'' then
  begin
    with Data1.sds1 do
    begin
      close;
      SQL.Text := 'select shopid from tshop where shopname='''+combobox1.Text+''' ';
      Open;
      if not IsEmpty then
      begin
        wherestr := wherestr+' and shopid='''+Data1.sds1.FieldByName('shopid').AsString+''' ';
      end;
    end;
  end;
  with Data1.sqlcmd1 do
  begin
    Series5.Clear;
    Close;
    sql.Text:=sqlstr+wherestr+' group by CONVERT(VARCHAR(10), hddate,120) order by CONVERT(VARCHAR(10), hddate,120)';
    open;
    if not IsEmpty then
    begin
      for I := 0 to RecordCount-1 do
      begin
         Series5.AddXY(I+1,FieldByName('money').AsFloat,FieldByName('hddate').AsString);
         Next;
      end;
    end;
  end;
end;

procedure TCharForm.RzToolButton10Click(Sender: TObject);
begin
  getadduser(False);
end;

procedure TCharForm.RzToolButton11Click(Sender: TObject);
begin
  getadduser(True);
end;

procedure TCharForm.RzToolButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked then  getuserbb(0,True)
  else   getuserbb(0,False);

end;

procedure TCharForm.RzToolButton2Click(Sender: TObject);
begin
  if RadioButton1.Checked then  getuserbb(1,True)
  else   getuserbb(1,False);
end;

procedure TCharForm.RzToolButton3Click(Sender: TObject);
begin
  getbisentbb(0,CheckBox1.Checked);
end;

procedure TCharForm.RzToolButton4Click(Sender: TObject);
begin
  getbisentbb(1,CheckBox1.Checked);
end;

procedure TCharForm.RzToolButton5Click(Sender: TObject);
begin
  getmdxsbb(0,CheckBox2.Checked);
end;

procedure TCharForm.RzToolButton6Click(Sender: TObject);
begin
  getmdxsbb(1,CheckBox2.Checked);
end;

procedure TCharForm.RzToolButton7Click(Sender: TObject);
begin
  getxsbb(False);
end;

procedure TCharForm.RzToolButton8Click(Sender: TObject);
begin
  gethwbb;
end;

procedure TCharForm.RzToolButton9Click(Sender: TObject);
begin
  getxsbb(True);
end;

end.
