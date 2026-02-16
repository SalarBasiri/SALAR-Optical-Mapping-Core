unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Image2: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   i, j , k : integer;
   r,g,b : byte;
   r2,g2,b2 : integer;
   cv : int64;
   w,h : integer;
   r_count, r_ave : integer;
   r_sum : int64;
   s1 , s2 , s3 : string;
   c1 , c2 , l : integer;
   in_path , out_path : string;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if openpicturedialog1.Execute then
begin
image1.Picture.LoadFromFile(openpicturedialog1.FileName);

s1 := openpicturedialog1.FileName;

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

   s3:='';
   repeat
     s3 := s3 + s1[c1];
     c1 := c1 + 1;

   until (s1[c1] = '.');


   in_path := s2;
   out_path := in_path + '\Digitized';
   CreateDir(out_path);

image2.Picture := image1.Picture;

w := 447;
h := 319;


for i := 0 to w do
begin
 for j := 0 to h do
 begin
   cv := image1.Canvas.pixels[i,j];

   r := getrvalue(cv);

   if r > 1 then
   begin
   r_count := r_count + 1;
   r_sum := r_sum + r;
   end;



 end;
end;

r_ave := trunc(r_sum / r_count);

for i := 0 to w do
begin
 for j := 0 to h do
 begin
   cv := image1.Canvas.pixels[i,j];

   r := getrvalue(cv);
   g := getgvalue(cv);
   b := getbvalue(cV);


   r2 := 0;
   b2 := 0;
   g2 := 0;

   if r > 2 then
   begin
   g2 := r * 8;
   if g2 > 255 then g2 := 255;

   end
   else
   begin

   b2 := trunc(b);
   r2 := trunc(b/4);

   end;
   
   image2.Canvas.Pixels[w-i,h-j] := rgb (r2,g2,b2);


 end;
end;


image2.Picture.SaveToFile(out_path+'\'+s3+'.bmp');

end;

end;

end.
