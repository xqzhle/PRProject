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
  Label1.Caption := '总共：' + IntToStr(Data1.ds31.RecordCount) + ' 条记录';
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
    id := Data1.ds31.FieldByName('编号').AsString;

    AdvSmoothMessageDialog1.Caption := '提示信息';
    AdvSmoothMessageDialog1.HTMLText.Text := '确认要删除数据吗？';
    case AdvSmoothMessageDialog1.ExecuteDialog of
      mryes:
        begin
          Data1.ds31.Close;
          try
            Data1.sqlcmd1.Close;
            Data1.sqlcmd1.sql.Text := 'delete  from ttywy where ywid=''' + id + '''';
            Data1.sqlcmd1.ExecSQL;
            ShowSmoothMessage('数据已经成功删除！', tsOffice2007Luna);
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
  DBAdvGrid1.AutoSizeColumns(False, 2); //根据内容调节列宽
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
       // CreateSubTree(mLocalName, TreeNode); // 此处循环递归
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
  sqlstr := 'select a.shopid as 店号,b.shopname as 店名,a.ywid as 编号,a.ywname as 姓名,a.duty as 职务,' +
  'a.linktel as 电话,a.remark as 备注,a.creid as 创建人,a.credate as 创建日期,a.optid as 修改人,a.optdate as 修改日期 '+
  ' from ttywy a left join tshop b on a.shopid=b.shopid ';
  DBAdvGrid1.SetStyle(gsOffice2007Luna);
  
end;

procedure TYwyForm.FormShow(Sender: TObject);
begin
  Data1.ds31.Close;
  Data1.ds31.SQL.Text := sqlstr + ' order by a.ywid+0 ';
  Data1.ds31.Open;
  Label1.Caption := '总共：' + IntToStr(Data1.ds31.RecordCount) + ' 条记录';
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
    Label1.Caption := '总共：' + IntToStr(Data1.ds31.RecordCount) + ' 条记录';
  end
  else
  begin
    str := TreeView1.Items[TreeView1.Selected.Index + 1].Text;
    selectshop(str);
  end;

end;

end.


