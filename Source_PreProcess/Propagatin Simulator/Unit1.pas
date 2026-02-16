unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Timer1: TTimer;
    SaveDialog1: TSaveDialog;
    Edit3: TEdit;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Button2: TButton;
    Timer2: TTimer;
    Button3: TButton;
    Timer3: TTimer;
    Timer4: TTimer;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Timer5: TTimer;
    Label2: TLabel;
    Timer6: TTimer;
    Timer7: TTimer;
    Timer8: TTimer;
    Button9: TButton;
    Timer9: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   save_path , s : string;
   file_counter : integer;
   end_line : real;
   wave_width : integer;
   max_frames : integer;
   i, j ,k , w , h , wave_color : integer;
      r,g,b : byte;
      start_c , stop_c : integer;
      dx , dy : real;

      x_center , y_center, r_start , dr: integer;
      x1,y1,x2,y2 : integer;
      teta : integer;

      x , y : integer;
      radius , teta_real : real;
      a_const , b_const : real;
      teta_zero : real;

      r_start2 , dr2 : integer;

        teta1 , teta2 , dteta  : integer;
        x0 , y0 : integer;
      
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
  timer1.Interval := 10;
  wave_width := strtoint(edit3.Text);
  end_line := 0;
  max_frames := strtoint(edit1.Text);
  file_counter := 1;
  timer1.Enabled := true;
  save_path := savedialog1.FileName;
  w := image1.Width - 1;
  h := image1.Height - 1;

  for i := 0 to w do
   for j := 0 to h do
    image1.Canvas.Pixels[i,j] := 0;

  dx := 1;

end;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
s := save_path + inttostr(file_counter) + '.bmp';



for k :=  0 to wave_width do
  begin
    image1.Canvas.Pen.Color := clblack;
    image1.Canvas.MoveTo(trunc(k+end_line-dx),0);
    image1.Canvas.LineTo(trunc(k+end_line-dx),h);
  end;


for k :=  0 to wave_width do

  begin
    r := 0;
    g := trunc ( (255 / wave_width) * k);
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);
    image1.Canvas.MoveTo(trunc(k+end_line),0);
    image1.Canvas.LineTo(trunc(k+end_line),h);



  end;




end_line := end_line + dx;

if end_line > 224 then
begin
end_line := 0;
dx := 1;
end;

{
if end_line > 50 then dx := 1;

if end_line > 100 then dx := 1.5;

if end_line > 150 then dx := 2;

if end_line > 200 then dx := 2.5;

 }


image1.Picture.SaveToFile(s);

file_counter := file_counter + 1;
label2.Caption := 'Frame No: ' + inttostr(file_counter);

if file_counter > max_frames then timer1.Enabled := false;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
  timer2.Interval := 10;
  wave_width := strtoint(edit3.Text);
  end_line := 0;
  max_frames := strtoint(edit1.Text);
  file_counter := 1;
  timer2.Enabled := true;
  save_path := savedialog1.FileName;
  w := image1.Width - 1;
  h := image1.Height - 1;

  for i := 0 to w do
   for j := 0 to h do
    image1.Canvas.Pixels[i,j] := 0;

  dy := 1;

end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
s := save_path + inttostr(file_counter) + '.bmp';



for k :=  0 to wave_width do
  begin
    image1.Canvas.Pen.Color := clblack;
    image1.Canvas.MoveTo(0,trunc(k+end_line-dy));
    image1.Canvas.LineTo(w,trunc(k+end_line-dy));
  end;


for k :=  0 to wave_width do

  begin
    r := 0;
    g := trunc ( (255 / wave_width) * k);
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);
    image1.Canvas.MoveTo(0,trunc(k+end_line));
    image1.Canvas.LineTo(w,trunc(k+end_line));



  end;




end_line := end_line + dy;

if end_line > 160 then
begin

 end_line := 0;
 dy := 1;

end;

