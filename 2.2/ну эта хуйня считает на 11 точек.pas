
var
x, y, min, max, x_len:real;
z, dot:integer;

Begin
min := -10;
max := 10;
writeln('Введи количество точек');
readln(dot);
//(похуй пусть 11 точек будет)теперь не похуй
x_len := (abs(min) + abs(max));
x_len := (x_len/dot);
x := min;
for z:= 1 to dot do
  begin   
    y:= (x*x+2);
    writeln(x, ' | ', y);
    x := x + x_len;
  end;
end.

ix=(((x-Xbeg)*(Iend-Ibeg))/(Xend-Xbeg))+Ibeg

jy=(((y-Ymin)*(Jend-Jbeg))/(Ymin-Ymax))+Jend