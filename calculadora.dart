import 'dart:io';

class Calculadora {
  int soma(int numero1, int numero2) {
    return numero1 + numero2;
  }

  double div(double numero1, double numero2) {
    if (numero2 <= 0) {
      print("A divisão não pode ser feita por 0");
    }
    return (numero1 / numero2);
  }

  int mult(int numero1, int numero2) {
    return numero1 * numero2;
  }

  int sub(int numero1, int numero2) {
    return numero1 - numero2;
  }

  int rest(int numero1, int numero2) {
    return numero1 % numero2;
  }
}

void main() {
  Calculadora calc = Calculadora();

  print("Digite o primeiro numero");
  int num1 = int.parse(stdin.readLineSync());

  print("Digite o segundo numero");
  int num2 = int.parse(stdin.readLineSync());

  print("O resultado da soma é: ");
  print(calc.soma(num1, num2));

  print("O resultado da divisão é: ");
  if (num2 <= 0) {
    print("A divisão não pode ser feita por 0");
  } else {
    print(calc.div(16.0, 2.0));
  }

  print("O resultado da multiplicação é: ");
  print(calc.mult(num1, num2));

  print("O resultado da subtração é: ");
  print(calc.sub(num1, num2));

  if (num2 <= 0) {
    print("O resto da divisão não pode ser por 0");
  } else {
    print("O resto da divisão é: ");
    print(calc.rest(num1, num2));
  }
}
