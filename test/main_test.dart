// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


import 'package:flutter_test/flutter_test.dart';

import 'package:escribo/main.dart';

void main() {
  group('Testes para returnSumOfNumbers', () {
    test('Deve retornar 0 para entradas menores que 3', () {
      expect(returnSumOfNumbers(2), equals(0));
    });

    test('Deve retornar a soma correta para um número dentro do intervalo', () {
      expect(returnSumOfNumbers(10), equals(23)); // 3 + 5 + 6 + 9
    });

    test('Deve retornar a soma correta para um número maior', () {
      expect(returnSumOfNumbers(20), equals(78));
    });

    test('Deve lidar com o número 0 corretamente', () {
      expect(returnSumOfNumbers(0), equals(0));
    });

    test('Deve lidar com números negativos corretamente', () {
      expect(returnSumOfNumbers(-5), equals(0));
    });
  });
}
