unit SqgUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,AdvStyleIF,
  cxLookAndFeelPainters, cxClasses, dxRibbon, ExtCtrls, AdvPanel;

type
  TSqgForm = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    Button2: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SqgForm: TSqgForm;

implementation
 uses DbUnit;
{$R *.dfm}

procedure TSqgForm.Button1Click(Sender: TObject);
begin
  if ComboBox1.Text='' then
  begin
    ShowMessage('请选择送气工');
    Exit;
  end;
  Data1.sqlcmd1.Close;
  Data1.sqlcmd1.SQL.Text:='update tbisent set empname='''+combobox1.Text+''' where bisentid='''+edit1.Text+''' ';
  try
    Data1.sqlcmd1.ExecSQL;
    Data1.sqlcmd1.Close;
    ShowMessage('指派送气工成功');
    if Edit2.Text='2' then
    begin
      Data1.ss6.Close;
      Data1.ss6.Open;
    end;
    if Edit2.Text='1' then
    begin
      Data1.cd1.Close;
      Data1.cd1.Open;
    end;
    self.Close;
  except
    ShowMessage('指派送气工失败');
  end;
end;

procedure TSqgForm.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TSqgForm.FormCreate(Sender: TObject);
begin
  edit1.Clear;
  ComboBox1.Clear;

end;

procedure TSqgForm.FormShow(Sender: TObject);
begin
   Data1.sqlcmd1.Close;
      Data1.sqlcmd1.SQL.Text:='select  empname from tb_yginfo where gwname like ''%送%''  order by empname';
      Data1.sqlcmd1.Open;
      ComboBox1.Items.Clear;
       if not Data1.sqlcmd1.IsEmpty then
       begin
         while not Data1.sqlcmd1.Eof do
         begin
            ComboBox1.Items.Add(Data1.sqlcmd1.FieldByName('empname').AsString);
            Data1.sqlcmd1.Next;
         end;
       end;
       data1.sqlcmd1.Close;
       ComboBox1.ItemIndex:=-1;
end;

end.
