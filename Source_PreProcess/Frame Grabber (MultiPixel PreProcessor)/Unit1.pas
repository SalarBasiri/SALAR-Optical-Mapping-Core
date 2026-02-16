unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DSPack, TeEngine, Series, TeeProcs, Chart,
  ComCtrls;

type
  TForm1 = class(TForm)
    FilterGraph: TFilterGraph;
    VideoWindow: TVideoWindow;
    SampleGrabber: TSampleGrabber;
    OpenPlay: TButton;
    Snapshot: TButton;
    OpenDialog: TOpenDialog;
    CallBack: TCheckBox;
    Label1: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    Label6: TLabel;
    Edit3: TEdit;
    TrackBar1: TTrackBar;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Image: TImage;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Edit4: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Button2: TButton;
    procedure OpenPlayClick(Sender: TObject);
    procedure SnapshotClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SampleGrabberBuffer(sender: TObject; SampleTime: Double;
      pBuffer: Pointer; BufferLen: Integer);
    procedure ImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  frame_counter , CV , max_frame_counter: int64;
  save_path, folder_path : string;
  xc , yc ,xp,yp: integer;
  r,g,b : byte;
  max_y : integer;
  dt : double;
  t : double;
implementation

{$R *.dfm}

procedure TForm1.OpenPlayClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    FilterGraph.Active := False;
    FilterGraph.Active := true;
    FilterGraph.RenderFile(OpenDialog.FileName);
    folder_path := OpenDialog.FileName;   //+'_'+formatdatetime('hh_mm_ss',now);
    folder_path := stringreplace(folder_path, '.', '_',[rfReplaceAll, rfIgnoreCase]);
    mkdir(folder_path);
    chart1.Series[0].Clear;


    frame_counter := 0;
    FilterGraph.Play;
    

  end;
end;

procedure TForm1.SnapshotClick(Sender: TObject);
begin
  SampleGrabber.GetBitmap(Image.Picture.Bitmap);
  dt := 1 / strtoint(edit3.Text);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CallBack.Checked := false;
  FilterGraph.ClearGraph;
  FilterGraph.Active := false;
end;

procedure TForm1.SampleGrabberBuffer(sender: TObject; SampleTime: Double;
  pBuffer: Pointer; BufferLen: Integer);
begin

    Image.Canvas.Lock; // to avoid flickering
    try
      SampleGrabber.GetBitmap(Image.Picture.Bitmap, pBuffer, BufferLen);
      save_path := folder_path+'\f'+inttostr(frame_counter) + '.bmp';
      image.Picture.SaveToFile(save_path);
      frame_counter := frame_counter +1;
     // label10.Caption := 'frame No '+inttostr(frame_counter) + ' out of '+inttostr(max_frame_counter);
     { cv := image.Canvas.Pixels[xp,yp];
      r := getrvalue(cv);
      g := getgvalue(cv);
      b := getbvalue(cv);
      t := trunc(frame_counter * dt * 1000);
      chart1.Series[0].AddXY(t,r);
      chart1.Series[1].AddXY(t,g);
      chart1.Series[2].AddXY(t,b);
      if frame_counter > 50 then chart1.BottomAxis.SetMinMax(chart1.BottomAxis.Minimum + 1,chart1.BottomAxis.Maximum + 1); }
       if frame_counter > max_frame_counter then
       begin
       filtergraph.Active := false;
       showmessage ('Frame preprocess has been compeleted');

       end;
       

      //label1.Caption := 'Frame No:' + inttostr(frame_counter);
    finally
      Image.Canvas.Unlock;
    end;

end;

procedure TForm1.ImageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  xc := x;
  yc := y;
end;

procedure TForm1.ImageClick(Sender: TObject);
begin
edit1.Text := inttostr(xc);
edit2.Text := inttostr(yc);
xp := xc;
yp := yc;
cv := image.Canvas.Pixels[xc,yc];
shape1.Left := image.Left + xp - trunc(shape1.Width/2);
shape1.Top := image.Top + yp - trunc(shape1.Height/2);
label2.Caption := 'CV: ' + inttostr(cv);
Label3.Caption := 'R: '+inttostr(getrvalue(cv)) + ' ,G: '+inttostr(getgvalue(cv))+ ' ,B: '+inttostr(getbvalue(cv));

end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
chart1.LeftAxis.SetMinMax(0,trackbar1.Position + 5);
end;

procedure TForm1.ComboBox2Select(Sender: TObject);
begin

{
224x64 , 1000FPS
224x160 , 480FPS
512x384 , 240FPS
640x480 , 120FPS
640x480 , 30FPS
}

if combobox2.ItemIndex = 0 then
begin
 dt := 1 / 1000;
 image.Width := 224;
 image.height := 64;
 videowindow.Width := 224;
 videowindow.Height := 64;

end;


if combobox2.ItemIndex = 1 then
begin
 dt := 1 / 480;
 image.Width := 224;
 image.height := 160;
 videowindow.Width := 224;
 videowindow.Height := 160;

end;


if combobox2.ItemIndex = 2 then
begin
 dt := 1 / 240;
 image.Width := 512;
 image.height := 384;
 videowindow.Width := 512;
 videowindow.Height := 384;

end;


if combobox2.ItemIndex = 3 then
begin
 dt := 1 / 120;
 image.Width := 640;
 image.height := 480;
 videowindow.Width := 640;
 videowindow.Height := 480;

end;


if combobox2.ItemIndex = 4 then
begin
 dt := 1 / 30;
 image.Width := 640;
 image.height := 480;
 videowindow.Width := 640;
 videowindow.Height := 480;

end;


if combobox2.ItemIndex = 5 then
begin
 dt := 1 / 30;
 image.Width := 1920;
 image.height := 1080;
 videowindow.Width := 1920;
 videowindow.Height := 1080;

end;


if combobox2.ItemIndex = 6 then
begin
 dt := 1 / 400;
 image.Width := 854;
 image.height := 480;
 videowindow.Width := 854;
 videowindow.Height := 480;

end;


end;

procedure TForm1.ComboBox1Select(Sender: TObject);
begin
image.Visible := true;
videowindow.Visible := true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
max_frame_counter := 30 * strtoint(edit4.Text);
openplay.Click;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
combobox1.SetFocus;
end;

end.
