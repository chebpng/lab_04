
var
x, y, min, max, x_len:real;
i:integer;

Begin
writeln('Введи начало оси x');
readln(min);
writeln('Введи конец оси x');
readln(max);
//похуй пусть 11 точек будет
x_len := (abs(min) + abs(max));
x_len := (x_len/11);
x := min;
for i:= 1 to 11 do
  begin   
    y:= (x*x+2);
    writeln(x, ' | ', y);
    x := x + x_len;
  end;
end.