int factorial(int number) {
  if (number <= 0) {
    return 1;
  } else {
    return number * factorial(number - 1);
  }
}

void main() {
  int angka = 5;
  int hasil = factorial(angka);

  print('Faktorial dari $angka adalah $hasil');
}
