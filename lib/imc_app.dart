//Programa que calcula o imc
import 'dart:io';

import 'package:imc_app/model/pessoa.dart';

imc() {
  try {
    stdout.write("Digite o seu nome: ");
    String nome = stdin.readLineSync() ?? "";

    stdout.write("Digite seu peso (em quilos): ");
    double peso = double.parse(stdin.readLineSync() ?? "0.0");

    stdout.write("Digite sua Altura (em metros): ");
    double altura = double.parse(stdin.readLineSync() ?? "0.0");

    Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);

    double imc = pessoa.calcularIMC();
    String classificacao = pessoa.classificarIMC(imc);

    print("Resultado:");
    print("Nome: ${pessoa.nome}");
    print("Peso: ${pessoa.peso} kg");
    print("Altura: ${pessoa.altura} m");
    print("IMC: ${imc.toStringAsFixed(2)}");
    print("Classificação: $classificacao");
  } catch (e) {
    print("Erro: $e");
  }
}
