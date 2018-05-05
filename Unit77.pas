unit Unit77;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxRibbon,dxRibbonForm ,AdvStyleIF, AdvSmoothMessageDialog,StdCtrls,
  AdvGlowButton, ImgList, dxSkinsCore, dxSkinsDefaultPainters;

type
  TForm77 = class(TdxRibbonForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Memo1: TMemo;
    ImageList3: TImageList;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form77: TForm77;

implementation

uses zcomm, DbUnit, MainUnit;

{$R *.dfm}

procedure TForm77.AdvGlowButton1Click(Sender: TObject);
var
  sid,mdid :string;
  list:TStringList;
  I:Integer;
begin
  List := TStringList.Create;
    if Memo1.Text='' then
    begin
      ShowSmoothMessage('请输入报错内容');
      Memo1.SetFocus;
      Exit;
    end;
  AdvSmoothMessageDialog1.Caption := form77.Caption;
  AdvSmoothMessageDialog1.HTMLText.Text := '确认要作废订单吗？';
 case AdvSmoothMessageDialog1.ExecuteDialog of
  mryes:
  begin
    if Edit6.Text <> '' then
    begin
      data1.sqlcmd1.Close;
      data1.sqlcmd1.SQL.Text:='select id,shopid from tbisent where bisentid='''+edit2.Text+''' ';
      data1.sqlcmd1.Open;
      if not data1.sqlcmd1.IsEmpty then
      begin
        sid := data1.sqlcmd1.FieldByName('id').AsString;
        mdid := data1.sqlcmd1.FieldByName('shopid').AsString;
      end;
      List.CommaText := Edit6.Text;
      for I := 0 to List.Count - 1 do
      begin
        if list[I]='' then Break;
        Data1.sqlcmd1.Close;
        Data1.sqlcmd1.SQL.Text:='Select BottleBar from tbMDZPXC Where (BottleBar='''+list[I]+''') ';// and (shopcode='''+shopid+''')';
        Data1.sqlcmd1.Open;
        if Data1.sqlcmd1.IsEmpty then
        begin
          try
            data1.sqlcmd1.Close;
            Data1.sqlcmd1.SQL.Text:='Insert Into tbMDZPXC (ShopCode, BottleBar, CarCode, CDate, Instate,CreateUser, CreateDate) Values '+
            ' ('''+mdid+''','''+list[I]+''',''订单报错'','''+gettime+''',0,'''+Loginname+''','''+gettime+''')';
            data1.sqlcmd1.ExecSQL;
          except

          end;
        end;
      end;
      data1.sqlcmd1.Close;
      data1.sqlcmd1.SQL.Text:='delete from tb_khgp where bistid='''+sid+''' ';
      data1.sqlcmd1.ExecSQL;
      data1.sqlcmd1.Close;
      data1.sqlcmd1.SQL.Text:='delete from tb_khgpTJ where bistid='''+sid+''' ';
      data1.sqlcmd1.ExecSQL;
    end;
    if Edit7.Text <>'' then
    begin
      List.CommaText := Edit7.Text;
      for I := 0 to List.Count - 1 do
      begin
        if list[I]='' then Break;
        try
           data1.sqlcmd1.Close;
           Data1.sqlcmd1.SQL.Text:='delete from tbStock_In where BottleBar='''+list[I]+''' ';
           data1.sqlcmd1.ExecSQL;
        except

        end;
      end;
    end;
    data1.cmd1.Close;
    Data1.cmd1.SQL.Text:='update tbisent set type=''3'',status=3,bcmemo='''+memo1.Text+''',hddate=GETDATE() where bisentid='''+edit2.Text+''' ';
    try
      Data1.cmd1.Execute;
      Data1.cmd1.Close;
      data1.sqlcmd1.Close;
      data1.sqlcmd1.SQL.Text:='insert into tbisenterror (shopname,bisentid,credate,crename,bcmemo) values '+
      ' ('''+edit1.Text+''','''+edit2.Text+''','''+edit5.Text+''','''+Loginname+''','''+memo1.Text+''')';
      Data1.sqlcmd1.Execute;
      Data1.sqlcmd1.Close;
      Self.Close;
      list.Free;
    except
       ShowSmoothMessage('报错失败');
    end;
  end;
 end;
end;

procedure TForm77.AdvGlowButton6Click(Sender: TObject);
begin
    close;
end;

procedure TForm77.FormShow(Sender: TObject);
begin
     Memo1.Lines.Clear;
     edit5.Text:=gettime;
end;

end.
