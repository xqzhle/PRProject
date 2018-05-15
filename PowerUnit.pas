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
    if (Rzchecktree1.Items[i].StateIndex=2) or (Rzchecktree1.Items[i].StateIndex=3) then//��  ����Ԫ����ѡ��
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
      ShowMessage('Ȩ�����óɹ�');
      if Edit1.Text=userinfo.userid then
      MainForm.getuserpower(Edit1.Text);

      Self.Close;
    except
    on E: Exception do
      ShowMessage('Ȩ������ʧ��'+e.Message);
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
    SQL.Text:='select a as �ͷ�����,a1 as ������ѯ,a2 as ���޴���,a3 as Ͷ�ߴ���,a4 as ��ѯ��ѯ,a5 as ��Ϣ����,b as ���۹���,b4 as ���������µ�,b1 as �ɹ�����,b2 as �ص�����,b3 as ����ɶ���,'+
    ' c as �۸����,c1 as ��˾���Ƽ�����,c2 as �ŵ�۸�����,c3 as �ͻ��Żݵȼ�����,c4 as �����Żݵȼ�����,c5 as ���̿ͻ�����,d as ��������,d1 as ��˾��֯�ܹ�,d2 as ��Ʒ����,d3 as ��Ʒ��Ϣ,d4 as ������Ϣ,'+
    ' d5 as ��λ��Ϣ,d6 as Ա������,d7 as ����������,d8 as ҵ��Ա,'+
    ' e as �ͻ�����,e1 as �ͻ���������,e2 as ��������,e3 as ����ͻ�,e4 as �ͻ�����,f as ��ƿ����,f1 as ��ƿ����,f2 as ��ƿ���,f3 as ��װ����,'+
    ' f4 as ��������,f5 as ���鵥λ,f6 as ������ƿ,f7 as ��ƿ��Ϣ,f8 as �����ƿ��Ϣ,f9 as ��ƿ��ת�ۼ�,f10 as ��ƿ�ۺϹ���,g as ��վ����,g1 as ��վ��Ϣ,g2 as ��װ̨��,g3 as ��������,g4 as Һ�����ɹ�,'+
    ' h as �������,h1 as �ͻ����ù���,h2 as �ͻ��տ��ֵ,h3 as �ͻ��½Ṵ��,h4 as ��ʱ��Ȩ��,h5 as �ͻ���Ʊ����,i as ������,i1 as �ŵ��ƿ����,i2 as �ͻ���ƿͳ��,'+
    ' j as ��������,j1 as ���۱���,j2 as ��ƿ�շ�,j3 as �ͻ�Ԥ��,j4 as ���ݷ���,j5 as �ͻ�����,j6 as ����������,j7 as ҵ��Ա����,k as �������,k1 as ������λ��,'+
    ' k2 as �������켣,k3 as �ͻ����Ķ�,k4 as ��ƿ���Ķ�,k5 as ��������λ��,m as ϵͳ����,m1 as ϵͳ��������,m2 as ����Ա����,m3 as ϵͳ��־ from tbpower where id='''+sid+''' ';
    Open;
    if not IsEmpty then
    begin
      for i := 0 to FieldCount - 1 do
      begin                                                                                                                                                                     //or (Fields[i].FieldName='�ͻ�����') or (Fields[i].FieldName='�ŵ��ƿ���')
        if (Fields[i].FieldName='��������') or (Fields[i].FieldName='�ͷ�����') or (Fields[i].FieldName='���۹���') or (Fields[i].FieldName='�ͻ�����') or (Fields[i].FieldName='�������') or (Fields[i].FieldName='������')
         or (Fields[i].FieldName='�۸����') or (Fields[i].FieldName='��ƿ����') or (Fields[i].FieldName='��վ����') or (Fields[i].FieldName='��������') or (Fields[i].FieldName='ϵͳ����') or (Fields[i].FieldName='�������') then
        begin
          Pnode:=RzCheckTree1.Items.Add(nil,Fields[i].FieldName);
          if Fields[i].Value then   RzCheckTree1.ItemState[I]   :=   cschecked     //Ϊѡ��״̬
          else  RzCheckTree1.ItemState[I]   :=   csUnchecked;     //Ϊδѡ��״̬
        end
//        else if (Fields[i].FieldName='�ͻ�����') or (Fields[i].FieldName='�ŵ��ƿ���') or (Fields[i].FieldName='ϵͳ�û�����') or (Fields[i].FieldName='��Ʒ�۸�����') or (Fields[i].FieldName='��������') then
//        begin
//          Enode:=RzCheckTree1.Items.AddChild(Pnode,Fields[i].FieldName);
//          if Fields[i].Value then   RzCheckTree1.ItemState[I]   :=   cschecked     //Ϊѡ��״̬
//          else  RzCheckTree1.ItemState[I]   :=   csUnchecked;     //Ϊδѡ��״̬
//        end
        else
        begin
          bnode:=RzCheckTree1.Items.AddChild(Pnode,Fields[i].FieldName);
//          if (Fields[i].FieldName<>'ɾ���ŵ��ƿ���') and (Fields[i].FieldName<>'ɾ���ͻ�����') and (Fields[i].FieldName<>'�鿴�ŵ��ƿ���')
//          and (Fields[i].FieldName<>'�鿴�ͻ�����') and (Fields[i].FieldName<>'�鿴�û�') and (Fields[i].FieldName<>'�����û�') and (Fields[i].FieldName<>'�༭�û�')
//          and (Fields[i].FieldName<>'ɾ���û�') and (Fields[i].FieldName<>'Ȩ������') and (Fields[i].FieldName<>'�鿴��Ʒ�۸�') and (Fields[i].FieldName<>'������Ʒ�۸�')
//          and (Fields[i].FieldName<>'�༭��Ʒ�۸�') and (Fields[i].FieldName<>'ɾ����Ʒ�۸�') and (Fields[i].FieldName<>'�鿴����') and (Fields[i].FieldName<>'��������')  then
//            bnode:=RzCheckTree1.Items.AddChild(Pnode,Fields[i].FieldName)
//          else   bnode:=RzCheckTree1.Items.AddChild(Enode,Fields[i].FieldName);

          if Fields[i].Value then   RzCheckTree1.ItemState[I]   :=   cschecked     //Ϊѡ��״̬
          else  RzCheckTree1.ItemState[I]   :=   csUnchecked;     //Ϊδѡ��״̬

        end;
      end;
    end;
  end;
  RzCheckTree1.FullExpand;  //չ��
//  RzCheckTree1.FullCollapse;  //����
end;

end.
