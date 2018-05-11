unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvOfficePager, AdvOfficePagerStylers, AdvPanel, ExtCtrls,
  AdvSmoothButton, ImgList, StdCtrls,TreeUtils;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    ImageList1: TImageList;
    AdvSmoothButton7: TAdvSmoothButton;
    AdvSmoothButton51: TAdvSmoothButton;
    AdvSmoothButton38: TAdvSmoothButton;
    AdvSmoothButton18: TAdvSmoothButton;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    Panel1: TPanel;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N12: TMenuItem;
    N21: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    k1: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    ShopnameBox: TComboBox;
    ShopidBox: TComboBox;
    N67: TMenuItem;
    m1: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    KhlxBox: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure AdvOfficePager1ClosedPage(Sender: TObject; PageIndex: Integer);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure AdvSmoothButton7Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N66Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N67Click(Sender: TObject);
    procedure m1Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TreeUtil:TTreeUtils;
  end;

var
  MainForm: TMainForm;
  Loginname,UsName,ext:string;
  Shopid,shopname:string;
implementation

uses
  ComapUnit,SpLxUnit,SpXxUnit,GpjUnit,MdJgUnit,DjYfUnit, KhLxUnit,DqSzUnit,
  KhXxUnit,TsYhUnit,GsKhYhUnit, DbUnit,DeptInfoUnit,GwInfoUnit,YgInfoUnit,
  CallCentUnit, PowerUnit, UserInfoUnit, MdPgUnit, MdHdUnit, DdListUnit, Unit28,
  BottleTypeUnit, BottleSpecUnit, BottleClassUnit, BottleWorkUnit,LPGUnit,
  CustBillUnit, LogUnit,CodeUnit,LetterUnit,CustMoneyUnit,CustBlendUnit,
  GiveUnitpas, BottleInsUnit, PzUnit, DtelUnit, XstypeUnit, YwyUnit, QzUnit,
  CarUnit, GMoneyUnit, MdgpUnit, khgpUnit,CustwaingUnit;

{$R *.dfm}

procedure TMainForm.AdvOfficePager1ClosedPage(Sender: TObject;
  PageIndex: Integer);
begin
   // ShowMessage(IntToStr(PageIndex));
   AdvOfficePager1.AdvPages[PageIndex].Free;
  // AdvOfficePager1.RemoveAdvPage(AdvOfficePager1.AdvPages[PageIndex]);

end;

procedure TMainForm.AdvSmoothButton7Click(Sender: TObject);
begin
   CallCentForm.Show;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  i:Integer;
begin
    Caption:=Application.Title;
    ShopnameBox.Clear;
    ShopidBox.Clear;
    KhlxBox.Clear;
    with Data1.work do
    begin
      Close;
      SQL.Text := 'select id,comname from tcompany where type=3';;
      Open;
      if not Data1.work.IsEmpty then
      begin
        for I := 0 to Data1.work.RecordCount-1 do
        begin
          ShopnameBox.Items.Add(FieldByName('comname').AsString);
          ShopidBox.Items.Add(FieldByName('id').AsString);
          Next;
        end;
      end;
      Close;
      SQL.Text := 'select type_name from tbCustomer_Type';;
      Open;
      if not Data1.work.IsEmpty then
      begin
        for I := 0 to Data1.work.RecordCount-1 do
        begin
          KhlxBox.Items.Add(FieldByName('type_name').AsString);
          Next;
        end;
      end;
    end;
end;

procedure TMainForm.k1Click(Sender: TObject);
begin
  LetterForm.ShowModal;
end;

procedure TMainForm.m1Click(Sender: TObject);
begin
  MdgpForm.ShowModal;
end;

procedure TMainForm.N12Click(Sender: TObject);
 var
 comap:TBottleTypeFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N12.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N12.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleTypeFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N13Click(Sender: TObject);
  var
 comap:TForm28;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N13.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N13.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TForm28.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N18Click(Sender: TObject);
var
 comap:TMdPgFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N18.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N18.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TMdPgFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N19Click(Sender: TObject);
var
 comap:TMdHdFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N19.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N19.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TMdHdFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N20Click(Sender: TObject);
var
 comap:TDdListFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N20.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N20.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDdListFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N21Click(Sender: TObject);
var
 comap:TBottleSpecFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N21.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N21.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleSpecFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N22Click(Sender: TObject);
var
 comap:TComapFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N22.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N22.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=tcomapframe.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
   with comap do
   begin
     for I := 1 to 7 do
      TEdit(FindComponent('edit'+inttostr(i))).Text:='';
      Memo1.Text:='';
       TreeUtil := TTreeUtils.Create(TreeView1,'tCompany');
      TreeUtil.FillTree;
   end;
end;

