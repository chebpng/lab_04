unit Unit1;
{$mode objfpc}{$H+}
interface
uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, Math, Windows;
type
  { TForm1 }
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;
var
  Form1: TForm1;
  x, y, min, max, x_len, dot:real;
  i,z, o, ix, jy, DSize:integer;
  f:text;
implementation
{$R *.lfm}
{ TForm1 }
procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
     DSize := strtoint(ComboBox2.Text);
     Button1.Height:=0;
     Canvas.Pen.Color:=clFuchsia;
     Canvas.Rectangle(50, 100, 600, 600);
     Canvas.Pen.Color:=clBlack;
     Canvas.Line(50, 350, 600, 350);
     Canvas.Line(325, 100, 325, 600);
     Canvas.Brush.color:=clBlack;
      dot:= strtofloat(ComboBox1.Text) ;
      min := strtofloat(Edit1.text);
      max := strtofloat(Edit2.text);
      x_len := (abs(min) + abs(max));
      x_len := (x_len/dot);
      x := min;
      o := Trunc(dot);
      canvas.brush.color:=clFuchsia     ;
      canvas.pen.color:=clFuchsia        ;
      for z:= 1 to o do
        begin
          y:= x;
          ix := Trunc(Round((((x-min)*(600-50))/(max-min))+50));
          jy := Trunc(Round((((y-min)*(600-100))/(min-max))+600));
          if (100<=jy) or (jy>=600) then
          begin
          canvas.Ellipse(ix, jy, (ix+DSize), (jy+DSize));
          end;
          x := x + x_len;
        end;
         canvas.pen.color:=clBlack;
         canvas.brush.color:=clBlack;
      for i:= 1 to 10 do
        begin
          if i < strtofloat(Edit2.text)then
        begin
          ix := Trunc(Round((((i-min)*(600-50))/(max-min))+50));
          jy := Trunc(Round((((0-min)*(600-100))/(min-max))+600));
          Canvas.rectangle((ix-1),(jy-3),(ix+1),(jy+3));
          ix := Trunc(Round((((0-min)*(600-50))/(max-min))+50));
          jy := Trunc(Round((((i-min)*(600-100))/(min-max))+600));
          Canvas.rectangle((ix-3),(jy-1),(ix+3),(jy+1));
        end;
      end;

end;
procedure TForm1.FormCreate(Sender: TObject);
begin
end;
end.
