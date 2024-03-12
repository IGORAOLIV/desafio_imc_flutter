class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;
  double _imcCalculado = 0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  double setImcCalculado(double imcCalculado) {
    return _imcCalculado = imcCalculado;
  }

  double getImcCalculado() {
    return _imcCalculado;
  }
}
