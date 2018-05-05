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
    if Rzchecktree1.Items[i].StateIndex=2 then//��
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
      ShowMessage('Ȩ�����óɹ�');
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
    SQL.Text:='select a as ��������,a1 as ��˾����,a2 as �ŵ�����,a3 as ����������,a4 as ����������,a5 as ֪ͨ����,a6 as ϵͳ�û�����,a6show as �鿴�û�,a6add as �����û�,a6edit as �༭�û�,a6del as ɾ���û�,a6power as Ȩ������,a7 as ҵ��Ա����,b as �ͻ�����,b1 as �ͻ�����,b2 as �ͻ�����,b2show as �鿴�ͻ�����,'+
    ' b2del as ɾ���ͻ�����,b3 as ��������,b4 as ����ͻ�,b5 as �ͻ�ע����־,b6 as �ͻ����Ķ�,b7 as ������λ��,b8 as �������켣,'+
    ' c as �۸����,c1 as ��Ʒ��������,c2 as ��Ʒ�۸�����,c2show as �鿴��Ʒ�۸�,c2show as ������Ʒ�۸�,c2show as �༭��Ʒ�۸�,c2show as ɾ����Ʒ�۸�,c3 as �ŵ�۸�����,c4 as �̶��Żݹ���,c5 as ��Ա�Ż�����,c6 as ���ֶһ�����,d as ��ƿ����,d1 as ��ƿ�³�����,d2 as ��ƿװ������,d3 as ��ƿװ������,d4 as ������δ���,'+
    ' d5 as ��ƿ���ͱ���,d6 as ��ƿ���ձ���,d7 as �ŵ��ƿ���,d7show as �鿴�ŵ��ƿ���,d7del as ɾ���ŵ��ƿ���,d8 as �ͻ���ƿͳ��,'+
    ' d9 as �������,d10 as ��ƿ���Ķ�,d11 as ��ƿ��ת�ۼ�,e as �ͷ�����,e1 as �����ѯ,e2 as ��������,e2show �鿴����,e2edit as ��������,e3 as δ�����û���ѯ,e4 as �����¼,e5 as ��������,e6 as ��ֵ��¼,e7 as ���ݷ���,e8 as ����ά��,e9 as ��������λ��,f as ͳ�Ʊ���,f1 as ���۱���,f2 as �����տ��,f3 as ����������,'+
    ' f4 as ҵ��Ա����,f5 as ����������,f6 as ��ƿ�շѱ���,f7 as �ͻ���������,f8 as ��ƿ���ձ���,f9 as ���ֶһ�����,f10 as �Żݾ��� from tbpower where id='''+sid+''' ';
    Open;
    if not IsEmpty then
    begin
      for i := 0 to FieldCount - 1 do
      begin                                                                                                                                                                     //or (Fields[i].FieldName='�ͻ�����') or (Fields[i].FieldName='�ŵ��ƿ���')
        if (Fields[i].FieldName='��������') or (Fields[i].FieldName='�ͻ�����') or (Fields[i].FieldName='�۸����') or (Fields[i].FieldName='��ƿ����') or (Fields[i].FieldName='�ͷ�����') or (Fields[i].FieldName='ͳ�Ʊ���') then
        begin
          Pnode:=RzCheckTree1.Items.Add(nil,Fields[i].FieldName);
          if Fields[i].Value then   RzCheckTree1.ItemState[I]   :=   cschecked     //Ϊѡ��״̬
          else  RzCheckTree1.ItemState[I]   :=   csUnchecked;     //Ϊδѡ��״̬
        end
        else if (Fields[i].FieldName='�ͻ�����') or (Fields[i].FieldName='�ŵ��ƿ���') or (Fields[i].FieldName='ϵͳ�û�����') or (Fields[i].FieldName='��Ʒ�۸�����') or (Fields[i].FieldName='��������') then
        begin
          Enode:=RzCheckTree1.Items.AddChild(Pnode,Fields[i].FieldName);
          if Fields[i].Value then   RzCheckTree1.ItemState[I]   :=   cschecked     //Ϊѡ��״̬
          else  RzCheckTree1.ItemState[I]   :=   csUnchecked;     //Ϊδѡ��״̬
        end
        else
        begin
          if (Fields[i].FieldName<>'ɾ���ŵ��ƿ���') and (Fields[i].FieldName<>'ɾ���ͻ�����') and (Fields[i].FieldName<>'�鿴�ŵ��ƿ���')
          and (Fields[i].FieldName<>'�鿴�ͻ�����') and (Fields[i].FieldName<>'�鿴�û�') and (Fields[i].FieldName<>'�����û�') and (Fields[i].FieldName<>'�༭�û�')
          and (Fields[i].FieldName<>'ɾ���û�') and (Fields[i].FieldName<>'Ȩ������') and (Fields[i].FieldName<>'�鿴��Ʒ�۸�') and (Fields[i].FieldName<>'������Ʒ�۸�')
          and (Fields[i].FieldName<>'�༭��Ʒ�۸�') and (Fields[i].FieldName<>'ɾ����Ʒ�۸�') and (Fields[i].FieldName<>'�鿴����') and (Fields[i].FieldName<>'��������')  then
            bnode:=RzCheckTree1.Items.AddChild(Pnode,Fields[i].FieldName)
          else   bnode:=RzCheckTree1.Items.AddChild(Enode,Fields[i].FieldName);

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
