unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ExtDlgs;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    OpenPictureDialog1: TOpenPictureDialog;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    r_image: TImage;
    g_image: TImage;
    b_image: TImage;
    Button3: TButton;
    Button4: TButton;
    Label14: TLabel;
    Label15: TLabel;
    bw_image: TImage;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);


    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure r_imageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure g_imageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure b_imageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure r_imageClick(Sender: TObject);
    procedure g_imageClick(Sender: TObject);
    procedure b_imageClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure bw_imageClick(Sender: TObject);
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

   folder_path := s2;
   in_path := s2;
   out_path := s2 + 'R_Scale\';
   CreateDir(out_path);

      out_path := s2 + 'G_Scale\';
   CreateDir(out_path);

      out_path := s2 + 'B_Scale\';
   CreateDir(out_path);

   out_path := s2 + 'Gray_Scale\';
   CreateDir(out_path);

   label3.Caption := s2;

   edit2.Text := inttostr(CountFilesInFolder(folder_path)-5);

end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

s := in_path + 'f'+inttostr(frame_index)+'.bmp';
label4.Caption := s;
image1.Picture.LoadFromFile(s);


//RRRRRRRRRRRRRRRR
out_path := in_path + 'R_Scale\f'+inttostr(frame_index)+'.bmp';
label3.Caption := out_path;
for j := 0 to 160 do
begin
  for i := 0 to 224 do
  begin


       cv := image1.Canvas.Pixels[i,j];
       r := getrvalue(cv);
       g := getgvalue(cv);
       b := getbvalue(cv);


       intensity := r * scale;

       if intensity > 255 then intensity := 255;
    r_image.Canvas.Pixels[i,j] :=  rgb(trunc(intensity),0,0);

  end;
end;

r_image.Picture.SaveToFile(out_path);

//GGGGGGGGGGGGGGGGGGGGGGGGGGG
out_path := in_path + 'G_Scale\f'+inttostr(frame_index)+'.bmp';
label14.Caption := out_path;
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
    g_image.Canvas.Pixels[i,j] :=  rgb(0,trunc(intensity),0);

  end;
end;

g_image.Picture.SaveToFile(out_path);

//BBBBBBBBBBBBBBB
out_path := in_path + 'B_Scale\f'+inttostr(frame_index)+'.bmp';
label15.Caption := out_path;
for j := 0 to 160 do
begin
  for i := 0 to 224 do
  begin


       cv := image1.Canvas.Pixels[i,j];
       r := getrvalue(cv);
       g := getgvalue(cv);
       b := getbvalue(cv);


       intensity := b * scale;

       if intensity > 255 then intensity := 255;
    b_image.Canvas.Pixels[i,j] :=  rgb(0,0,trunc(intensity));

  end;
end;

b_image.Picture.SaveToFile(out_path);


//Gray Scale
out_path := in_path + 'Gray_Scale\f'+inttostr(frame_index)+'.bmp';
label18.Caption := out_path;
for j := 0 to 160 do
begin
  for i := 0 to 224 do
  begin


       cv := image1.Canvas.Pixels[i,j];
       r := getrvalue(cv);
       g := getgvalue(cv);
       b := getbvalue(cv);


       intensity := (0.2989 * R + 0.5870 * G + 0.1141 * B) * scale;

       if intensity > 255 then intensity := 255;
    bw_image.Canvas.Pixels[i,j] :=  rgb(trunc(intensity),trunc(intensity),trunc(intensity));

  end;
end;

bw_image.Picture.SaveToFile(out_path);


frame_index :=  frame_index + 1;

label5.Caption := 'Frame No: ' + inttostr(frame_index);


if frame_index > max_frame_count then
begin
 timer1.Enabled := false;


 //showmessage('Process has compeleted');

 path_counter := path_counter + 1;

 
 
end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
max_frame_count :=strtoint(edit2.Text);
scale := strtofloat(edit1.text);
frame_index := 0;
timer1.Enabled := true;

end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
xc1 := x;
yc1 := y;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
cv := image1.Canvas.Pixels[xc1,yc1];
label9.Caption := 'R: ' + inttostr(getrvalue(cv))+ ' ,G: '+inttostr(getgvalue(cv))+ ' ,B: '+inttostr(getbvalue(cv));

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
path_counter := 0;
end;

procedure TForm1.r_imageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
xc2 := x;
yc2 := y;
end;

procedure TForm1.g_imageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
xc2 := x;
yc2 := y;
end;

procedure TForm1.b_imageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
xc2 := x;
yc2 := y;
end;

procedure TForm1.r_imageClick(Sender: TObject);
begin
cv := r_image.Canvas.Pixels[xc2,yc2];
label8.Caption := 'R: ' + inttostr(getrvalue(cv)) + ' , G: '+ inttostr(getgvalue(cv)) + ' , B: '+ inttostr(getbvalue(cv));
end;

procedure TForm1.g_imageClick(Sender: TObject);
begin
cv := g_image.Canvas.Pixels[xc2,yc2];
label12.Caption := 'R: ' + inttostr(getrvalue(cv)) + ' , G: '+ inttostr(getgvalue(cv)) + ' , B: '+ inttostr(getbvalue(cv));
end;

procedure TForm1.b_imageClick(Sender: TObject);
begin
cv := b_image.Canvas.Pixels[xc2,yc2];
label13.Caption := 'R: ' + inttostr(getrvalue(cv)) + ' , G: '+ inttostr(getgvalue(cv)) + ' , B: '+ inttostr(getbvalue(cv));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
timer1.Enabled := false;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
timer1.Enabled := true;
end;

procedure TForm1.bw_imageClick(Sender: TObject);
begin
cv := bw_image.Canvas.Pixels[xc2,yc2];
label17.Caption := 'R: ' + inttostr(getrvalue(cv)) + ' , G: '+ inttostr(getgvalue(cv)) + ' , B: '+ inttostr(getbvalue(cv));

end;

end.
