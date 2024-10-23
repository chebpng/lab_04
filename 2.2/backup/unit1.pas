unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
  z, o, ix, jy:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
      dot:= strtofloat(Edit3.text) ;
      min := strtofloat(Edit1.text);
      max := strtofloat(Edit2.text);
      //(похуй пусть 11 точек будет)теперь не похуй
      x_len := (abs(min) + abs(max));
      x_len := (x_len/dot);
      x := min;
      o := Trunc(dot);
      ix := 30;//test------------------------------------
      jy := 30;//test------------------------------------
      for z:= 1 to o do
        begin
          y:= (x*x+2);
          ix := Trunc(Round((((x-min)*(600-50))/(max-min))+50));
          jy := Trunc(Round((((y-min)*(450-100))/(min-max))+450));
          canvas.Ellipse(ix, jy, (ix+5), (jy+5));
          //writeln(x, ' | ', y);
          x := x + x_len;
        end;



     Canvas.Pen.Color:=clFuchsia;
     //Canvas.Brush.Color:=clDefault;
     Canvas.Rectangle(50, 100, 600, 450);
     Canvas.Pen.Color:=clBlack;
     Canvas.Line(50, 275, 600, 275);
     Canvas.Line(325, 100, 325, 450);
     Canvas.Brush.color:=clBlack;
     //Canvas.Ellipse(400, 400, 405, 405);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