{
if end_line > 30 then dy := 1;

if end_line > 60 then dy := 1.5;

if end_line > 90 then dy := 2;

if end_line > 120 then dy := 2.5;

   }


image1.Picture.SaveToFile(s);

file_counter := file_counter + 1;
label2.Caption := 'Frame No: ' + inttostr(file_counter);

if file_counter > max_frames then timer2.Enabled := false;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
  timer3.Interval := 10;
  wave_width := strtoint(edit3.Text);
  end_line := 0;
  max_frames := strtoint(edit1.Text);
  file_counter := 1;

  save_path := savedialog1.FileName;
  w := image1.Width - 1;
  h := image1.Height - 1;

  for i := 0 to w do
   for j := 0 to h do
    image1.Canvas.Pixels[i,j] := 0;

  dr := 1;

  timer3.Enabled := true;
end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
s := save_path + inttostr(file_counter) + '.bmp';



for k :=  0 to 223 do
  begin
    image1.Canvas.Pen.Color := clblack;
    image1.Canvas.MoveTo(k,0);
    image1.Canvas.LineTo(k,160);
  end;



for k :=  r_start to r_start + wave_width do

  begin
    r := 0;
    g := trunc ((255 / wave_width) * (k-r_start));
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    x1 := 120;
    y1 := 80;

    for teta := 0 to 1800 do
    begin
    x := x1 + trunc ( k * cos(teta*3.1415/900));
    y := y1 + trunc ( k * sin(teta*3.1415/900));
    image1.Canvas.Pixels[x,y] := rgb(r,g,b);
    end;



  end;



r_start := r_start + dr;


if r_start > 100 then
begin
r_start := 10;
dr := 1;
end;




image1.Picture.SaveToFile(s);

file_counter := file_counter + 1;
label2.Caption := 'Frame No: ' + inttostr(file_counter);

if file_counter > max_frames then timer3.Enabled := false;


end;

procedure TForm1.Button4Click(Sender: TObject);
begin

if savedialog1.Execute then
begin
  timer4.Interval := 10;
  wave_width := strtoint(edit3.Text);
  end_line := 0;
  max_frames := strtoint(edit1.Text);
  file_counter := 1;

  save_path := savedialog1.FileName;
  w := image1.Width - 1;
  h := image1.Height - 1;

  for i := 0 to w do
   for j := 0 to h do
    image1.Canvas.Pixels[i,j] := 0;

  dr := 1;
  dr2 := 2;
  timer4.Enabled := true;
end;


end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
s := save_path + inttostr(file_counter) + '.bmp';



for k :=  0 to 223 do
  begin
    image1.Canvas.Pen.Color := clblack;
    image1.Canvas.MoveTo(k,0);
    image1.Canvas.LineTo(k,160);
  end;



for k :=  r_start to r_start + wave_width do

  begin
    r := 0;
    g := trunc ((255 / wave_width) * (k-r_start));
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    x1 := 80;
    y1 := 80;
    for teta := 0 to 1800 do
    begin
    x := x1 + trunc ( k * cos(teta*3.1415/900));
    y := y1 + trunc ( k * sin(teta*3.1415/900));
    image1.Canvas.Pixels[x,y] := rgb(r,g,b);
    end;


  end;



  
for k :=  r_start2 to r_start2 + wave_width do

  begin
    r := 0;
    g := trunc ((255 / wave_width) * (k-r_start2));
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    x1 := 160;
    y1 := 80;
    for teta := 0 to 1800 do
    begin
    x := x1 + trunc ( k * cos(teta*3.1415/900));
    y := y1 + trunc ( k * sin(teta*3.1415/900));
    image1.Canvas.Pixels[x,y] := rgb(r,g,b);
    end;


  end;



r_start := r_start + dr;

r_start2 := r_start2 + dr2;

if r_start > 160 then
begin
r_start := 10;
dr := 1;
end;

if r_start2 > 160 then
begin
r_start2 := 10;
dr2 := 1;
end;




