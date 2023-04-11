unit Unit1;

{$mode objfpc}{$H+}

interface

uses
Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

{ TForm1 }

TForm1 = class(TForm)
ComboBox1: TComboBox;
ComboBox2: TComboBox;
CheckBox1: TCheckBox;
Label1: TLabel;
Button1: TButton;
procedure Button1Click(Sender: TObject);
procedure ComboBox1Change(Sender: TObject);
private
{ private declarations }
public
{ public declarations }
end;

var
Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
distance, cost: Integer;
begin
// Расчет стоимости проезда
distance := Abs(ComboBox1.ItemIndex - ComboBox2.ItemIndex); // Расстояние между остановками
cost := distance * 30; // Стоимость проезда за одну остановку - 30 рублей

if CheckBox1.Checked then // Если выбран проезд туда и обратно, удваиваем стоимость
cost := cost * 2;

// Вывод результата на форму
Label1.Caption := 'Стоимость проезда: ' + IntToStr(cost) + ' рублей.';
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

end.


