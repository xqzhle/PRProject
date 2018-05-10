unit YwyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, dxRibbonForm, ImgList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbon,
  AdvSmoothMessageDialog, AdvStyleIF, AdvGlowButton,
  Grids, DBGrids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, AdvUtil;

type
  TYwyForm = class(TdxRibbonForm)
    TreeView1: TTreeView;
    ImageList1: TImageList;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ImageList2: TImageList;
    ImageList3: TImageList;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    Label9: TLabel;
    DBAdvGrid1: TDBAdvGrid;
    Label1: TLabel;
    AdvSmoothMessageDialog1: TAdvSmoothMessageDialog;
    procedure FormShow(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure DBAdvGrid1Resize(Sender: TObject);
    procedure DBAdvGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure selectshop(var shopname: string);
    //procedure saveshop;

  public
    { Public declarations }
    procedure FillTreeView(TreeView: TTreeView);
  end;

var
  YwyForm: TYwyForm;
  //stlID:TStrings;
  yy: Boolean;

implementation

uses
  DbUnit, Unit54;

{$R *.dfm}
var
  sqlstr,cname: string;

procedure TYwyForm.selectshop(var shopname: string);
begin
  Data1.ds31.Close;
  Data1.ds31.SQL.Text := sqlstr + ' where b.shopname=''' + shopname + ''' order by a.ywid+0 ';
  Data1.ds31.Open;
  Label1.Caption := '�ܹ���' + IntToStr(Data1.ds31.RecordCount) + ' ����¼';
end;

procedure TYwyForm.AdvGlowButton2Click(Sender: TObject);
begin
  if Data1.ds31.RecordCount <> 0 then
  begin
    yy := false;
    Form54.ShowModal;
  end;
end;

procedure TYwyForm.AdvGlowButton3Click(Sender: TObject);
begin

  yy := True;
  Form54.ShowModal;

end;

procedure TYwyForm.AdvGlowButton5Click(Sender: TObject);
var
  id: string;
begin
  if Data1.ds31.RecordCount <> 0 then
  begin
    id := Data1.ds31.FieldByName('���').AsString;

    AdvSmoothMessageDialog1.Caption := '��ʾ��Ϣ';
    AdvSmoothMessageDialog1.HTMLText.Text := 'ȷ��Ҫɾ��������';
    case AdvSmoothMessageDialog1.ExecuteDialog of
      mryes:
        begin
          Data1.ds31.Close;
          try
            Data1.sqlcmd1.Close;
            Data1.sqlcmd1.sql.Text := 'delete  from ttywy where ywid=''' + id + '''';
            Data1.sqlcmd1.ExecSQL;
            ShowSmoothMessage('�����Ѿ��ɹ�ɾ����', tsOffice2007Luna);
            Data1.ds31.Open;
          except

          end;
          Data1.sqlcmd1.Close;
        end;
      mrNo:
        Data1.ds31.Open;
    end;
  end;
end;

procedure TYwyForm.AdvGlowButton6Click(Sender: TObject);
begin
  close;
end;

procedure TYwyForm.DBAdvGrid1DblClick(Sender: TObject);
begin
  if Data1.ds31.RecordCount <> 0 then
  begin
    yy := False;
    Form54.ShowModal;
  end;
end;

procedure TYwyForm.DBAdvGrid1Resize(Sender: TObject);
begin
  DBAdvGrid1.AutoSizeColumns(False, 2); //�������ݵ����п�
end;

procedure TYwyForm.FillTreeView(TreeView: TTreeView);

  procedure CreateSubTree(FNodeName: string; Node: TTreeNode = nil);
 // var
  //  mLocalName: string;
    //TreeNode: TTreeNode;
   // Ads_Tmp: TADODataSet;
  begin
    Data1.ClientDataSet2.Close;
    Data1.ClientDataSet2.SQL.Text := 'Select * from tshop Where shopstyle =1 ORDER BY shopid';
    Data1.ClientDataSet2.Open;
    while not Data1.ClientDataSet2.Eof do
    begin
        //mLocalName := Data1.ClientDataSet2.FieldbyName('shopID').Asstring;
        //TreeNode := TreeView.Items.AddChild(Node,Data1.ClientDataSet2.FieldByName('shopName').AsString);
      TreeView.Items.AddChild(Node, Data1.ClientDataSet2.FieldByName('shopName').AsString);
       // CreateSubTree(mLocalName, TreeNode); // �˴�ѭ���ݹ�
      Data1.ClientDataSet2.Next;
    end;
    Data1.ClientDataSet2.Close;
  end;

begin
  TreeView.Items.BeginUpdate;
  TreeView.Items.Clear;

  with TreeView.Items.Add(nil, cname) do
  begin
    ImageIndex := 0;
    SelectedIndex := 1;
  end;
  CreateSubTree('0', TreeView.Items[0]);
  TreeView.Items.EndUpdate;
  TreeView.Items[1].Selected := True;
end;

procedure TYwyForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data1.sqlcmd1.Close;
  Data1.ds1.Close;
end;

procedure TYwyForm.FormCreate(Sender: TObject);
begin
  Data1.ClientDataSet2.Close;
  Data1.ClientDataSet2.SQL.Text:='Select shopname from tshop Where shopstyle =0' ;
  Data1.ClientDataSet2.Open;
  if not Data1.ClientDataSet2.IsEmpty then
  begin
       cname:= Data1.ClientDataSet2.FieldByName('shopname').AsString;
  end;
  FillTreeView(TreeView1);
  sqlstr := 'select a.shopid as ���,b.shopname as ����,a.ywid as ���,a.ywname as ����,a.duty as ְ��,' +
  'a.linktel as �绰,a.remark as ��ע,a.creid as ������,a.credate as ��������,a.optid as �޸���,a.optdate as �޸����� '+
  ' from ttywy a left join tshop b on a.shopid=b.shopid ';
  DBAdvGrid1.SetStyle(gsOffice2007Luna);
  
end;

procedure TYwyForm.FormShow(Sender: TObject);
begin
  Data1.ds31.Close;
  Data1.ds31.SQL.Text := sqlstr + ' order by a.ywid+0 ';
  Data1.ds31.Open;
  Label1.Caption := '�ܹ���' + IntToStr(Data1.ds31.RecordCount) + ' ����¼';
  yy := False;
end;

procedure TYwyForm.TreeView1Click(Sender: TObject);
var
  str: string;
begin
  if TreeView1.Selected.Level < 1 then
  begin
    Data1.ds31.Close;
    Data1.ds31.SQL.Text := sqlstr;
    Data1.ds31.Open;
    Label1.Caption := '�ܹ���' + IntToStr(Data1.ds31.RecordCount) + ' ����¼';
  end
  else
  begin
    str := TreeView1.Items[TreeView1.Selected.Index + 1].Text;
    selectshop(str);
  end;

end;

end.


