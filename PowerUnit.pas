unit PowerUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, ComCtrls, RzTreeVw, RzButton, ExtCtrls;
type
  TPowerForm = class(TForm)
    RzCheckTree1: TRzCheckTree;
    Label1: TLabel;
    ComboBox1: TComboBox;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Panel1: TPanel;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowPower(sid:string);
  end;

var
  PowerForm: TPowerForm;

implementation
{$R *.dfm}
uses DbUnit;
var
  A: array[0..71] of string = ('a','a1','a2','a3','a4','a5','a6','a6show','a6add','a6edit','a6del','a6power','a7','b','b1','b2','b2show','b2del','b3','b4','b5','b6','b7','b8','c','c1','c2','c2show','c2add','c2edit','c2del','c3','c4','c5','c6'
  ,'d','d1','d2','d3','d4','d5','d6','d7','d7show','d7del','d8','d9','d10','d11','e','e1','e2','e2show','e2edit','e3','e4','e5','e6','e7','e8','e9','f','f1','f2','f3','f4','f5','f6','f7','f8','f9','f10');

procedure TPowerForm.ComboBox1Change(Sender: TObject);
begin
  ComboBox2.ItemIndex := ComboBox1.ItemIndex;
  Edit1.Text:=ComboBox2.Text;
  if ComboBox2.Text<>'' then  ShowPower(ComboBox2.Text);
end;

procedure TPowerForm.FormCreate(Sender: TObject);
begin
  ComboBox1.Clear;
  ComboBox2.Clear;
  with data1.sqlcmd1 do
  begin
    Close;
    SQL.Text:='SELECT id,aname FROM tUser where type=1 ';
    Open;
    if not IsEmpty then
    begin
       while not Eof do
       begin
         ComboBox1.Items.Add(FieldByName('aname').AsString);
         ComboBox2.Items.Add(FieldByName('id').AsString);
         Next;
       end;
    end;

  end;
end;

procedure TPowerForm.RzToolButton1Click(Sender: TObject);
var
  str,sqlstr:string;
  i:Integer;
