import 'dart:io';

import 'package:desafio_imc_flutter/class/pessoa_class.dart';
import 'package:desafio_imc_flutter/calcu_imc.dart' as calculadora_imc;

void main(List<String> arguments) {
  print("digite seu nome: ");
  String nome = stdin.readLineSync() ?? "";
  print("digite seu peso: ");
  double peso = double.parse(stdin.readLineSync() ?? "0");
  print("digite sua altura: ");
  double altura = double.parse(stdin.readLineSync() ?? "0");

  Pessoa user = Pessoa(nome, peso, altura);

  try {
    switch (calculadora_imc.calculaImc(user)) {
      case < 16:
        print(
            "O IMC de ${user.getNome()} é ${user.getImcCalculado()}. Indica magresa grave.");
        break;
      case < 17:
        print(
            "O IMC de ${user.getNome()} é ${user.getImcCalculado()}. Indica magresa moderada.");
        break;
      case < 18.5:
        print(
            "O IMC de ${user.getNome()} é ${user.getImcCalculado()}. Indica magresa leve.");
        break;
      case < 25:
        print(
            "O IMC de ${user.getNome()} é ${user.getImcCalculado()}. Indica IMC saudável.");
        break;
      case < 30:
        print(
            "O IMC de ${user.getNome()} é ${user.getImcCalculado()}. Indica sobrepeso.");
        break;
      case < 35:
        print(
            "O IMC de ${user.getNome()} é ${user.getImcCalculado()}. Indica obesidade grau I.");
        break;
      case < 40:
        print(
            "O IMC de ${user.getNome()} é ${user.getImcCalculado()}. Indica obesidade grau II (severa).");
        break;
      case >= 40:
        print(
            "O IMC de ${user.getNome()} é ${user.getImcCalculado()}. Indica obesidade grau III (mórbida).");
        break;
    }
  } catch (e) {
    throw Exception("Erro nos dados!");
  }
}
