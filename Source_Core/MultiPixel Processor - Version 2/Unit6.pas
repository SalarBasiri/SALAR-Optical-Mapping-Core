unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, jpeg, StdCtrls;

type
  Tlogin_Form = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login_Form: Tlogin_Form;

implementation

uses Unit5, Unit1;

{$R *.dfm}

procedure Tlogin_Form.Button1Click(Sender: TObject);
begin
if edit1.Text = '123789' then
begin

form1.Panel1.Visible := false;
login_form.close;

end;
end;

end.