begin
  for I := 0 to RzCheckTree1.Items.Count-1 do
  begin
    if Rzchecktree1.Items[i].StateIndex=2 then//打勾
    begin
      str :='1';
    end
    else str:='0';
    if i = 0then  sqlstr :=A[i]+'='+str
    else  sqlstr :=sqlstr+','+A[i]+'='+str;
  end;
  with data1.sqlcmd1 do
  begin
    Close;
    SQL.Text:='update tbpower set '+sqlstr+' where id='''+Edit1.Text +'''';
    try
      ExecSQL;
      Close;
      ShowMessage('权限设置成功');
      Self.Close;
    except
    on E: Exception do
      ShowMessage('权限设置失败'+e.Message);
    end;
  end;
end;

procedure TPowerForm.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TPowerForm.ShowPower(sid: string);
var
  i:Integer;
  Pnode,bnode,Enode:TTreeNode;
begin
  RzCheckTree1.Items.Clear;
  with data1.sqlcmd1 do
  begin
    Close;
    SQL.Text:='select id from tbpower where id='''+sid+''' ';
    Open;
    if IsEmpty then
    begin
      Close;
      SQL.Text := 'insert into tbpower (id) values ('''+sid+''')';
      ExecSQL;
    end;
    Close;
    SQL.Text:='select a as 基本设置,a1 as 公司设置,a2 as 门店设置,a3 as 送气工设置,a4 as 送气费设置,a5 as 通知发布,a6 as 系统用户设置,a6show as 查看用户,a6add as 新增用户,a6edit as 编辑用户,a6del as 删除用户,a6power as 权限设置,a7 as 业务员设置,b as 客户管理,b1 as 客户类型,b2 as 客户资料,b2show as 查看客户资料,'+
    ' b2del as 删除客户资料,b3 as 地区设置,b4 as 导入客户,b5 as 客户注销日志,b6 as 客户在哪儿,b7 as 送气工位置,b8 as 送气工轨迹,'+
    ' c as 价格管理,c1 as 商品类型设置,c2 as 商品价格设置,c2show as 查看商品价格,c2show as 新增商品价格,c2show as 编辑商品价格,c2show as 删除商品价格,c3 as 门店价格设置,c4 as 固定优惠管理,c5 as 会员优惠设置,c6 as 积分兑换设置,d as 钢瓶管理,d1 as 重瓶下车报表,d2 as 空瓶装车报表,d3 as 重瓶装车报表,d4 as 送气工未入库,'+
    ' d5 as 重瓶配送报表,d6 as 空瓶回收报表,d7 as 门店钢瓶库存,d7show as 查看门店钢瓶库存,d7del as 删除门店钢瓶库存,d8 as 客户钢瓶统计,'+
    ' d9 as 租金设置,d10 as 钢瓶在哪儿,d11 as 钢瓶流转痕迹,e as 客服服务,e1 as 来电查询,e2 as 订单管理,e2show 查看订单,e2edit as 订单操作,e3 as 未定气用户查询,e4 as 安检记录,e5 as 呼叫中心,e6 as 充值记录,e7 as 数据分析,e8 as 数据维护,e9 as 订单配送位置,f as 统计报表,f1 as 销售报表,f2 as 财务收款报表,f3 as 送气工报表,'+
    ' f4 as 业务员报表,f5 as 订单报错报表,f6 as 气瓶收费报表,f7 as 客户退气报表,f8 as 钢瓶回收报表,f9 as 积分兑换报表,f10 as 优惠卷报表 from tbpower where id='''+sid+''' ';
    Open;
    if not IsEmpty then
    begin
      for i := 0 to FieldCount - 1 do
      begin                                                                                                                                                                     //or (Fields[i].FieldName='客户资料') or (Fields[i].FieldName='门店钢瓶库存')
        if (Fields[i].FieldName='基本设置') or (Fields[i].FieldName='客户管理') or (Fields[i].FieldName='价格管理') or (Fields[i].FieldName='钢瓶管理') or (Fields[i].FieldName='客服服务') or (Fields[i].FieldName='统计报表') then
        begin
          Pnode:=RzCheckTree1.Items.Add(nil,Fields[i].FieldName);
          if Fields[i].Value then   RzCheckTree1.ItemState[I]   :=   cschecked     //为选中状态
          else  RzCheckTree1.ItemState[I]   :=   csUnchecked;     //为未选中状态
        end
        else if (Fields[i].FieldName='客户资料') or (Fields[i].FieldName='门店钢瓶库存') or (Fields[i].FieldName='系统用户设置') or (Fields[i].FieldName='商品价格设置') or (Fields[i].FieldName='订单管理') then
        begin
          Enode:=RzCheckTree1.Items.AddChild(Pnode,Fields[i].FieldName);
          if Fields[i].Value then   RzCheckTree1.ItemState[I]   :=   cschecked     //为选中状态
          else  RzCheckTree1.ItemState[I]   :=   csUnchecked;     //为未选中状态
        end
        else
        begin
          if (Fields[i].FieldName<>'删除门店钢瓶库存') and (Fields[i].FieldName<>'删除客户资料') and (Fields[i].FieldName<>'查看门店钢瓶库存')
          and (Fields[i].FieldName<>'查看客户资料') and (Fields[i].FieldName<>'查看用户') and (Fields[i].FieldName<>'新增用户') and (Fields[i].FieldName<>'编辑用户')
          and (Fields[i].FieldName<>'删除用户') and (Fields[i].FieldName<>'权限设置') and (Fields[i].FieldName<>'查看商品价格') and (Fields[i].FieldName<>'新增商品价格')
          and (Fields[i].FieldName<>'编辑商品价格') and (Fields[i].FieldName<>'删除商品价格') and (Fields[i].FieldName<>'查看订单') and (Fields[i].FieldName<>'订单操作')  then
            bnode:=RzCheckTree1.Items.AddChild(Pnode,Fields[i].FieldName)
          else   bnode:=RzCheckTree1.Items.AddChild(Enode,Fields[i].FieldName);

          if Fields[i].Value then   RzCheckTree1.ItemState[I]   :=   cschecked     //为选中状态
          else  RzCheckTree1.ItemState[I]   :=   csUnchecked;     //为未选中状态

        end;
      end;
    end;
  end;
  RzCheckTree1.FullExpand;  //展开
//  RzCheckTree1.FullCollapse;  //收缩
end;

end.
