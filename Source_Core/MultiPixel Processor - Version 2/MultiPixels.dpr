program MultiPixels;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {zoom_form},
  Unit3 in 'Unit3.pas' {Signal_Form},
  Unit4 in 'Unit4.pas' {iso_line_form},
  Unit5 in 'Unit5.pas' {wizard_form},
  Unit6 in 'Unit6.pas' {login_Form},
  Unit7 in 'Unit7.pas' {Results_form};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ECG Optical Mapping Multi Pixel Processor';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tzoom_form, zoom_form);
  Application.CreateForm(TSignal_Form, Signal_Form);
  Application.CreateForm(Tiso_line_form, iso_line_form);
  Application.CreateForm(Twizard_form, wizard_form);
  Application.CreateForm(Tlogin_Form, login_Form);
  Application.CreateForm(TResults_form, Results_form);
  Application.Run;
end.
