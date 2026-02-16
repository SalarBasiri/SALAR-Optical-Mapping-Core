unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    Button3: TButton;
    Timer1: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Button4: TButton;
    Button5: TButton;
    Memo1: TMemo;
    Button6: TButton;
    Edit4: TEdit;
    Label6: TLabel;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  xc , yc : integer;
  x1,y1 , x2 , y2: integer;
  x , y : integer;
  s1,s2,s3 , in_path , out_path: string;
  c1,c2,c3 , l : integer;
   file_counter : integer;
   max_file_count : integer;

  DstRect, SrcRect: TRect;

  last_x , last_y : integer;

  crop_flag : boolean;
  file_counter_out : integer;
  
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

   in_path := s2;
   out_path := in_path + edit4.Text;
   CreateDir(out_path);

   edit3.Text := inttostr(CountFilesInFolder(in_path) - 2);
   label3.Caption := s2;

end;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
xc := x;
yc := y;

end;

procedure TForm1.Image1Click(Sender: TObject);
begin
x1 := xc;
y1 := yc;
image1.Canvas.Pen.Width := 2;
image1.Canvas.Pen.Color := clwhite;
image1.Canvas.MoveTo(x1,y1);
image1.Canvas.LineTo(x1+224,y1);
image1.Canvas.LineTo(x1+224,y1+160);
image1.Canvas.LineTo(x1,y1+160);
image1.Canvas.LineTo(x1,y1);
last_x := x1;
last_y := y1;
edit1.Text := inttostr(x1);
edit2.Text := inttostr(y1);
memo1.Lines.Clear;
memo1.Lines.Add(edit1.Text);
memo1.Lines.add(edit2.Text);
memo1.Lines.SaveToFile('c:\optical\last_region.oms');

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
image1.Picture.LoadFromFile(openpicturedialog1.FileName);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
x2 := x1 + 224;
y2 := y1 + 160;
file_counter := 0;
file_counter_out := 0;
max_file_count := strtoint(edit3.Text);
crop_flag := true;
timer1.Enabled := true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

s1 := in_path + 'f'+inttostr(file_counter)+'.bmp';
image1.Picture.LoadFromFile(s1);

label4.Caption := 'Frame No:' + inttostr(file_counter);



if crop_flag then
begin

  with Image2.Canvas do
  begin
    CopyMode := cmSrcCopy;
    DstRect := Rect(0, 0, Image2.Width, Image2.Height);
    SrcRect := Rect(x1, y1, x1+224, y1+160);
    CopyRect(DstRect, Image1.Canvas, SrcRect);
  end;

s2 := out_path+'\f'+inttostr(file_counter_out)+'.bmp';
image2.Picture.SaveToFile(s2);
file_counter_out := file_counter_out + 1;
end;

file_counter := file_counter+1;
if file_counter > max_file_count then
begin
timer1.Enabled := false;
showmessage('Images have been Cropped');


end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
button1.SetFocus;
end;

procedure TForm1.Button4Click(Sender: TObject);

begin
  with Image2.Canvas do
  begin
    CopyMode := cmSrcCopy;
    DstRect := Rect(0, 0, Image2.Width, Image2.Height);
    SrcRect := Rect(x1, y1, x1+224, y1+160);
    CopyRect(DstRect, Image1.Canvas, SrcRect);
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
x1 := last_x;
y1 := last_y;
image1.Canvas.Pen.Width := 2;
image1.Canvas.Pen.Color := clwhite;
image1.Canvas.MoveTo(x1,y1);
image1.Canvas.LineTo(x1+224,y1);
image1.Canvas.LineTo(x1+224,y1+160);
image1.Canvas.LineTo(x1,y1+160);
image1.Canvas.LineTo(x1,y1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
memo1.Lines.LoadFromFile('c:\optical\last_region.oms');
edit1.Text := memo1.Lines[0];
edit2.Text := memo1.Lines[1];
x1 := strtoint(edit1.Text);
y1 := strtoint(edit2.Text);
last_x := x1;
last_y := y1;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin

   out_path := in_path + edit4.Text;
   CreateDir(out_path);

crop_flag := true;
file_counter_out := 0;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin

crop_flag := false;

end;

end.
