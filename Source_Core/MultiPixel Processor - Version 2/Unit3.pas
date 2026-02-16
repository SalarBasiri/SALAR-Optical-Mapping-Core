unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, Series, StdCtrls, ComCtrls;

type

  float_array = array [0 .. 3000000] of real;
  float_array_small = array [0 .. 10000] of real;
  int64_array = array [0 .. 1000000] of int64;
  int64_array_small = array [0 .. 10000] of int64;

  
  TSignal_Form = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SaveDialog1: TSaveDialog;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    OpenDialog1: TOpenDialog;
    Label4: TLabel;
    Label5: TLabel;
    TrackBar1: TTrackBar;
    Button7: TButton;
    Label6: TLabel;
    Edit1: TEdit;
    Button8: TButton;
    GroupBox1: TGroupBox;
    UpDown1: TUpDown;
    Edit2: TEdit;
    Label7: TLabel;
    UpDown2: TUpDown;
    Edit3: TEdit;
    Label8: TLabel;
    UpDown3: TUpDown;
    Edit4: TEdit;
    Label9: TLabel;
    UpDown4: TUpDown;
    Edit5: TEdit;
    Label10: TLabel;
    CheckBox1: TCheckBox;
    UpDown5: TUpDown;
    Edit6: TEdit;
    Label11: TLabel;
    UpDown6: TUpDown;
    Edit7: TEdit;
    Label12: TLabel;
    UpDown7: TUpDown;
    Edit8: TEdit;
    Label13: TLabel;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Series15: TLineSeries;
    Series16: TLineSeries;
    Series17: TLineSeries;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series20: TLineSeries;
    Series21: TLineSeries;
    Series22: TLineSeries;
    Series23: TLineSeries;
    Series24: TLineSeries;
    Series25: TLineSeries;
    Series26: TLineSeries;
    Series27: TLineSeries;
    Series28: TLineSeries;
    Series29: TLineSeries;
    Series30: TLineSeries;
    Series31: TLineSeries;
    Series32: TLineSeries;
    Series33: TLineSeries;
    Series34: TLineSeries;
    Button9: TButton;
    procedure Chart1Click(Sender: TObject);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure UpDown2Changing(Sender: TObject; var AllowChange: Boolean);
    procedure UpDown3Changing(Sender: TObject; var AllowChange: Boolean);
    procedure UpDown4Changing(Sender: TObject; var AllowChange: Boolean);
    procedure UpDown5Changing(Sender: TObject; var AllowChange: Boolean);
    procedure UpDown6Changing(Sender: TObject; var AllowChange: Boolean);
    procedure UpDown7Changing(Sender: TObject; var AllowChange: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Signal_Form: TSignal_Form;

   xc , yc : integer;
   my_t1,my_t2,dt : real;
   click_index : integer;



     in_file: text;
  Time, TEMP, stimulus, CV1, CV2, LVEDP, Ventricular, MAP_endo, pH,
    Sinus_rate: string;
  Time_array, TEMP_array, stimulus_array, CV1_array, CV2_array, LVEDP_array,
    Ventricular_array, MAP_endo_array, pH_array, Sinus_rate_array: float_array;
  Find_index_array: int64_array;
  Find_counter, find_counter_max: int64;
  stimulus_threshold: real;
  check_window_width: word;
  point1, point2, point3: real;
  time2: real;
  time2_s: string;
  s_Line: string;
  s1, s2, s3, s4: string;
  my_file_name: string;
  c1, c2, c3, c_max: Integer;
  array_counter, max_array: int64;
  stimulus_ar, Time_ar: float_array_small;
  stimulus_counter: Integer;
  stimulus1, stimulus2, dif, mean: real;
  Map_Endo_Max1, Map_Endo_Max2, Map_Endo_Max3, Map_Endo_Max4,
    Map_Endo_Max5: real;
  Map_Endo_Min1, Map_Endo_Min2, Map_Endo_Min3, Map_Endo_Min4: real;
  sampling_rate, Stop_Array: Integer;
  v1apd90_amplitude, crossing_line: real;
  v1apd90_1, v1apd90_2, v1apd90_3, v1apd90_mean: real;
  t1, t2: real;
  t1_index, t2_index: int64;
  start_counter, stop_counter: int64;
  s1v1_first_min, s1v1_global_min, s1v1_second_max, s1v1_first_max,
    s1v1_global_max: real;
  s1v1_start, s1v1_stop: real;
  max_index: int64;
  s1v1: real;

  s2v2_global_max, s2v2_second_min, s2v2_first_min: real;
  s2v2_start, s2v2_stop: real;

  s2v2: real;
  plot_min_array, plot_max_array, current_array: int64;

  t0: real;
  stimulus1_index, stimulus2_index: int64;

  s1v1_first_min_index, s1v1_second_max_index: int64;

  zoom_start_index, zoom_end_index: int64;

  s1v1_start_time, s1v1_stop_time, s1v1_start_value, s1v1_stop_value: real;
  s2v2_start_time, s2v2_stop_time, s2v2_start_value, s2v2_stop_value: real;
  stimulus1_pointer_time, stimulus1_pointer_value, stimulus2_pointer_time,
    stimulus2_pointer_value: real;

  s1_index, s_block1_index, s_block2_index: int64;

  tangent: real;
  map_endo_max1_index, map_endo_max2_index, map_endo_max3_index,
    map_endo_max4_index, map_endo_max5_index: int64;
  map_endo_min1_index, map_endo_min2_index, map_endo_min3_index,
    map_endo_min4_index: int64;

  map_endo_global_max, map_endo_global_min, mean_map_endo, my_mean: real;

  mean_max, mean_min: real;
  v2apd90_amplitude, V2APD90_1, DI: real;
  max1_apd90_v1: int64;
  s1s2: real;
  auto_flag, re_flag, compelet_flag: string;
  auto_counter: Integer;
  redraw_array_s2v2, redraw_array_apdx: int64_array_small;

  di_round, dif_round: real;

  zoomRectangle, scroll_rectangle: TRect;


  x1, y1, x2, y2: Integer;

  valueIndex, x_left_index, x_right_index: int64;
  start_data_index, stop_data_index, chart_max_index, click_data_index: int64;

  mean_index_length, first_array_counter, dif_index: int64;
  max_array_counter: int64;
  mean_block, max_block, min_block, block_index: real;
  higher_counter, lower_counter: word;
  m, y0, Y: real;

  Map_Endo_Min0: real;
  map_endo_min0_index: int64;



  Max_MAP , Min_MAP , Scale_MAP : real;
  Max_LVEDP , Min_LVEDP , Scale_LVEDP : real;
  Max_Stimulus , Min_Stimulus , Scale_Stimulus : real;

  shift : real;

  auto_amp : real;


  XVal: double;
  YVal: double;

  
implementation

uses Unit1;

{$R *.dfm}

procedure TSignal_Form.Chart1Click(Sender: TObject);
begin
chart1.Series[33].addXY(xval,yval);
 t2 := xval;
  label2.Caption := 'T2: ' + FormatFloat('#.##', t2);
 dt := t2-t1;
  label1.Caption := 'T1: ' + FormatFloat('#.##', t1);
 t1 := t2;
  label3.Caption := 'dT: ' + FormatFloat('#.##', dt);
 {
if form1.checkbox4.checked = false then
begin

valueIndex := chart1.Series[0].Clicked(xc, yc) ;
if valueIndex > -1 then

begin

  if click_index = 1 then
  begin

  my_t1 := chart1.Series[0].XValue[valueIndex];
  label1.Caption := 'T1: ' + floattostr(my_t1);
  chart1.Series[30].Clear;
  chart1.Series[30].AddXY(chart1.Series[0].XValue[valueIndex] ,chart1.Series[0].YValue[valueIndex]);

  end;

 if click_index = 2 then
  begin
   my_t2 := chart1.Series[0].XValue[valueIndex];
  label2.Caption := 'T2: ' + floattostr(my_t2);

   dt := t2-t1;
   label3.Caption := 'dT: '+floattostr (dt);

   chart1.Series[25].AddXY(chart1.Series[0].XValue[valueIndex] ,chart1.Series[0].YValue[valueIndex]);

  end;

  click_index := click_index + 1;






end; //if valueIndex > -1 then
end //if form1.checkbox4.checked = false then
else
begin
valueIndex := chart1.Series[1].Clicked(xc, yc);
if valueIndex > -1 then

begin

  if click_index = 1 then
  begin

  t1 := chart1.Series[1].XValue[valueIndex];
  label1.Caption := 'T1: ' + floattostr(t1);
  chart1.Series[25].Clear;
  chart1.Series[25].AddXY(chart1.Series[1].XValue[valueIndex] ,chart1.Series[1].YValue[valueIndex]);

  end;

 if click_index = 2 then
  begin
   t2 := chart1.Series[1].XValue[valueIndex];
  label2.Caption := 'T2: ' + floattostr(t2);

   dt := t2-t1;
   label3.Caption := 'dT: '+floattostr (dt);

   chart1.Series[25].AddXY(chart1.Series[1].XValue[valueIndex] ,chart1.Series[1].YValue[valueIndex]);

  end;

  click_index := click_index + 1;






end; //if valueIndex > -1 then

end; //if form1.checkbox4.checked = false then  }


end;

procedure TSignal_Form.Chart1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);


begin
 XVal:=Chart1.BottomAxis.CalcPosPoint(X);
  YVal:=Chart1.LeftAxis.CalcPosPoint(Y);

 // Chart1.Title.Text[0]:=FormatFloat('#.##', XVal) + ' - ' + FormatFloat('#.##', YVal);

xc := x;
yc := y;


end;

procedure TSignal_Form.Button1Click(Sender: TObject);
begin
click_index := 1;
chart1.Series[32].Clear;
chart1.Series[33].Clear;
 label1.Caption := 'T1: ';
 label2.Caption := 'T2: ';
 label3.Caption := 'dT: ';


 
end;

procedure TSignal_Form.Button2Click(Sender: TObject);
begin
if savedialog1.Execute then
  chart1.SaveToBitmapFile(savedialog1.FileName+'.bmp');
end;

procedure TSignal_Form.Button3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    my_file_name := OpenDialog1.FileName;
    assignfile(in_file, my_file_name);
    reset(in_file);
    for c1 := 1 to 9 do
      readln(in_file, s_Line);

    array_counter := 1;
    while (not eof(in_file)) do
    begin
      readln(in_file, s_Line);
      c_max := length(s_Line);
      c1 := 1;
      Time := '';
      repeat
        Time := Time + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if Time <> 'NaN' then
        Time_array[array_counter] := strtofloat(Time);

      TEMP := '';
      c1 := c1 + 1;
      repeat
        TEMP := TEMP + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if TEMP <> 'NaN' then
        TEMP_array[array_counter] := strtofloat(TEMP);

      stimulus := '';
      c1 := c1 + 1;
      repeat
        stimulus := stimulus + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if stimulus <> 'NaN' then
        stimulus_array[array_counter] := strtofloat(stimulus);

      CV1 := '';
      c1 := c1 + 1;
      repeat
        CV1 := CV1 + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if CV1 <> 'NaN' then
        CV1_array[array_counter] := strtofloat(CV1);

      CV2 := '';
      c1 := c1 + 1;
      repeat
        CV2 := CV2 + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if CV2 <> 'NaN' then
        CV2_array[array_counter] := strtofloat(CV2);

      LVEDP := '';
      c1 := c1 + 1;
      repeat
        LVEDP := LVEDP + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if LVEDP <> 'NaN' then
        LVEDP_array[array_counter] := strtofloat(LVEDP);

      Ventricular := '';
      c1 := c1 + 1;
      repeat
        Ventricular := Ventricular + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if Ventricular <> 'NaN' then
        Ventricular_array[array_counter] := strtofloat(Ventricular);

      MAP_endo := '';
      c1 := c1 + 1;
      repeat
        MAP_endo := MAP_endo + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if MAP_endo <> 'NaN' then
        MAP_endo_array[array_counter] := strtofloat(MAP_endo);

      pH := '';
      c1 := c1 + 1;
      repeat
        pH := pH + s_Line[c1];
        c1 := c1 + 1;
      until (s_Line[c1] = chr(9));
      if pH <> 'NaN' then
        pH_array[array_counter] := strtofloat(pH);

      Sinus_rate := '';
      c1 := c1 + 1;
      repeat
        Sinus_rate := Sinus_rate + s_Line[c1];
        c1 := c1 + 1;
      until ((s_Line[c1] = chr(9)) or (c1 > c_max));
      if Sinus_rate <> 'NaN' then
        Sinus_rate_array[array_counter] := strtofloat(Sinus_rate);

      {
        rate := '';
        c1 := c1 + 1;
        repeat
        rate := rate + s_line[c1];
        c1 := c1 + 1;
        until (s_line[c1] = chr(9));
        rate_array[array_counter] := strtofloat(rate);
        }

      array_counter := array_counter + 1;

    end;

    closefile(in_file);
    max_array := array_counter - 3;
    showmessage('Loading ' + inttostr(max_array) + ' Records has Compeleted');
    Label5.Caption := 'Loaded Records: ' + inttostr(max_array);
    array_counter := 1;
  //  TrackBar1.Position := 30;
  //  SpeedButton2.Click;
    t0 := Time_array[2];
    auto_amp := strtofloat(edit1.Text);
  end;
end;

procedure TSignal_Form.Button4Click(Sender: TObject);
begin
    auto_amp := strtofloat(edit1.Text);
t0 := Time_array [2];
array_counter := 2;
Max_MAP := -1000;
Min_MAP := 1000;

repeat
  if MAP_endo_array[array_counter] > Max_MAP then Max_MAP := MAP_endo_array[array_counter];
  if MAP_endo_array[array_counter] < Min_MAP then Min_MAP := MAP_endo_array[array_counter];

  array_counter := array_counter + 1;
until (array_counter > max_array);


Scale_MAP := (auto_amp-0) / (Max_MAP - Min_MAP);

t0 := Time_array [2];
array_counter := 2;
chart1.Series[10].Clear;
//chart1.SeriesList[10].SeriesColor := clred;
chart1.Series[10].Title := 'MAP';
repeat
  chart1.Series[10].Addxy( (time_array[array_counter] - t0)*1000 , (MAP_endo_array[array_counter]-Min_MAP) * Scale_MAP );
  array_counter := array_counter + 1;
until (array_counter > max_array);

end;

procedure TSignal_Form.Button5Click(Sender: TObject);
begin
    auto_amp := strtofloat(edit1.Text);
t0 := Time_array [2];
array_counter := 2;
Max_LVEDP := -1000;
Min_LVEDP := 1000;

repeat
  if LVEDP_array[array_counter] > Max_LVEDP then Max_LVEDP := LVEDP_array[array_counter];
  if LVEDP_array[array_counter] < Min_LVEDP then Min_LVEDP := LVEDP_array[array_counter];

  array_counter := array_counter + 1;
until (array_counter > max_array);


Scale_LVEDP := (auto_amp-0) / (Max_LVEDP - Min_LVEDP);

t0 := Time_array [2];
array_counter := 2;
chart1.Series[11].Clear;
//chart1.SeriesList[11].SeriesColor := clgreen;
chart1.Series[11].Title := 'Contraction';
repeat
  chart1.Series[11].Addxy( (time_array[array_counter] - t0)*1000 , (LVEDP_array[array_counter]-Min_LVEDP) * Scale_LVEDP );
  array_counter := array_counter + 1;
until (array_counter > max_array);

end;

procedure TSignal_Form.Button6Click(Sender: TObject);
begin
    auto_amp := strtofloat(edit1.Text);
t0 := Time_array [2];
array_counter := 2;
Max_Stimulus := -1000;
Min_Stimulus := 1000;

repeat
  if Stimulus_array[array_counter] > Max_Stimulus then Max_Stimulus := Stimulus_array[array_counter];
  if Stimulus_array[array_counter] < Min_Stimulus then Min_Stimulus := Stimulus_array[array_counter];

  array_counter := array_counter + 1;
until (array_counter > max_array);


Scale_Stimulus := (auto_amp-0) / (Max_Stimulus - Min_Stimulus);

t0 := Time_array [2];
array_counter := 2;
chart1.Series[12].Clear;
chart1.SeriesList[12].SeriesColor := clblue;
chart1.Series[12].Title := 'Stimulus';
repeat
  chart1.Series[12].Addxy( (time_array[array_counter] - t0)*1000 , (Stimulus_array[array_counter] - Min_Stimulus) * Scale_Stimulus );
  array_counter := array_counter + 1;
until (array_counter > max_array);

end;

procedure TSignal_Form.Button7Click(Sender: TObject);
var
i : integer;
begin
for i := 0 to 20 do
Chart1.Series[i].Clear;


end;

procedure TSignal_Form.TrackBar1Change(Sender: TObject);
begin

//Shift MAP
t0 := Time_array [2];
shift := trackbar1.Position / 1000;
array_counter := 2;
chart1.Series[10].Clear;
repeat
  chart1.Series[10].Addxy( (time_array[array_counter] - t0 - shift)*1000 , (MAP_endo_array[array_counter]-Min_MAP) * Scale_MAP );
  array_counter := array_counter + 1;
until (array_counter > max_array);



end;

procedure TSignal_Form.Button8Click(Sender: TObject);
begin
chart1.View3D := not chart1.View3D;
end;

procedure TSignal_Form.CheckBox1Click(Sender: TObject);
begin
chart1.View3DOptions.Orthogonal := checkbox1.Checked;
end;

procedure TSignal_Form.UpDown1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
chart1.View3DOptions.Zoom := strtoint(edit2.Text);

end;

procedure TSignal_Form.UpDown2Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
chart1.View3DOptions.Rotation := strtoint(edit3.Text);
end;

procedure TSignal_Form.UpDown3Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
chart1.View3DOptions.Tilt := strtoint(edit4.Text);
end;

procedure TSignal_Form.UpDown4Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
chart1.View3DOptions.Elevation := strtoint(edit5.Text);
end;

procedure TSignal_Form.UpDown5Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
chart1.View3DOptions.Perspective := strtoint(edit6.Text);
end;

procedure TSignal_Form.UpDown6Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
chart1.BorderWidth := strtoint(edit7.Text);
end;

procedure TSignal_Form.UpDown7Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
chart1.Chart3DPercent := strtoint(edit8.Text);
end;

end.
