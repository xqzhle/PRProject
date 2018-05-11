unit MdgpUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzButton, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, ComCtrls, AdvUtil;

type
  TMdgpForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    StatusBar1: TStatusBar;
    RzToolButton2: TRzToolButton;
    sSaveDialog1: TSaveDialog;
    DBAdvGrid2: TDBAdvGrid;
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure DBAdvGrid2Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MdgpForm: TMdgpForm;

implementation
uses DbUnit;
{$R *.dfm}

procedure TMdgpForm.ComboBox1Change(Sender: TObject);
begin
  ComboBox2.ItemIndex := ComboBox1.ItemIndex;
end;

procedure TMdgpForm.DBAdvGrid2DblClick(Sender: TObject);
var
   sqlstr:string;
begin
//  if Data1.ds71.IsEmpty then Exit;
//  if Power[1]=False then
//  begin
//    ShowMessage('��û��Ȩ�ޣ�');
//    Exit;
//  end;
  if (IDYES <> Application.MessageBox('ȷ��ɾ����������?', pwidechar(Application.Title),
    MB_YesNo + MB_IconQuestion)) then      Exit;
  if RadioButton1.Checked then
  begin
    sqlstr :='delete from tbmdzpxc where sid='''+Data1.ds71.FieldByName('id').AsString+''' ';
  end
  else
  begin
    sqlstr := 'delete from tbStock_In where id='''+Data1.ds71.FieldByName('id').AsString+''' ';
  end;
  Data1.sds1.close;
  Data1.sds1.SQL.Text := sqlstr;
  try
    Data1.sds1.ExecSQL;
    ShowMessage('ɾ���ɹ���');
    Data1.ds71.Close;
    Data1.ds71.Open;
    StatusBar1.Panels[1].Text := '����'+Inttostr(Data1.ds71.RecordCount)+'����¼';
  except
     ShowMessage('ɾ��ʧ�ܣ�')
  end;

end;

procedure TMdgpForm.DBAdvGrid2Resize(Sender: TObject);
begin
  DBAdvGrid2.AutoSizeColumns(False,20); //�������ݵ����п�
end;

procedure TMdgpForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.ds71.Close;
end;

procedure TMdgpForm.FormCreate(Sender: TObject);
begin
  ComboBox1.Clear;
  ComboBox2.Clear;
  RadioButton1.Checked := True;
end;

procedure TMdgpForm.RzToolButton1Click(Sender: TObject);
var
  wherestr,sqlstr:string;
begin
  if (RadioButton1.Checked=False) and (RadioButton2.Checked=False) then
  begin
    ShowMessage('��ѡ������');
    Exit;
  end;
  if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') then  wherestr := ' and x.ShopCode='''+combobox2.Text+''' ';
  if RadioButton1.Checked then
  begin
    sqlstr :='select x.sid as id,x.CreateDate as �³�ʱ��,A.Bottleid as ��ƿ���,A.BottleBar as ��ƿ��ǩ,A.gptm as ��ƿ����,C.Spec_Name as ��ƿ���,x.Remark as λ��,A.MakeTime as ����ʱ��,A.NextProbe as �¼�����,'+
         'case when A.instate=''0'' then ''����'' when A.instate=''1'' then ''����'' when A.instate=''2'' then ''��ʧ'' else ''���'' end as ״̬,case when a.Bottleright=''0'' then ''����'' else ''������'' end as ��Ȩ'+
         ' from tbmdzpxc x left join tbBottle_Dossier  A on x.BottleBar=A.Bottleid left join tbBottle_Spec'+' C On C.Spec_ID=A.SpecID  '+
         ' where (A.BottleAction<>''4'') '+wherestr+' order by x.CreateDate desc  ';
  end
  else
  begin
    sqlstr := 'select x.id as id,x.CreateDate as ����ʱ��,A.Bottleid as ��ƿ���,A.BottleBar as ��ƿ��ǩ,A.gptm as ��ƿ����,C.Spec_Name as ��ƿ���,A.MakeTime as ����ʱ��,A.NextProbe as �¼�����,'+
         'case when A.instate=''0'' then ''����'' when A.instate=''1'' then ''����'' when A.instate=''2'' then ''��ʧ'' else ''���'' end as ״̬,case when a.Bottleright=''0'' then ''����'' else ''������'' end as ��Ȩ'+
         ' from tbStock_In x left join tbBottle_Dossier  A on x.BottleBar=A.Bottleid left join tbBottle_Spec'+' C On C.Spec_ID=A.SpecID '+
         ' where (A.BottleAction<>''4'') '+wherestr+'  order by x.CreateDate desc ';
  end;
  with Data1.ds71 do
  begin
    close;
    SQL.Text := sqlstr;
    Open;
    StatusBar1.Panels[1].Text := '����'+Inttostr(Data1.ds71.RecordCount)+'����¼';
  end;
end;

procedure TMdgpForm.RzToolButton2Click(Sender: TObject);
begin
  if Data1.ds71.IsEmpty then  Exit;
  if sSaveDialog1.Execute then
  begin
    try
      if pos('.', ssavedialog1.FileName) > 0 then
        dbadvgrid2.SaveToXLS(ssavedialog1.FileName)
      else
        dbadvgrid2.SaveToXLS(ssavedialog1.FileName + '.xls');
      ShowMessage('�����ɹ���');
    except
      ShowMessage('����ʧ�ܣ�');
    end;
  end;
end;

end.
