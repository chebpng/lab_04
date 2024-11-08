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

//конвертация между системами кординат
procedure convert;
begin
ix := Trunc(Round((((x+10)*(form1.image1.width-0))/(10+10))+0));
jy := Trunc(Round((((y-10)*(form1.image1.Height -0))/(10+10))+form1.image1.Height ));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
     DSize := strtoint(ComboBox2.Text);
     Button1.Height:=0;
     with Form1.Image1.canvas do begin
          Canvas.Pen.Color:=clBlack;
       Brush.color:= clForm;
       fillRect(0, 0, form1.image1.Width, form1.image1.Height);
       //отрисовка осей
       line(form1.image1.Width div 2, 0, form1.image1.Width div 2, form1.image1.Height);
       line(0, form1.image1.Height div 2, form1.image1.Width, form1.image1.Height div 2);
     //присвоение значений из комбобоксов и эдитов
     dot:= strtofloat(ComboBox1.Text) ;
     min := strtofloat(Edit1.text);
     max := strtofloat(Edit2.text);
     x_len := (abs(min) + abs(max));
     x_len := (x_len/dot);
     x := min;
     o := Trunc(dot);
      brush.color:=clFuchsia     ;
      pen.color:=clFuchsia        ;
      //расчет и вывод функции
      for z:= 1 to o do
        begin
          y:= sin(x+2);
          convert();
          begin
          if (100<=jy) or (jy>=600) then
          begin
          Ellipse(ix, jy, (ix+DSize), (jy+DSize));
          end;
          x := x + x_len;
         end;
        end;
         pen.color:=clBlack;
         brush.color:=clBlack;
      for i:= -10 to 10 do
        begin
          if i <> 0 then
        begin

        //вывод еденичных отрезков по X
        x:=i;
        y:=0;
        Convert();
        Ellipsec(ix, jy, 3, 3);
        //вывод еденичных отрезков по y
        x:=0;
        y:=i;
        Convert();
        Ellipsec(ix, jy, 3, 3);

        end;
      end;
     end;

end;

end.
