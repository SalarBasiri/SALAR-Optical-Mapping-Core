unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ExtDlgs, TeEngine, Series, TeeProcs, Chart,
  ComCtrls;

type
array_2d_of_int = array[0..1000,0..1000] of integer;
array_2d_of_int64 = array[0..1000,0..1000] of int64;
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Timer1: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    Chart7: TChart;
    Series1: TLineSeries;
    Chart1: TChart;
    LineSeries1: TLineSeries;
    Chart2: TChart;
    LineSeries2: TLineSeries;
    Chart3: TChart;
    LineSeries3: TLineSeries;
    Chart4: TChart;
    LineSeries4: TLineSeries;
    Chart5: TChart;
    LineSeries5: TLineSeries;
    Chart6: TChart;
    LineSeries6: TLineSeries;
    Chart8: TChart;
    LineSeries7: TLineSeries;
    Chart9: TChart;
    LineSeries8: TLineSeries;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Button4: TButton;
    GroupBox4: TGroupBox;
    Image1: TImage;
    GroupBox5: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox6: TGroupBox;
    Image3: TImage;
    Image2: TImage;
    ProgressBar1: TProgressBar;
    Process_timer: TTimer;
    Label8: TLabel;
    Label9: TLabel;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Process_timerTimer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    s,s1,s2,s3 : string;
  in_path , out_path , folder_path: string;
  c1,c2,c3 : integer;
  scale : real;
  intensity : real;
  l : integer;
  r,g,b : byte;

  frame_index , max_frame_count : word;
  i , j : integer;
   cv : int64;

   xc1,xc2,yc1,yc2 : integer;

   path_counter : integer;

   zoom_flag : boolean;

   xc, yc , x0 , y0 : integer;

     DstRect, SrcRect: TRect;

     window_width : integer;
     
      m , n : integer;

      ecg11,ecg12,ecg13 : integer;
      ecg21,ecg22,ecg23 : integer;
      ecg31,ecg32,ecg33 : integer;


      pixel_threshold : integer;

      pulse_density_array : array_2d_of_int;
      Gray_Image_Ave_Array : array_2d_of_int64;


      max_pulse_density , min_pulse_density : integer;

      negative_flag : boolean;

implementation

uses Unit2;

{$R *.dfm}


function CountFilesInFolder ( path: string ): integer;
var
  tsr: TSearchRec;
begin
  path := IncludeTrailingPathDelimiter ( path );
  result := 0;
  if FindFirst ( path + '*.*', faAnyFile and not faDirectory, tsr ) = 0 then begin
    repeat
      inc ( result );
    until FindNext ( tsr ) <> 0;
    FindClose ( tsr );
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
timer1.Interval := strtoint(edit1.Text);
path_counter := 0;
frame_index := 0;
in_path := listbox1.Items[path_counter];
max_frame_count := CountFilesInFolder(in_path) - 5;
label5.Caption := ' of ' +inttostr(max_frame_count);
listbox1.Selected[path_counter] := true;


x0 := image1.Left;
y0 := image1.Top;

image1.Canvas.Pen.Color := clwhite;

chart1.Series[0].Clear;
chart2.Series[0].Clear;
chart3.Series[0].Clear;
chart4.Series[0].Clear;
chart5.Series[0].Clear;
chart6.Series[0].Clear;
chart7.Series[0].Clear;
chart8.Series[0].Clear;
chart9.Series[0].Clear;

for i := 0 to 223 do
  for j := 0 to 159 do
    Gray_Image_Ave_Array[i,j] := 0;
    
timer1.Enabled := true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
s := in_path + 'f'+inttostr(frame_index)+'.bmp';
label2.Caption := s;
image1.Picture.LoadFromFile(s);

