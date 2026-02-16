unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TeEngine, Series, ArrowCha, TeeProcs, Chart,
  Grids, ComCtrls;

type
  Tiso_line_form = class(TForm)
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    phase_table: TStringGrid;
    phase_difference_table: TStringGrid;
    phase_difference_angle_table: TStringGrid;
    TabSheet4: TTabSheet;
    CV_table: TStringGrid;
    TabSheet5: TTabSheet;
    cv_angle_table: TStringGrid;
    GroupBox2: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    cv_max_label: TLabel;
    cv_min_label: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    cv_arrow_chart: TChart;
    Series1: TArrowSeries;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    Image3: TImage;
    Label7: TLabel;
    Image4: TImage;
    dif_max_label: TLabel;
    dif_min_label: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Chart2: TChart;
    ArrowSeries1: TArrowSeries;
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  iso_line_form: Tiso_line_form;
  xc , yc : integer;
  cv : int64;

 dis , process_window_dimension_plus : integer;
implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure Tiso_line_form.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
xc := x;
yc := y;

//Label1.Caption := 'X: '+floattostr(xp)+' ,Y:'+floattostr(yp);

Label8.Caption := 'X: '+inttostr(x)+' ,Y:'+inttostr(y);

ecg_x := trunc((x+3) / dis);
ecg_y := trunc((y+3) / dis);

form1.label32.Caption := inttostr(ecg_x);
form1.label33.Caption := inttostr(ecg_y);


form1.label21.Caption := 'X: ' + inttostr(ecg_x);
form1.label22.Caption := 'Y: ' + inttostr(ecg_y);

label9.Caption := 'X: ' + inttostr(ecg_x);
label10.Caption := 'Y: ' + inttostr(ecg_y);

form1.shape1.Visible := true;
//shape1.Width := trunc(600 / process_window_dimension_plus);
//shape1.Height := trunc(400 / process_window_dimension_plus);
form1.shape1.Left := 40 + trunc (ecg_x * (1150/process_window_dimension_plus));
form1.shape1.Top := 60 + trunc (ecg_y * (850/process_window_dimension_plus));




end;

procedure Tiso_line_form.Image1Click(Sender: TObject);
begin
cv := image1.Canvas.Pixels[xc,yc];
label1.Caption := 'R: '+inttostr(getrvalue(cv))+', G: '+inttostr(getgvalue(cv))+', B: '+inttostr(getbvalue(cv));
form1.click_point.Click;
signal_form.Show;

end;

procedure Tiso_line_form.FormShow(Sender: TObject);
begin


process_window_dimension_plus := strtoint(label12.Caption);
dis := trunc (320 / process_window_dimension_plus);

end;

end.
