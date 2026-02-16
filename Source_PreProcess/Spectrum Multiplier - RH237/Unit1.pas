unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ExtDlgs;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
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
    Memo1: TMemo;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

       if r > 5 then  intensity := r * scale;

       if intensity > 255 then intensity := 255;
    image2.Canvas.Pixels[i,j] :=  rgb(trunc(intensity),0,0);

  end;
end;

image2.Picture.SaveToFile(out_path);

frame_index :=  frame_index + 1;

label5.Caption := 'Frame No: ' + inttostr(frame_index);


if frame_index > max_frame_count then
begin
 timer1.Enabled := false;


 //showmessage('Process has compeleted');

 path_counter := path_counter + 1;
 Button3.Click;
 
 
end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   max_frame_count :=strtoint(edit2.Text);
scale := strtofloat(edit1.text);
frame_index := 0;
timer1.Enabled := true;

end;

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
xc2 := x;
yc2 := y;

end;

procedure TForm1.Image2Click(Sender: TObject);
begin
cv := image2.Canvas.Pixels[xc2,yc2];
label8.Caption := 'R: ' + inttostr(getrvalue(cv))+ ' ,G: '+inttostr(getgvalue(cv))+ ' ,B: '+inttostr(getbvalue(cv));

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

procedure TForm1.Button3Click(Sender: TObject);
begin


//I:\Optical Mapping Test (12Tir1397-Rabbit Whole Heart)\Casio\Electric-Mechanic-Fura2\Mechanic-Electric\CIMG0453_MOV\Cropped\Gray_Scale
s1 := memo1.Lines[path_counter] + '\Cropped\';
 // image1.Picture.LoadFromFile(s1);
  label3.Caption := s1;


   folder_path := s1;
   in_path := s1;
   out_path := s1 + 'Gray_Scale\';
   CreateDir(out_path);


   edit2.Text := inttostr(CountFilesInFolder(folder_path)-5);
   button2.Click;
   
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
path_counter := 0;
end;

end.
