import 'package:desafio_imc_flutter/class/pessoa_class.dart';

double calculaImc(Pessoa pessoa) {
  double imcCalculado =
      pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
  return pessoa.setImcCalculado(imcCalculado);
}
