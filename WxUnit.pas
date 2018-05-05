unit WxUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RzDBGrid, RzTabs, W7Classes, W7Panels, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, ComCtrls;

type
  TWxForm = class(TForm)
    W7Panel1: TW7Panel;
    DBAdvGrid1: TDBAdvGrid;
    DBAdvGrid2: TDBAdvGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure FormShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure DBAdvGrid1DblClick(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WxForm: TWxForm;
  wxstype:Integer;
implementation
uses DbUnit,UpwxUnit;
{$R *.dfm}


procedure TWxForm.DBAdvGrid1DblClick(Sender: TObject);
begin
  if not Data1.UniQuery2.IsEmpty then
  begin
    UpwxForm.Edit2.Text:=data1.UniQuery2.FieldByName('�ͻ����').AsString;
    UpwxForm.GroupBox2.Visible:=False;
    UpwxForm.ShowModal;
  end;
end;

procedure TWxForm.DBAdvGrid2DblClick(Sender: TObject);
begin
  if not Data1.UniQuery2.IsEmpty then
  begin
    UpwxForm.Edit2.Text:=data1.UniQuery2.FieldByName('�ͻ����').AsString;
    UpwxForm.GroupBox2.Visible:=True;
    UpwxForm.Edit8.Text:=Data1.UniQuery2.FieldByName('��Ʒ����').AsString;
    UpwxForm.Edit9.Text:=Data1.UniQuery2.FieldByName('����').AsString;
    UpwxForm.Edit10.Text:=Data1.UniQuery2.FieldByName('����').AsString;
    UpwxForm.Edit14.Text:=Data1.UniQuery2.FieldByName('ʵ�ս��').AsString;
    UpwxForm.Edit15.Text:=Data1.UniQuery2.FieldByName('����').AsString;
    UpwxForm.ShowModal;
  end;
end;

procedure TWxForm.FormShow(Sender: TObject);
begin
  if wxstype=1 then
  begin
    TabSheet1.Show;
    
  end
  else
  begin
    
  end;
end;

procedure TWxForm.TabSheet1Show(Sender: TObject);
begin
    with Data1.UniQuery2 do
    begin
      Close;                                                                                                              //a.CreateDate as CreateDate,
      SQL.Text:=' select top 50 a.barcode as �ͻ����,a.namec as �ͻ�����,a.tel as �ֻ�����,a.Contact as �ͻ��绰,a.SendPeriod as ¥��, '+
       ' b.type_name as �ͻ�����,d.namec as ��������,e.namec as �ֵ�����,a.address as �ͻ���ַ '+
       ' from tbCustomer_info a left join tbCustomer_Type b on a.typec=b.type_id '  +
       ' left join tshop c on a.psid=c.shopid left join tbkh_qy d on (a.qyid=d.id) left join tbkh_jd e on (a.jdid=e.id) where a.Customer_ID=2';
      open;
    end;
    DBAdvGrid1.AutoSizeColumns(False,20); //�������ݵ����п�
end;

procedure TWxForm.TabSheet2Show(Sender: TObject);
begin
    with Data1.UniQuery2 do
    begin
      Close;                                                                                                              //a.CreateDate as CreateDate,
      SQL.Text:='select a.bisentid as ����,a.optid as �µ���,case when a.Fsktype=0 then ''�ֽ�'' when a.Fsktype=1 then ''΢��֧��'' end as �տʽ,'+
       'a.corpid as �ͻ����,a.empname as ������,a.corpname as �ͻ�,a.tel as ��ϵ�绰,b.pricename as ��Ʒ����,b.dj as ����,b.sl as ����,b.yfmoney as �Ż�,b.smoney as �˷�,b.money as ʵ�ս��, '+
       ' a.address as ������ַ,a.yydate as ԤԼʱ��,a.optdate as ����ʱ��,case when a.type=''1'' then ''ԤԼ'' when a.type=''2'' then ''�Ӽ�'' else ''����'' end as ��������,a.memo as ��ע '+
       'from tbisent a right join tbisentprice b on a.bisentid=b.bisentid left join tbCustomer_Info c on a.corpid=c.barcode where (a.shopid='''') and (a.ddstype=1) and (a.status<>1) and (a.status<>3) and (a.type<>3) order by a.optdate';
      open;
    end;
    DBAdvGrid2.AutoSizeColumns(False,20); //�������ݵ����п�
end;

end.
