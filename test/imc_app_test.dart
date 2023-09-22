import 'package:test/test.dart';
import 'package:imc_app/model/pessoa.dart';

void main() {
  group('Testes de IMC', () {
    test('Teste de cálculo de IMC', () {
      final pessoa = Pessoa(nome: 'Léo', peso: 109.8, altura: 1.83);
      final imc = pessoa.calcularIMC();
      expect(
          imc, closeTo(32.79, 0.01)); // Valor esperado com uma margem de erro
    });

    test('Teste de classificação de IMC', () {
      final pessoa1 = Pessoa(nome: 'Leandro', peso: 109.8, altura: 1.83);
      final classificacao1 = pessoa1.classificarIMC(pessoa1.calcularIMC());
      expect(classificacao1, 'Obesidade Grau I');

      final pessoa2 = Pessoa(nome: 'Felipe', peso: 80, altura: 1.70);
      final classificacao2 = pessoa2.classificarIMC(pessoa2.calcularIMC());
      expect(classificacao2, 'Sobrepeso');
    });

    test('Teste de exceção de altura zero', () {
      final pessoa = Pessoa(nome: 'David', peso: 70, altura: 0);
      expect(() => pessoa.calcularIMC(), throwsException);
    });
  });
}
