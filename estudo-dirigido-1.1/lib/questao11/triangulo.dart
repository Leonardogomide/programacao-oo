import 'dart:math';

/// Classe Triangulo com desenho.
class Triangulo {
  late double _lado1;
  late double _lado2;
  late double _lado3;
  late String _caractere;

  Triangulo(double lado1, double lado2, double lado3, String caractere) {
    _lado1 = lado1;
    _lado2 = lado2;
    _lado3 = lado3;
    _caractere = caractere;
    // Assume lados válidos para triângulo (junior)
  }

  double getLado1() {
    return _lado1;
  }

  double getLado2() {
    return _lado2;
  }

  double getLado3() {
    return _lado3;
  }

  String getCaractere() {
    return _caractere;
  }

  double calcularPerimetro() {
    return _lado1 + _lado2 + _lado3;
  }

  double calcularArea() {
    // Fórmula de Heron
    double s = calcularPerimetro() / 2;
    double area = sqrt(s * (s - _lado1) * (s - _lado2) * (s - _lado3));
    return area;
  }

  void desenharEsquerda() {
    int linhas = _lado1.round();
    // Desenha triângulo à esquerda
    for (int i = 1; i <= linhas; i++) {
      print((_caractere + ' ') * i);
    }
  }

  void desenharCentralizado() {
    int linhas = _lado1.round();
    // Desenha centralizado
    for (int i = 1; i <= linhas; i++) {
      String espacos = ' ' * (linhas - i);
      print(espacos + (_caractere + ' ') * i);
    }
  }

  void exibirResumo() {
    print('///');
    print('Lado 1: ' + _lado1.toString());
    print('Lado 2: ' + _lado2.toString());
    print('Lado 3: ' + _lado3.toString());
    print('Área: ' + calcularArea().toStringAsFixed(2));
    print('Perímetro: ' + calcularPerimetro().toString());
    print('///');
  }
}
