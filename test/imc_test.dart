import 'package:desafio_imc_flutter/calcu_imc.dart';
import 'package:desafio_imc_flutter/class/pessoa_class.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('calculo de imc', () {
    Pessoa user = Pessoa("Igor", 120, 1.77);
    expect(calculaImc(user), lessThan(40));
  });
}
