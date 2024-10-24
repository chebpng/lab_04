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
     Canvas.Pen.Color:=clFuchsia;
     //Canvas.Brush.Color:=clDefault;
     Canvas.Rectangle(50, 100, 600, 600);
     Canvas.Pen.Color:=clBlack;
     Canvas.Line(50, 350, 600, 350);
     Canvas.Line(325, 100, 325, 600);
     Canvas.Brush.color:=clBlack;
     //Canvas.Ellipse(400, 400, 405, 405);



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
          y:= (x*x+1);
          ix := Trunc(Round((((x-min)*(600-50))/(max-min))+50));
          jy := Trunc(Round((((y-min)*(600-100))/(min-max))+600));
          if (50>=jy) or (jy>=600) then
             continue
          else
          begin
          canvas.Ellipse(ix, jy, (ix+5), (jy+5));
          //writeln(x, ' | ', y);
          end;
          x := x + x_len;
        end;





end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