image1.Picture.SaveToFile(s);

file_counter := file_counter + 1;
label2.Caption := 'Frame No: ' + inttostr(file_counter);

if file_counter > max_frames then timer4.Enabled := false;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

if savedialog1.Execute then
begin
  timer5.Interval := 10;
  wave_width := strtoint(edit3.Text);
  end_line := 0;
  max_frames := strtoint(edit1.Text);
  file_counter := 1;

  save_path := savedialog1.FileName;
  w := image1.Width - 1;
  h := image1.Height - 1;

  for i := 0 to w do
   for j := 0 to h do
    image1.Canvas.Pixels[i,j] := 0;

  dr := 1;

  timer5.Enabled := true;
end;

end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
s := save_path + inttostr(file_counter) + '.bmp';



for k :=  0 to 223 do
  begin
    image1.Canvas.Pen.Color := clblack;
    image1.Canvas.MoveTo(k,0);
    image1.Canvas.LineTo(k,160);
  end;


    image1.Canvas.moveto(112,80);

    teta_real := -5000;
    a_const := 10;
    b_const := 1 / 500;
    image1.Canvas.Pen.Width := 2;
    teta_zero := file_counter;
repeat


    r := 0;
    g := 150;
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    radius := a_const * exp( b_const * (teta_real+teta_zero) );

    x1 := 112;
    y1 := 80;


    x := x1 + trunc ( radius * cos(teta_real*3.1415/180));
    y := y1 + trunc ( radius * sin(teta_real*3.1415/180));
    image1.Canvas.LineTo(x,y);


teta_real := teta_real + 1;

until (teta_real > 2000);





image1.Picture.SaveToFile(s);

file_counter := file_counter + 1;

label2.Caption := 'Frame No: ' + inttostr(file_counter);

if file_counter > max_frames then timer5.Enabled := false;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
  timer6.Interval := 10;
  wave_width := strtoint(edit3.Text);
  end_line := 0;
  max_frames := strtoint(edit1.Text);
  file_counter := 1;

  save_path := savedialog1.FileName;
  w := image1.Width - 1;
  h := image1.Height - 1;

  for i := 0 to w do
   for j := 0 to h do
    image1.Canvas.Pixels[i,j] := 0;

  dr := 1;

  timer6.Enabled := true;
end;

end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
s := save_path + inttostr(file_counter) + '.bmp';



for k :=  0 to 223 do
  begin
    image1.Canvas.Pen.Color := clblack;
    image1.Canvas.MoveTo(k,0);
    image1.Canvas.LineTo(k,160);
  end;


    image1.Canvas.moveto(50,50);

    teta_real := -5000;
    a_const := 10;
    b_const := 1 / 500;
    image1.Canvas.Pen.Width := 2;
    teta_zero := file_counter;
repeat


    r := 0;
    g := 150;
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    radius := a_const * exp( b_const * (teta_real+teta_zero) );

    x1 := 50;
    y1 := 50;


    x := x1 + trunc ( radius * cos(teta_real*3.1415/180));
    y := y1 + trunc ( radius * sin(teta_real*3.1415/180));
    image1.Canvas.LineTo(x,y);


teta_real := teta_real + 1;

until (teta_real > 2000);



    image1.Canvas.moveto(150,100);

    teta_real := -5000;
    a_const := 30;
    b_const := 1 / 200;
    image1.Canvas.Pen.Width := 2;
    teta_zero := file_counter;
repeat


    r := 0;
    g := 150;
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    radius := a_const * exp( b_const * (teta_real+teta_zero) );

    x1 := 150;
    y1 := 100;


    x := x1 + trunc ( radius * cos(teta_real*3.1415/180));
    y := y1 + trunc ( radius * sin(teta_real*3.1415/180));
    image1.Canvas.LineTo(x,y);


teta_real := teta_real + 2;

until (teta_real > 2000);