for i := 0 to 223 do
  for j := 0 to 159 do
    Gray_Image_Ave_Array[i,j] := Gray_Image_Ave_Array[i,j] + getbvalue(image1.Canvas.Pixels[i,j]);



  with Image3.Canvas do
  begin
    CopyMode := cmSrcCopy;
    DstRect := Rect(0, 0, Image3.Width, Image3.Height);
    SrcRect := Rect(xc-30, yc-30, xc, yc);
    CopyRect(DstRect, Image1.Canvas, SrcRect);
  end;




  image1.Canvas.Pen.Color := clwhite;
  image1.Canvas.Pen.Width := 2;
  image1.Canvas.MoveTo(xc,yc);
  image1.Canvas.LineTo(xc,yc-window_width);
  image1.Canvas.LineTo(xc-window_width,yc-window_width);
  image1.Canvas.LineTo(xc-window_width,yc);
  image1.Canvas.LineTo(xc,yc);
  image1.Refresh;

  ecg11 := 0; ecg12 := 0 ; ecg13 := 0;
  ecg21 := 0; ecg22 := 0 ; ecg23 := 0;
  ecg31 := 0; ecg32 := 0 ; ecg33 := 0;

  for m := -1 to 1 do
  begin
    for n := -1 to 1 do
    begin
      ecg11 := ecg11 + image1.Canvas.Pixels[xc-25+m,yc-25+n];
      image1.Canvas.Pixels[xc-25+m,yc-25+n] := clwhite;

      ecg12 := ecg12 + image1.Canvas.Pixels[xc-15+m,yc-25+n];
      image1.Canvas.Pixels[xc-15+m,yc-25+n] := clwhite;

      ecg13 := ecg13 + image1.Canvas.Pixels[xc-5+m,yc-25+n];
      image1.Canvas.Pixels[xc-5+m,yc-25+n] := clwhite;


      ecg21 := ecg21 + image1.Canvas.Pixels[xc-25+m,yc-15+n];
      image1.Canvas.Pixels[xc-25+m,yc-15+n] := clwhite;

      ecg22 := ecg22 + image1.Canvas.Pixels[xc-15+m,yc-15+n];
      image1.Canvas.Pixels[xc-15+m,yc-15+n] := clwhite;

      ecg23 := ecg23 + image1.Canvas.Pixels[xc-5+m,yc-15+n];
      image1.Canvas.Pixels[xc-5+m,yc-15+n] := clwhite;


      ecg31 := ecg31 + image1.Canvas.Pixels[xc-25+m,yc-5+n];
      image1.Canvas.Pixels[xc-25+m,yc-5+n] := clwhite;

      ecg32 := ecg32 + image1.Canvas.Pixels[xc-15+m,yc-5+n];
      image1.Canvas.Pixels[xc-15+m,yc-5+n] := clwhite;

      ecg33 := ecg33 + image1.Canvas.Pixels[xc-5+m,yc-5+n];
      image1.Canvas.Pixels[xc-5+m,yc-5+n] := clwhite;

    end;
  end;

  image3.Canvas.Pixels[5,5] := clwhite;
  image3.Canvas.Pixels[15,5] := clwhite;
  image3.Canvas.Pixels[25,5] := clwhite;

  image3.Canvas.Pixels[5,15] := clwhite;
  image3.Canvas.Pixels[15,15] := clwhite;
  image3.Canvas.Pixels[25,15] := clwhite;

  image3.Canvas.Pixels[5,25] := clwhite;
  image3.Canvas.Pixels[15,25] := clwhite;
  image3.Canvas.Pixels[25,25] := clwhite;


  chart1.Series[0].Add(ecg11);     chart2.Series[0].Add(ecg12);     chart3.Series[0].Add(ecg13);
  chart4.Series[0].Add(ecg21);     chart5.Series[0].Add(ecg22);     chart6.Series[0].Add(ecg23);
  chart7.Series[0].Add(ecg31);     chart8.Series[0].Add(ecg32);     chart9.Series[0].Add(ecg33);



{
out_path := in_path + 'gray_scale\f'+inttostr(frame_index)+'.bmp';
label3.Caption := out_path;
for j := 0 to 160 do
begin
  for i := 0 to 224 do
  begin


       cv := image1.Canvas.Pixels[i,j];
       r := getrvalue(cv);
       g := getgvalue(cv);
       b := getbvalue(cv);


       intensity := g * scale;

       if intensity > 255 then intensity := 255;
    image2.Canvas.Pixels[i,j] :=  rgb(0,trunc(intensity),0);

  end;
end;

image2.Picture.SaveToFile(out_path);
                                     }
frame_index :=  frame_index + 1;

label3.Caption := 'Frame No: ' + inttostr(frame_index);
label4.Caption := floattostr(trunc(frame_index/0.12)) + ' ms';

  image2.Picture := image3.Picture;

if frame_index > max_frame_count then
begin
 timer1.Enabled := false;
for i := 0 to 223 do
  for j := 0 to 159 do
    Gray_Image_Ave_Array[i,j] := trunc ( Gray_Image_Ave_Array[i,j] / frame_index );


for i := 0 to 223 do
  for j := 0 to 159 do
   form2.Image1.Canvas.Pixels[i,j] := rgb( Gray_Image_Ave_Array[i,j], Gray_Image_Ave_Array[i,j], Gray_Image_Ave_Array[i,j] );

form2.Image2.Picture := form2.Image1.Picture;

form2.Show;

end;



end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if button2.Caption = 'Pause' then
begin
timer1.Enabled := false;
timer1.Interval := strtoint(edit1.Text);
button2.Caption := 'Resume';

end
else
begin
timer1.Enabled := true;
timer1.Interval := strtoint(edit1.Text);
button2.Caption := 'Pause';


