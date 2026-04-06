/// Classe Circulo simples.
class Circulo {
  // Constante PI
  static const double PI = 3.14;

  late double _raio;
  late String _cor;

  Circulo(double raio, String cor) {
    _raio = raio;
    _cor = cor;
  }

  double getRaio() {
    return _raio;
  }

  String getCor() {
    return _cor;
  }

  double calcularArea() {
    // PI * raio^2
    return PI * _raio * _raio;
  }

  double calcularPerimetro() {
    // 2 * PI * raio
    return 2 * PI * _raio;
  }

  void exibirResumo() {
    print('Raio: ' + _raio.toString());
    print('Cor: ' + _cor);
    print('Área: ' + calcularArea().toStringAsFixed(2));
    print('Perímetro: ' + calcularPerimetro().toStringAsFixed(2));
    print('---');
  }
}
