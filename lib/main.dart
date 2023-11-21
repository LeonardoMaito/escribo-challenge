import 'dart:io';

/*
   Descrição:
   Implemente uma função que receba um número inteiro positivo e retorne o somatório
   de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao número passado.
   */

void main() {

  stdout.write("Digite um número inteiro positivo: ");
  var input = stdin.readLineSync();
  if (input != null && int.tryParse(input) != null && int.parse(input) > 0) {
    var number = int.parse(input);
    stdout.write(returnSumOfNumbers(number).toString());
  } else {
    stdout.write("Por favor, insira um número inteiro positivo.");
  }
}

int returnSumOfNumbers(int number){
  var sum = 0;
  for(var i = 0; i < number; i++){
    if(i%3 == 0 || i%5 == 0){
      sum += i;
    }
  }
  return sum;
}
