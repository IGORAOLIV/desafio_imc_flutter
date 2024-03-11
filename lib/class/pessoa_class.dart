class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome(String nome) {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso(double peso) {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura(double altura) {
    return _altura;
  }
}