image1.Picture.SaveToFile(s);

file_counter := file_counter + 1;

label2.Caption := 'Frame No: ' + inttostr(file_counter);

if file_counter > max_frames then timer5.Enabled := false;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
  timer7.Interval := 10;
  wave_width := strtoint(edit3.Text);
  end_line := 0;
  max_frames := strtoint(edit1.Text);
  file_counter := 1;

  save_path := savedialog1.FileName;
  w := image1.Width - 1;
  h := image1.Height - 1;

  for i := 0 to w do
   for j := 0 to h do
    image1.Canvas.Pixels[i,j] := 0;

  dr := 1;
  r_start := 3;

  timer7.Enabled := true;
end;
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
s := save_path + inttostr(file_counter) + '.bmp';



for k :=  0 to 223 do
  begin
    image1.Canvas.Pen.Color := clblack;
    image1.Canvas.MoveTo(k,0);
    image1.Canvas.LineTo(k,160);
  end;


    image1.Canvas.moveto(112,80);

    teta_real := -5000;
    a_const := 10;
    b_const := 1 / 500;
    image1.Canvas.Pen.Width := 2;
    teta_zero := file_counter;
repeat


    r := 0;
    g := 150;
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    radius := a_const * exp( b_const * (teta_real+teta_zero) );

    x1 := 112;
    y1 := 80;


    x := x1 + trunc ( radius * cos(teta_real*3.1415/180));
    y := y1 + trunc ( radius * sin(teta_real*3.1415/180));
    image1.Canvas.LineTo(x,y);


teta_real := teta_real + 5;

until (teta_real > 2000);


wave_width := 5;
dr := 1;
for k :=  r_start to r_start + wave_width do

  begin
    r := 0;
    g := trunc (( (255-k*4) / wave_width) * (k-r_start));
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    x1 := 180;
    y1 := 120;

    for teta := 0 to 1800 do
    begin
    x := x1 + trunc ( k * cos(teta*3.1415/900));
    y := y1 + trunc ( k * sin(teta*3.1415/900));
    image1.Canvas.Pixels[x,y] := rgb(r,g,b);
    end;



  end;



r_start := r_start + dr;


if r_start > 30 then
begin
r_start := 3;
dr := 1;
end;


image1.Picture.SaveToFile(s);

file_counter := file_counter + 1;

label2.Caption := 'Frame No: ' + inttostr(file_counter);

if file_counter > max_frames then timer7.Enabled := false;

end;

procedure TForm1.Button8Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
  timer8.Interval := 10;
  wave_width := strtoint(edit3.Text);
  end_line := 0;
  max_frames := strtoint(edit1.Text);
  file_counter := 1;

  save_path := savedialog1.FileName;
  w := image1.Width - 1;
  h := image1.Height - 1;

  for i := 0 to w do
   for j := 0 to h do
    image1.Canvas.Pixels[i,j] := 0;

  dr := 1;
  r_start := 3;

  timer8.Enabled := true;
end;
end;

procedure TForm1.Timer8Timer(Sender: TObject);
begin
s := save_path + inttostr(file_counter) + '.bmp';



for k :=  0 to 223 do
  begin
    image1.Canvas.Pen.Color := clblack;
    image1.Canvas.MoveTo(k,0);
    image1.Canvas.LineTo(k,160);
  end;


    image1.Canvas.moveto(80,80);

    teta_real := -5000;
    a_const := 10;
    b_const := 1 / 500;
    image1.Canvas.Pen.Width := 2;
    teta_zero := file_counter;

repeat


    r := 0;
    g := 150;
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    radius := a_const * exp( b_const * (teta_real+teta_zero) );

    x1 := 80;
    y1 := 80;


    x := x1 + trunc ( radius * cos(teta_real*3.1415/180));
    y := y1 + trunc ( radius * sin(teta_real*3.1415/180));
    image1.Canvas.LineTo(x,y);


teta_real := teta_real + 1;

