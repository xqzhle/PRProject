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
uses DbUnit, MainUnit;
var                                               // 10+ 6 +9 +5+11+5 +6  +11 +10    30+43
  A: array[0..73] of string = ('a','a1','a2','a3','a4','a5','b','b4','b1','b2','b3','c','c1','c2','c3','c4','c5'
  ,'d','d1','d2','d3','d4','d5','d6','d7','d8','e','e1','e2','e3','e4','f','f1','f2','f3','f4','f5','f6','f7','f8','f9','f10'
  ,'g','g1','g2','g3','g4','h','h1','h2','h3','h4','h5','i','i1','i2','j','j1','j2','j3','j4','j5','j6','j7','k','k1','k2','k3','k4','k5','m','m1','m2','m3');

procedure TPowerForm.ComboBox1Change(Sender: TObject);
begin
  ComboBox2.ItemIndex := ComboBox1.ItemIndex;
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
    if (Rzchecktree1.Items[i].StateIndex=2) or (Rzchecktree1.Items[i].StateIndex=3) then//打勾  或子元素有选中
    begin
      str :='1';
    end
    else str:='0';
    if i = 0 then  sqlstr :=A[i]+'='+str
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
      if Edit1.Text=userinfo.userid then
      MainForm.getuserpower(Edit1.Text);

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
    SQL.Text:='select a as 客服中心,a1 as 订单查询,a2 as 保修处理,a3 as 投诉处理,a4 as 咨询查询,a5 as 信息管理,b as 零售管理,b4 as 呼叫中心下单,b1 as 派工处理,b2 as 回单处理,b3 as 已完成订单,'+
    ' c as 价格管理,c1 as 公司挂牌价设置,c2 as 门店价格设置,c3 as 客户优惠等级设置,c4 as 特殊优惠等级设置,c5 as 工商客户报价,d as 基础资料,d1 as 公司组织架构,d2 as 商品类型,d3 as 商品信息,d4 as 部门信息,'+
    ' d5 as 岗位信息,d6 as 员工资料,d7 as 送气费设置,d8 as 业务员,'+
    ' e as 客户管理,e1 as 客户类型设置,e2 as 地区设置,e3 as 导入客户,e4 as 客户资料,f as 钢瓶管理,f1 as 钢瓶类型,f2 as 钢瓶规格,f3 as 充装介质,'+
    ' f4 as 生产厂家,f5 as 检验单位,f6 as 新增钢瓶,f7 as 钢瓶信息,f8 as 导入钢瓶信息,f9 as 钢瓶流转痕迹,f10 as 钢瓶综合管理,g as 气站管理,g1 as 气站信息,g2 as 充装台称,g3 as 车辆设置,g4 as 液化气采购,'+
    ' h as 财务管理,h1 as 客户信用管理,h2 as 客户收款充值,h3 as 客户月结勾兑,h4 as 临时授权码,h5 as 客户发票管理,i as 库存管理,i1 as 门店钢瓶管理,i2 as 客户钢瓶统计,'+
    ' j as 报表中心,j1 as 销售报表,j2 as 气瓶收费,j3 as 客户预警,j4 as 数据分析,j5 as 客户安检,j6 as 送气工报表,j7 as 业务员报表,k as 监管中心,k1 as 送气工位置,'+
    ' k2 as 送气工轨迹,k3 as 客户在哪儿,k4 as 钢瓶在哪儿,k5 as 订单配送位置,m as 系统设置,m1 as 系统参数设置,m2 as 操作员管理,m3 as 系统日志 from tbpower where id='''+sid+''' ';
    Open;
    if not IsEmpty then
    begin
      for i := 0 to FieldCount - 1 do
      begin                                                                                                                                                                     //or (Fields[i].FieldName='客户资料') or (Fields[i].FieldName='门店钢瓶库存')
        if (Fields[i].FieldName='基础资料') or (Fields[i].FieldName='客服中心') or (Fields[i].FieldName='零售管理') or (Fields[i].FieldName='客户管理') or (Fields[i].FieldName='监管中心') or (Fields[i].FieldName='库存管理')
         or (Fields[i].FieldName='价格管理') or (Fields[i].FieldName='钢瓶管理') or (Fields[i].FieldName='气站管理') or (Fields[i].FieldName='报表中心') or (Fields[i].FieldName='系统设置') or (Fields[i].FieldName='财务管理') then
        begin
          Pnode:=RzCheckTree1.Items.Add(nil,Fields[i].FieldName);
          if Fields[i].Value then   RzCheckTree1.ItemState[I]   :=   cschecked     //为选中状态
          else  RzCheckTree1.ItemState[I]   :=   csUnchecked;     //为未选中状态
        end
//        else if (Fields[i].FieldName='客户资料') or (Fields[i].FieldName='门店钢瓶库存') or (Fields[i].FieldName='系统用户设置') or (Fields[i].FieldName='商品价格设置') or (Fields[i].FieldName='订单管理') then
//        begin
//          Enode:=RzCheckTree1.Items.AddChild(Pnode,Fields[i].FieldName);
//          if Fields[i].Value then   RzCheckTree1.ItemState[I]   :=   cschecked     //为选中状态
//          else  RzCheckTree1.ItemState[I]   :=   csUnchecked;     //为未选中状态
//        end
        else
        begin
          bnode:=RzCheckTree1.Items.AddChild(Pnode,Fields[i].FieldName);
//          if (Fields[i].FieldName<>'删除门店钢瓶库存') and (Fields[i].FieldName<>'删除客户资料') and (Fields[i].FieldName<>'查看门店钢瓶库存')
//          and (Fields[i].FieldName<>'查看客户资料') and (Fields[i].FieldName<>'查看用户') and (Fields[i].FieldName<>'新增用户') and (Fields[i].FieldName<>'编辑用户')
//          and (Fields[i].FieldName<>'删除用户') and (Fields[i].FieldName<>'权限设置') and (Fields[i].FieldName<>'查看商品价格') and (Fields[i].FieldName<>'新增商品价格')
//          and (Fields[i].FieldName<>'编辑商品价格') and (Fields[i].FieldName<>'删除商品价格') and (Fields[i].FieldName<>'查看订单') and (Fields[i].FieldName<>'订单操作')  then
//            bnode:=RzCheckTree1.Items.AddChild(Pnode,Fields[i].FieldName)
//          else   bnode:=RzCheckTree1.Items.AddChild(Enode,Fields[i].FieldName);

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
