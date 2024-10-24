unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Spin,
  EditBtn, ButtonPanel, TAGraph, TASeries;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Chart1: TChart;
    Chart1BarSeries1: TBarSeries;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  other:real;
  z,count:integer;
  LColor:array[1..10] of TColor = (clGreen, clBlue, clFuchsia, clRed, clNavy, clMaroon, clTeal, clOlive, clPurple, clBlack);
  lang:array[1..10] of string = ('Python', 'C++', 'Java', 'C', 'C#', 'JS', 'VB', 'GO', 'Fortran', 'Delphi');
  LRate:array[1..10] of real = (21.9, 11.6, 10.51, 8.38, 5.62, 3.54, 2.35, 2.02, 1.80, 1.68);

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  other := 0;
  Chart1BarSeries1.Clear;
  for z := 0 to strtoint(ComboBox1.Text) do
  begin
       Chart1BarSeries1.Add(LRate[z], lang[z], LColor[z]);
       other:= other+LRate[z];
       Canvas.Brush.Color:=clForm;
       Canvas.Font.Color:=LColor[z];
       Canvas.Font.Size:=10;
       Canvas.TextOut(60, 150, lang[z]);
  end;
       other:= (100-other);
       Chart1BarSeries1.Add(other, 'Other', $00408080);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close
end;

end.