end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
path_counter := listbox1.ItemIndex;
frame_index := 0;
in_path := listbox1.Items[path_counter] ;
max_frame_count := CountFilesInFolder(in_path) - 1;
label3.Caption := 'Frame No: ' + inttostr(frame_index);
label5.Caption := ' of ' +inttostr(max_frame_count);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if openpicturedialog1.Execute then
begin
s1 := openpicturedialog1.FileName;
  image1.Picture.LoadFromFile(s1);
  label3.Caption := s1;
   l := length(s1);
   c2 := l;
   
   repeat
    c2 := c2 - 1;
   until (s1[c2] = '\');

   c1 := 1;
   s2:='';
   repeat
     s2 := s2 + s1[c1];
     c1 := c1 + 1;

   until (c1 > c2);

  listbox1.Items.Add(s2);


process_timer.Interval := 20;
path_counter := 0;
frame_index := 0;
in_path := listbox1.Items[path_counter];
max_frame_count := CountFilesInFolder(in_path) - 5;
progressbar1.Max := max_frame_count;
label5.Caption := 'of ' + inttostr(max_frame_count);
edit3.Text := inttostr(max_frame_count);
listbox1.Selected[path_counter] := true;



end;

end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);


begin

xc := x;
yc := y;

label8.Caption := inttostr(xc)+','+inttostr(yc);
label9.Caption := 'R: '+inttostr(getrvalue(image1.Canvas.Pixels[xc,yc]))+'  ,G: '+inttostr(getgvalue(image1.Canvas.Pixels[xc,yc]))+'  ,B: '+inttostr(getbvalue(image1.Canvas.Pixels[xc,yc]));



end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
image3.Width := 30;
image3.Height := 30;
window_width := 30;

end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
image3.Width := 40;
image3.Height := 40;
window_width := 40;

end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
image3.Width := 50;
image3.Height := 50;
window_width := 50;

end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
image3.Width := 60;
image3.Height := 60;
window_width := 60;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
image3.Width := 30;
image3.Height := 30;
window_width := 30;
form1.Left := 0;
form1.Top := 0;
form1.Width := 1900;
form1.Height := 1000;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
chart1.Series[0].Clear;
chart2.Series[0].Clear;
chart3.Series[0].Clear;
chart4.Series[0].Clear;
chart5.Series[0].Clear;
chart6.Series[0].Clear;
chart7.Series[0].Clear;
chart8.Series[0].Clear;
chart9.Series[0].Clear;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked then groupbox1.Height := 945
else groupbox1.Height := 25;
end;

procedure TForm1.Process_timerTimer(Sender: TObject);
begin

s := in_path + 'f'+inttostr(frame_index)+'.bmp';
label2.Caption := s;
image1.Picture.LoadFromFile(s);








for j := 0 to 159 do
begin
  for i := 0 to 223 do
  begin


       cv := image1.Canvas.Pixels[i,j];
       b := getbvalue(cv);

 //*************************************************************************************
       intensity := b;
 //*************************************************************************************
       if abs(intensity-Gray_Image_Ave_Array[i,j]) > pixel_threshold then pulse_density_array[i,j] := pulse_density_array[i,j] + 1;

  end;
end;


frame_index :=  frame_index + 1;
progressbar1.Position := frame_index;

label3.Caption := 'Frame No: ' + inttostr(frame_index);
label4.Caption := 'Time : ' +floattostr(trunc(frame_index/0.12)) + ' ms';


if frame_index > max_frame_count then
begin
process_timer.Enabled := false;
max_pulse_density := -1000;
min_pulse_density := 1000;

for i := 0 to 223 do
begin
 for j := 0 to 160 do
 begin
   if pulse_density_array[i,j] > max_pulse_density then max_pulse_density := pulse_density_array[i,j];
   if pulse_density_array[i,j] < min_pulse_density then min_pulse_density := pulse_density_array[i,j];

 end;
end;

 form2.show;
 form2.Label1.Caption := 'Max Pulse Density: ' + inttostr(max_pulse_density);
 form2.Label2.Caption := 'Min Pulse Density: ' + inttostr(min_pulse_density);

 scale := (max_pulse_density - min_pulse_density) / 255;

for i := 0 to 223 do
begin
 for j := 0 to 160 do
 begin
   r := 0;
   g := 0;
   b := trunc(pulse_density_array[i,j] / scale) - min_pulse_density;;
   cv := rgb(r,g,b);
   form2.Image1.Canvas.Pixels[i,j] := cv;
 end;
end;


end;


end;

procedure TForm1.Button4Click(Sender: TObject);
begin
frame_index := 0;
max_frame_count := strtoint(edit3.Text);
progressbar1.Max := max_frame_count;
label5.Caption := 'of ' + inttostr(max_frame_count);
edit3.Text := inttostr(max_frame_count);
listbox1.Selected[path_counter] := true;
process_timer.Enabled := true;
pixel_threshold := strtoint(edit2.Text);


for i := 0 to 223 do
  for j := 0 to 159 do
    pulse_density_array[i,j] := 0;
    

end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
negative_flag := checkbox2.Checked;
end;

end.
