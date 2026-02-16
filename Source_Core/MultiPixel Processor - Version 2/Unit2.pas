unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  Tzoom_form = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Shape1: TShape;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Timer1: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    ShowIsoLineConductionDelaydotothispoint1: TMenuItem;
    ConductionVelocityIsolinedoutothispoint1: TMenuItem;
    CalculateAPD90Mapforallsuperpixels1: TMenuItem;
    CalculateAPD90Mapforallsuperpixels2: TMenuItem;
    CalculateAPD90Mapforallsuperpixels3: TMenuItem;
    PlotAllCurvesforthisRaw1: TMenuItem;
    PlotAllcurvesforthisColumn1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ShowIsoLineConductionDelaydotothispoint1Click(
      Sender: TObject);
    procedure ConductionVelocityIsolinedoutothispoint1Click(
      Sender: TObject);
    procedure CalculateAPD90Mapforallsuperpixels1Click(Sender: TObject);
    procedure CalculateAPD90Mapforallsuperpixels2Click(Sender: TObject);
    procedure CalculateAPD90Mapforallsuperpixels3Click(Sender: TObject);
    procedure PlotAllCurvesforthisRaw1Click(Sender: TObject);
    procedure PlotAllcurvesforthisColumn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zoom_form: Tzoom_form;
  xc,yc : integer;
  xp,yp : real;
  i : integer;
  x,y : integer;

  dis ,xmin , ymin , process_window_dimension_plus , xmax , ymax : integer;
  click_counter : integer;

  ecg_index : integer;
implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure Tzoom_form.Button1Click(Sender: TObject);
begin

image1.Width := image1.Width * 2;
image1.Height := image1.Height * 2;
zoom_form.Width := image1.Width + 65 ;
zoom_form.Height := image1.Height + 80;

end;

procedure Tzoom_form.Button2Click(Sender: TObject);
begin

image1.Width := 224;
image1.Height := 160;
zoom_form.Width := 260;
zoom_form.Height := 260;

end;

procedure Tzoom_form.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

xp := trunc(x/1.657)/10;
yp := trunc(y/1.657)/10;
Label1.Caption := 'X: '+floattostr(xp)+' ,Y:'+floattostr(yp);

//Label3.Caption := 'X: '+inttostr(x)+' ,Y:'+inttostr(y);

if ((x > xmin) and (x < xmax) and (y > ymin) and (y < ymax)) then
begin
ecg_x := trunc((x-xmin) / dis);
ecg_y := trunc((y-ymin) / dis);

form1.label32.Caption := inttostr(ecg_x);
form1.label33.Caption := inttostr(ecg_y);


form1.label21.Caption := 'X: ' + inttostr(ecg_x);
form1.label22.Caption := 'Y: ' + inttostr(ecg_y);
form1.shape1.Visible := true;
//shape1.Width := trunc(600 / process_window_dimension_plus);
//shape1.Height := trunc(400 / process_window_dimension_plus);
form1.shape1.Left := 40 + trunc (ecg_x * (1150/process_window_dimension_plus));
form1.shape1.Top := 60 + trunc (ecg_y * (850/process_window_dimension_plus));


end;


end;

procedure Tzoom_form.FormShow(Sender: TObject);
begin
image2.Canvas.Pen.Width := 2;

image2.Canvas.MoveTo(0,40);
image2.Canvas.LineTo(672,40);
 for i := 0 to 40 do
 begin
 x := trunc(i*16.57);
  image2.Canvas.MoveTo(x , 10);
  image2.Canvas.LineTo(x,40);

 end;


dis := strtoint(label3.Caption) * 3;
xmin := (strtoint(label4.Caption) * 3) - dis;
ymin := (strtoint(label5.Caption) * 3);
process_window_dimension_plus := strtoint(label6.Caption);
xmax := xmin + ((process_window_dimension_plus) * dis);
ymax := ymin + ((process_window_dimension_plus) * dis);

click_counter := 0;

end;

procedure Tzoom_form.Timer1Timer(Sender: TObject);
begin
xp := trunc((shape1.Left+8)/1.657)/10;
yp := trunc((shape1.Top+8)/1.657)/10;
Label1.Caption := 'X: '+floattostr(xp)+' ,Y:'+floattostr(yp);
Form1.label31.caption := label1.Caption;
end;

procedure Tzoom_form.Image1Click(Sender: TObject);
begin

form1.click_point.Click;
signal_form.Show;


end;

procedure Tzoom_form.ShowIsoLineConductionDelaydotothispoint1Click(
  Sender: TObject);
begin
//form1.delay_iso_button.Enabled := true;
form1.delay_iso_button.Click;
end;

procedure Tzoom_form.ConductionVelocityIsolinedoutothispoint1Click(
  Sender: TObject);
begin
form1.cv_iso_button_new.Click;
end;

procedure Tzoom_form.CalculateAPD90Mapforallsuperpixels1Click(
  Sender: TObject);
begin
form1.apdx_edit.Text := '90';
form1.apdx_iso_button.Click;

end;

procedure Tzoom_form.CalculateAPD90Mapforallsuperpixels2Click(
  Sender: TObject);
begin
form1.apdx_edit.Text := '80';
form1.apdx_iso_button.Click;
end;

procedure Tzoom_form.CalculateAPD90Mapforallsuperpixels3Click(
  Sender: TObject);
begin
form1.apdx_edit.Text := '50';
form1.apdx_iso_button.Click;
end;

procedure Tzoom_form.PlotAllCurvesforthisRaw1Click(Sender: TObject);
begin
form1.plot_raw.Click;
end;

procedure Tzoom_form.PlotAllcurvesforthisColumn1Click(Sender: TObject);
begin
form1.plot_column.Click;
end;

end.
