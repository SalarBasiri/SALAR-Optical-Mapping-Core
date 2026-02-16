unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ExtDlgs;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Timer1: TTimer;
    Button2: TButton;
    Button3: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    Image3: TImage;
    GroupBox4: TGroupBox;
    Image4: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
   path1 , path2 : string;


   r1,g1,b1,r2,g2,b2 : integer;
   r_sum,g_sum,b_sum : integer;
   r_minus,g_minus,b_minus : integer;

   
implementation

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
max_frame_count := CountFilesInFolder(path1) - 5;
label2.Caption := ' of ' +inttostr(max_frame_count);
timer1.Enabled := true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
s := path1 + 'f'+inttostr(frame_index)+'.bmp';
label3.Caption := s;
image1.Picture.LoadFromFile(s);

s := path2 + 'f'+inttostr(frame_index)+'.bmp';
label4.Caption := s;
image2.Picture.LoadFromFile(s);

for i := 0 to 223 do
begin
for j := 0 to 159 do
  begin
   cv := image1.Canvas.Pixels[i,j];
   r1 := getrvalue(cv);
   g1 := getrvalue(cv);
   b1 := getrvalue(cv);

   cv := image2.Canvas.Pixels[i,j];
   r2 := getrvalue(cv);
   g2 := getrvalue(cv);
   b2 := getrvalue(cv);

   r_sum := r1 + r2;
   g_sum := g1 + g2;
   b_sum := b1 + b2;

   r_minus := r1 - r2;
   g_minus := g1 - g2;
   b_minus := b1 - b2;

   r_minus := r_minus * 2;
   g_minus := g_minus * 3;
   b_minus := b_minus * 3;

   if r_sum > 255 then r_sum := 255;
   if g_sum > 255 then g_sum := 255;
   if b_sum > 255 then b_sum := 255;

   if r_minus < 0 then r_minus := 0;
   if g_minus < 0 then g_minus := 0;
   if b_minus < 0 then b_minus := 0;

   image3.Canvas.Pixels[i,j] := rgb(r_sum,g_sum,b_sum);
   image4.Canvas.Pixels[i,j] := rgb(r_minus,g_minus,b_minus);




  end;
end;


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

label5.Caption := 'Frame No: ' + inttostr(frame_index);

if frame_index > max_frame_count then timer1.Enabled := false;





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

procedure TForm1.Button3Click(Sender: TObject);
begin
if openpicturedialog1.Execute then
begin
s1 := openpicturedialog1.FileName;
  image1.Picture.LoadFromFile(s1);
  groupbox1.Caption := s1;
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

  path1 := s2;
  groupbox1.Caption := path1;

end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if openpicturedialog1.Execute then
begin
s1 := openpicturedialog1.FileName;
  image2.Picture.LoadFromFile(s1);
  groupbox2.Caption := s1;
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

  path2 := s2;
  groupbox2.Caption := path2;

end;
end;

end.
