unit CustGasUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, StdCtrls, RzButton,
  ExtCtrls;

type
  TCustGasForm = class(TForm)
    Panel1: TPanel;
    RzToolButton1: TRzToolButton;
    Label12: TLabel;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton4: TRzToolButton;
    Edit1: TEdit;
    DBAdvGrid1: TDBAdvGrid;
    procedure RzToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustGasForm: TCustGasForm;

implementation

{$R *.dfm}

procedure TCustGasForm.RzToolButton4Click(Sender: TObject);
begin
  close;
end;

end.
