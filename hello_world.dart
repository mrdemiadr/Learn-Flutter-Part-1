import 'dart:io';

void main() {
  stdout.write('Masukan nilai suhu dalam celcius yang akan dikonversi: ');
  var celcius = num.parse(stdin.readLineSync());
  var kelvin = celcius + 273.15;
  print(kelvin);
}
