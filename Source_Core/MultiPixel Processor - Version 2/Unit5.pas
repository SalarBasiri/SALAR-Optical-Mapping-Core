unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ExtDlgs, ComCtrls;

type
  Twizard_form = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox3: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox3: TComboBox;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    Button3: TButton;
    GroupBox5: TGroupBox;
    Image1: TImage;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label7: TLabel;
    Button6: TButton;
    Button7: TButton;
    GroupBox10: TGroupBox;
    ComboBox5: TComboBox;
    Label6: TLabel;
    Image3: TImage;
    Label9: TLabel;
    Edit1: TEdit;
    ComboBox6: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    ComboBox7: TComboBox;
    ComboBox4: TComboBox;
    Label8: TLabel;
    Button1: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Label12: TLabel;
    Shape1: TShape;
    Button5: TButton;
    GroupBox6: TGroupBox;
    Image2: TImage;
    Label13: TLabel;
    Edit2: TEdit;
    Image4: TImage;
    Edit3: TEdit;
    Label14: TLabel;
    Button4: TButton;
    Button8: TButton;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Button9: TButton;
    procedure ComboBox2Select(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox6Select(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure ComboBox3Select(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox7Select(Sender: TObject);
    procedure ComboBox5Select(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ComboBox4Select(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wizard_form: Twizard_form;

  x11 , y11 : integer;

  rect_flag , drag_flag : boolean;


  binning_width , dis , i , j , m , n: integer;

    xc , yc : integer;

    mark_color : int64;

     process_window_dimension , process_window_dimension_plus , pixel_width: byte;

     min_dim : byte;
  
implementation

uses Unit1, Unit2, Unit4;

{$R *.dfm}

procedure Twizard_form.ComboBox2Select(Sender: TObject);
begin
combobox1.Enabled := true;
combobox3.Enabled := true;
if combobox2.ItemIndex = 0 then
begin
//casio
Combobox1.Items.Clear;
combobox1.Items.Add('1920 x 1080');
combobox1.Items.Add('1280 x 720');
combobox1.Items.Add('640 x 480');
combobox1.Items.Add('512 x 384');
combobox1.Items.Add('224 x 160');
combobox1.Items.Add('224 x 64');
Combobox3.Items.Clear;
combobox3.Items.Add('30');
combobox3.Items.Add('120');
combobox3.Items.Add('480');
combobox3.Items.Add('1000');
end;

if combobox2.ItemIndex = 1 then
begin
//Nature
Combobox1.Items.Clear;
combobox1.Items.Add('224 x 160');
Combobox3.Items.Clear;
combobox3.Items.Add('400');
end;

if combobox2.ItemIndex = 2 then
begin
//Panasonic iPro
Combobox1.Items.Clear;
combobox1.Items.Add('1280 x 720');
combobox1.Items.Add('640 x 480');
Combobox3.Items.Clear;
combobox3.Items.Add('30');
end;

if combobox2.ItemIndex = 3 then
begin
//Acute
Combobox1.Items.Clear;
combobox1.Items.Add('720 x 576');
Combobox3.Items.Clear;
combobox3.Items.Add('30');

end;


if combobox2.ItemIndex = 4 then
begin
//FLIR Black Fly
Combobox1.Items.Clear;
combobox1.Items.Add('224 x 160');
Combobox3.Items.Clear;
combobox3.Items.Add('200');
combobox3.Items.Add('100');
combobox3.Items.Add('66');
combobox3.Items.Add('50');
end;

if combobox2.ItemIndex = 5 then
begin
//Simulated Wave
Combobox1.Items.Clear;
combobox1.Items.Add('224 x 160');
Combobox3.Items.Clear;
combobox3.Items.Add('100');
end;


end;

procedure Twizard_form.FormCreate(Sender: TObject);
begin
wizard_form.BorderStyle := bssingle;
end;

procedure Twizard_form.ComboBox6Select(Sender: TObject);
begin

process_window_dimension_plus := strtoint(combobox6.Items[combobox6.itemindex]);
process_window_dimension := process_window_dimension_plus -1;
form1.Edit12.Text := inttostr(process_window_dimension_plus);
zoom_form.Label6.Caption := inttostr(process_window_dimension_plus);


end;

procedure Twizard_form.RadioButton2Click(Sender: TObject);
begin
groupbox3.Enabled := true;

groupbox7.Enabled := true;

groupbox8.Enabled := true;


end;

procedure Twizard_form.ComboBox3Select(Sender: TObject);
begin
form1.Edit16.Text := combobox3.Items[combobox3.itemindex];

end;

procedure Twizard_form.Button6Click(Sender: TObject);
begin

if openpicturedialog1.Execute then
begin

image1.Picture.LoadFromFile(openpicturedialog1.FileName);
form1.Image1.Picture := image1.Picture;
zoom_form.Image1.Picture := image1.Picture;
form1.Label35.Caption := openpicturedialog1.FileName

end;

end;

procedure Twizard_form.Button7Click(Sender: TObject);
begin
image1.Picture.LoadFromFile(openpicturedialog1.FileName);
form1.Image1.Picture := image1.Picture;
zoom_form.Image1.Picture := image1.Picture;
form1.Label35.Caption := openpicturedialog1.FileName;

end;

procedure Twizard_form.Button2Click(Sender: TObject);
begin
form1.Button21.Click;
end;

procedure Twizard_form.Button3Click(Sender: TObject);
begin
form1.Button20.Click;
end;

procedure Twizard_form.ComboBox7Select(Sender: TObject);
begin
binning_width := combobox7.ItemIndex;
form1.Edit4.Text := inttostr(combobox7.ItemIndex);




end;

procedure Twizard_form.ComboBox5Select(Sender: TObject);
begin
dis := combobox5.ItemIndex+1;
form1.Edit3.Text := inttostr(dis);
zoom_form.Label3.Caption := inttostr(dis);


end;

procedure Twizard_form.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
xc := trunc(x/4);
yc:= trunc(y/4);

label12.Caption := inttostr(xc)+','+ inttostr(yc);

if rect_flag = true then
begin
//image1.Canvas.Rectangle(x11,y11,trunc(xc/4),trunc(yc/4));
image1.Picture.LoadFromFile(openpicturedialog1.FileName);
image1.Canvas.MoveTo(x11,y11);
image1.Canvas.LineTo(xc,y11);
image1.Canvas.LineTo(xc,yc);
image1.Canvas.LineTo(x11,yc);
image1.Canvas.LineTo(x11,y11);

dis := 5;
binning_width := 1;
process_window_dimension := trunc((xc-x11) / dis);
min_dim := trunc((yc-y11) / dis);

if min_dim < process_window_dimension then process_window_dimension := min_dim;




if process_window_dimension > 1 then
begin
for j := 0 to process_window_dimension do
begin
  for i := 0 to process_window_dimension do
  begin
  x := x11 + i * dis;
  y := y11 + j * dis;

    for m := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x+m , y] := mark_color;
       zoom_form.image1.canvas.pixels[x+m , y] := mark_color;
    end;

    for n := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x , y+n] := mark_color;
       zoom_form.image1.canvas.pixels[x , y+n] := mark_color;
    end;

  x_point[j*process_window_dimension_plus + i] := x;
  y_point[j*process_window_dimension_plus + i] := y;


  end;
end;

end; //if process_window_dimension > 2 then



end;

end;

procedure Twizard_form.Button4Click(Sender: TObject);
begin
form1.Button7.Click;
end;

procedure Twizard_form.Image1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
x11 := xc;
y11 := yc;

if drag_flag = true then
begin
rect_flag := true;



mark_color := clwhite;
image1.Canvas.Pen.Color := clwhite;
end;

end;

procedure Twizard_form.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if drag_flag = true then
begin
rect_flag := false;

combobox5.ItemIndex := 4;
dis := combobox5.ItemIndex+1;
form1.Edit3.Text := inttostr(dis);
zoom_form.Label3.Caption := inttostr(dis);


combobox6.ItemIndex := 8;
process_window_dimension_plus := process_window_dimension + 1;
form1.Edit12.Text := inttostr(process_window_dimension_plus);
zoom_form.Label6.Caption := inttostr(process_window_dimension_plus);



combobox7.ItemIndex := 1;
binning_width := combobox7.ItemIndex;
form1.Edit4.Text := inttostr(combobox7.ItemIndex);


form1.Label36.Caption := inttostr(x11);
form1.Label37.Caption := inttostr(y11);
zoom_form.Label4.Caption := inttostr(x11);
zoom_form.Label5.Caption := inttostr(y11);



combobox4.ItemIndex := 3;
form1.radiobutton4.Checked := true;


//set on main form
form1.Button10.Click;
end;

end;

procedure Twizard_form.Button1Click(Sender: TObject);
begin

image1.Picture.LoadFromFile(openpicturedialog1.FileName);
form1.Image1.Picture := image1.Picture;
zoom_form.Image1.Picture := image1.Picture;
form1.Label35.Caption := openpicturedialog1.FileName;

drag_flag := true;

end;

procedure Twizard_form.Button5Click(Sender: TObject);
begin
image1.Picture.LoadFromFile(openpicturedialog1.FileName);

drag_flag := false;

end;

procedure Twizard_form.Image1Click(Sender: TObject);
begin
if drag_flag = false then
begin
x11 := xc;
y11 := yc;
form1.Label36.Caption := inttostr(x11);
form1.Label37.Caption := inttostr(y11);
zoom_form.Label4.Caption := inttostr(x11);
zoom_form.Label5.Caption := inttostr(y11);

for j := 0 to process_window_dimension do
begin
  for i := 0 to process_window_dimension do
  begin
  x := x11 + i * dis;
  y := y11 + j * dis;

    for m := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x+m , y] := mark_color;
       zoom_form.image1.canvas.pixels[x+m , y] := mark_color;
    end;

    for n := -binning_width to binning_width do
    begin
       image1.canvas.pixels[x , y+n] := mark_color;
       zoom_form.image1.canvas.pixels[x , y+n] := mark_color;
    end;

  end;
end;

//set on main form
form1.Button10.Click;


end;


end;

procedure Twizard_form.ComboBox4Select(Sender: TObject);
begin
if combobox4.ItemIndex = 0 then
begin
form1.radiobutton1.Checked := true;
mark_color := clblue;
end;

if combobox4.ItemIndex = 1 then
begin
form1.radiobutton2.Checked := true;
mark_color := clgreen;
end;

if combobox4.ItemIndex = 2 then
begin
form1.radiobutton3.Checked := true;
mark_color := clyellow;
end;

if combobox4.ItemIndex = 3 then
begin
form1.radiobutton4.Checked := true;
mark_color := clwhite;
end;

end;

procedure Twizard_form.Edit1Change(Sender: TObject);
begin
form1.Edit1.Text := edit1.Text;
end;

procedure Twizard_form.Edit2Change(Sender: TObject);
begin
form1.Edit6.Text := edit2.Text;
end;

procedure Twizard_form.Edit3Change(Sender: TObject);
begin
form1.Edit15.Text := edit3.Text;
end;

procedure Twizard_form.Button8Click(Sender: TObject);
begin
form1.Button14.Click;
end;

end.
