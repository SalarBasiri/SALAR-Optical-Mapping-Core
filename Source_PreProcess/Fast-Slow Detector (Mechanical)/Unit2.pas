unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ExtDlgs;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Button2: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Image2: TImage;
    Image3: TImage;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  i,j : integer;
  cv : int64;
  r,g,b : byte;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if savedialog1.Execute then
begin

for i := 0 to 223 do
begin
  for j := 0 to 159 do
  begin
  cv := image1.Canvas.Pixels[i,j];
  image3.Canvas.Pixels[i*2,j*2] := cv;
  image3.Canvas.Pixels[i*2+1,j*2] := cv;
  image3.Canvas.Pixels[i*2,j*2+1] := cv;
  image3.Canvas.Pixels[i*2+1,j*2+1] := cv;


  end;
end;

image3.Canvas.TextOut(10,330,'Folder Path: ' + form1.label2.Caption);
image3.Canvas.TextOut(460,30,'Processed Frames: ' + form1.Edit3.Text);
image3.Canvas.TextOut(460,60,'Time of Captured Video: ' + form1.label4.Caption);
image3.Canvas.TextOut(460,90,label1.Caption);
image3.Canvas.TextOut(460,120,label2.Caption);
image3.Canvas.TextOut(460,150,'Variance Thereshold: ' + form1.Edit2.Text);
image3.Canvas.TextOut(460,180,'Actual Stimulation (ms): ' + edit1.Text);




image3.Picture.SaveToFile(savedialog1.FileName+'.bmp');


end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin

for i := 0 to 223 do
begin
  for j := 0 to 159 do
  begin
   cv := image1.Canvas.Pixels[i,j];
   b := getbvalue(cv);

   if b > 3 then
   begin
     image1.Canvas.Pixels[i,j] := cv;
   end
   else
   begin
      cv := image2.Canvas.Pixels[i,j];
      b := getbvalue(cv);
      image1.Canvas.Pixels[i,j] := rgb(b,b,b);
   end;



 

  end;






end;

end;

end.