until (teta_real > 2000);



    image1.Canvas.moveto(180,50);
    teta_real := -5000;
    a_const := 50;
    b_const := 1 / 200;
repeat


    r := 0;
    g := 150;
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    radius := a_const * exp( b_const * (teta_real+teta_zero) );

    x1 := 180;
    y1 := 50;


    x := x1 + trunc ( radius * cos(teta_real*3.1415/180));
    y := y1 + trunc ( radius * sin(teta_real*3.1415/180));
    image1.Canvas.LineTo(x,y);


teta_real := teta_real + 2;

until (teta_real > 2000);











//Ectopic
wave_width := 10;
dr := 1;
for k :=  r_start to r_start + wave_width do

  begin
    r := 0;
    g := trunc (( (255-k*4) / wave_width) * (k-r_start));
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);

    x1 := 180;
    y1 := 120;

    for teta := 0 to 1800 do
    begin
    x := x1 + trunc ( k * cos(teta*3.1415/900));
    y := y1 + trunc ( k * sin(teta*3.1415/900));
    image1.Canvas.Pixels[x,y] := rgb(r,g,b);
    end;



  end;



r_start := r_start + dr;


if r_start > 30 then
begin
r_start := 3;
dr := 1;
end;



image1.Picture.SaveToFile(s);

file_counter := file_counter + 1;

label2.Caption := 'Frame No: ' + inttostr(file_counter);

if file_counter > max_frames then timer8.Enabled := false;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
  timer9.Interval := 10;
  wave_width := strtoint(edit3.Text);
  end_line := 0;
  max_frames := strtoint(edit1.Text);
  file_counter := 1;

  save_path := savedialog1.FileName;
  w := image1.Width - 1;
  h := image1.Height - 1;

  for i := 0 to w do
   for j := 0 to h do
    image1.Canvas.Pixels[i,j] := 0;

  dr := 1;
  teta := 210;
  teta2 := 60;
  dteta := 1;
  x0 := image1.Width;
  y0 := image1.Height;
  

  timer9.Enabled := true;
end;
end;

procedure TForm1.Timer9Timer(Sender: TObject);
begin
s := save_path + inttostr(file_counter) + '.bmp';
image1.Canvas.Pen.Width := 5;

teta := teta+1;
for k :=  0 to wave_width do
  begin
   image1.Canvas.Pen.Color := clblack;
    x := x0 + trunc(30*cos((teta-k)*3.14/180));
    y := y0 - trunc(30*sin((teta-k)*3.14/180));
    image1.Canvas.MoveTo(x,y);

    x := x0 + trunc(300*cos((teta-k)*3.14/180));
    y := y0 - trunc(300*sin((teta-k)*3.14/180));
    image1.Canvas.LineTo(x,y);
  end;



    teta := teta-1;



for k :=  0 to wave_width do
  begin

    r := 0;
    g := trunc ( (255 / wave_width) * k);
    b := g;
    image1.Canvas.Pen.Color := rgb(r,g,b);
    
    x := x0 + trunc(30*cos((teta-k)*3.14/180));
    y := y0 - trunc(30*sin((teta-k)*3.14/180));
    image1.Canvas.MoveTo(x,y);

    x := x0 + trunc(300*cos((teta-k)*3.14/180));
    y := y0 - trunc(300*sin((teta-k)*3.14/180));
    image1.Canvas.LineTo(x,y);
  end;





teta := teta - dteta;

if teta < teta2 then
begin
teta := 210;
dteta := 1;
end;

{
if end_line > 50 then dx := 1;

if end_line > 100 then dx := 1.5;

if end_line > 150 then dx := 2;

if end_line > 200 then dx := 2.5;

 }


image1.Picture.SaveToFile(s);

file_counter := file_counter + 1;
label2.Caption := 'Frame No: ' + inttostr(file_counter);

if file_counter > max_frames then timer1.Enabled := false;

end;

end.