procedure TMainForm.N23Click(Sender: TObject);
var
 comap:TSpLxiFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N23.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N23.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TSpLxiFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N24Click(Sender: TObject);
var
 comap:TSpXxFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N24.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N24.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TSpXxFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N25Click(Sender: TObject);
var
 comap:TDeptInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N25.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N25.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDeptInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N26Click(Sender: TObject);
var
 comap:TGwInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N26.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N26.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TGwInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N27Click(Sender: TObject);
var
 comap:TYgInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N27.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N27.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TYgInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N28Click(Sender: TObject);
begin
  GiveForm.ShowModal;
end;

procedure TMainForm.N29Click(Sender: TObject);
begin
  YwyForm.ShowModal;
end;

procedure TMainForm.N30Click(Sender: TObject);
var
 comap:TGpjFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N30.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N30.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TGpjFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N31Click(Sender: TObject);
var
 comap:TMdJgFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N31.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N31.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TMdJgFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N32Click(Sender: TObject);
var
 comap:TDjYfFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N32.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N32.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDjYfFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N33Click(Sender: TObject);
var
 comap:TTsYhFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N33.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N33.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TTsYhFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N34Click(Sender: TObject);
var
 comap:TGsKhYhFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N34.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N34.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TGsKhYhFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N35Click(Sender: TObject);
var
 comap:TKhLxFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N35.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N35.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TKhLxFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N36Click(Sender: TObject);
var
 comap:TDqSzFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N36.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N36.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TDqSzFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N37Click(Sender: TObject);
begin
  DtelForm.ShowModal;
end;

procedure TMainForm.N38Click(Sender: TObject);
var
 comap:TKhXxForm;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N38.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N38.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TKhXxForm.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N39Click(Sender: TObject);
var
 comap:TUserInfoFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N39.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N39.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TUserInfoFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N40Click(Sender: TObject);
begin
  PzForm.ShowModal;
end;

procedure TMainForm.N41Click(Sender: TObject);
var
 comap:TBottleClassFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N41.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N41.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleClassFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;
end;

procedure TMainForm.N42Click(Sender: TObject);
var
 comap:TBottleWorkFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N41.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N41.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleWorkFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N43Click(Sender: TObject);
var
 comap:TBottleInsFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N43.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;

   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N43.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TBottleInsFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N56Click(Sender: TObject);
 var
 comap:TQzFrame;
 aop: TAdvOfficePage;
 i:Integer;
begin
  for i := 0 to AdvOfficePager1.AdvPageCount-1 do
  begin
    aop:=AdvOfficePager1.AdvPages[i];
    if aop.Caption=N56.Caption then
    begin
      AdvOfficePager1.ActivePage:=aop;
      exit;
    end;
  end;
   aop:=TAdvOfficePage.Create(AdvOfficePager1);
   aop.AdvOfficePager := AdvOfficePager1;
   aop.Caption := N56.Caption;
   AdvOfficePager1.ActivePage := aop;
   comap:=TQzFrame.Create(aop);
   comap.Align:=alClient;
   comap.Parent:=aop;

end;

procedure TMainForm.N58Click(Sender: TObject);
begin
  CarForm.ShowModal;
end;

procedure TMainForm.N59Click(Sender: TObject);
begin
  CustMoneyForm.ShowModal;
end;

procedure TMainForm.N60Click(Sender: TObject);
begin
  CustBlendForm.ShowModal;
end;

procedure TMainForm.N61Click(Sender: TObject);
begin
  CodeForm.ShowModal;
end;

procedure TMainForm.N62Click(Sender: TObject);
begin
  CustBillForm.ShowModal;
end;

procedure TMainForm.N63Click(Sender: TObject);
begin
  LPGForm.Show;
end;

procedure TMainForm.N65Click(Sender: TObject);
begin
  LogForm.ShowModal;
end;

procedure TMainForm.N66Click(Sender: TObject);
begin
  XstypeForm.ComboBox1.Clear;
  XstypeForm.ComboBox1.Items := ShopnameBox.Items;
  XstypeForm.ShowModal;
end;

procedure TMainForm.N67Click(Sender: TObject);
begin
  GMoneyForm.ComboBox1.Clear;
  GMoneyForm.ComboBox1.Items := ShopnameBox.Items;
  GMoneyForm.ShowModal;
end;

procedure TMainForm.N68Click(Sender: TObject);
begin
  khgpForm.ShowModal;
end;

procedure TMainForm.N69Click(Sender: TObject);
begin
  CustwaingForm.ComboBox1.Items := ShopnameBox.Items;
  CustwaingForm.ComboBox3.Items := ShopidBox.Items;
  CustwaingForm.DBComboBox1.Items := KhlxBox.Items;
  CustwaingForm.ShowModal;
end;

end.
