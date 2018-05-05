unit SaveBXUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TSaveBXForm = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaveBXForm: TSaveBXForm;

implementation

uses DbUnit;

{$R *.dfm}

procedure TSaveBXForm.Button1Click(Sender: TObject);
var
 sql:string;
begin
     if Memo1.Text='' then
     begin
       ShowMessage('处理结果不能为空');
       Exit;
     end;
     if edit2.Text='' then
     begin
       ShowMessage('处理人不能为空');
       Exit;
     end;
     try
        if Caption='处理报修' then
        sql:= 'update  ttbaoxiu set cljg='''+memo1.Text+''',clr='''+edit2.Text+''',ins=''2'' where id='''+edit1.Text+''''
        else
        sql:='update  tttousu set cljg='''+memo1.Text+''',clr='''+edit2.Text+''',ins=''2'' where id='''+edit1.Text+'''';
       Data1.sds111.Close;
       Data1.sds111.sql.Text:=sql;
       Data1.sds111.ExecSQL;
       Data1.sds111.Close;
      //  ShowSmoothMessage('报修记录保存成功！',tsWindows7);
       Close;
       except

       end;
end;

procedure TSaveBXForm.Button2Click(Sender: TObject);
begin
   Close;
end;

procedure TSaveBXForm.FormShow(Sender: TObject);
begin
    Memo1.Clear;
    edit2.Clear;
end;

end.
