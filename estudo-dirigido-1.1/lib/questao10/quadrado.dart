/// Classe Quadrado com desenho ASCII.
class Quadrado {
  late double _lado;
  late String _caractere;

  Quadrado(double lado, String caractere) {
    _lado = lado;
    _caractere = caractere;
  }

  double getLado() {
    return _lado;
  }

  String getCaractere() {
    return _caractere;
  }

  double calcularArea() {
    // Lado vezes lado
    return _lado * _lado;
  }

  double calcularPerimetro() {
    // 4 vezes lado
    return _lado * 4;
  }

  void desenhar() {
    int tamanho = _lado.round(); // Tamanho do lado em int
    // Loop para linhas
    for (int i = 0; i < tamanho; i++) {
      // Linha com caractere + espaço repetido
      print((_caractere + ' ') * tamanho);
    }
  }

  void exibirResumo() {
    print('///');
    print('Lado: ' + _lado.toString());
    print('Área: ' + calcularArea().toString());
    print('Perímetro: ' + calcularPerimetro().toString());
    print('///');
  }

  bool ehIgual(Quadrado outro) {
    // Igual se mesmo lado (ignora caractere?)
    return _lado == outro._lado;
  }
}
