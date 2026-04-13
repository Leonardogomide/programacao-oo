/// Classe simples de Retangulo com ctors variados.
/// Dimensões >0. Alterado lado quadrado exemplo.
class Retangulo {
  // Largura
  late double _largura;
  
  // Altura
  late double _altura;

  /// Construtor padrão
  Retangulo(double largura, double altura) {
    if (largura <= 0) {
      print('Largura deve ser maior que 0');
    } else {
      _largura = largura;
    }
    if (altura <= 0) {
      print('Altura deve ser maior que 0');
    } else {
      _altura = altura;
    }
  }

  /// Construtor unitário
  Retangulo.unitario() {
    _largura = 1.0;
    _altura = 1.0;
  }

  /// Construtor quadrado
  Retangulo.quadrado(double lado) {
    if (lado <= 0) {
      print('Lado deve ser maior que 0');
    } else {
      _largura = lado;
      _altura = lado;
    }
  }

  /// Calcula área
  double calcularArea() {
    return _largura * _altura;
  }

  /// Calcula perímetro
  double calcularPerimetro() {
    return 2 * (_largura + _altura);
  }

  /// Exibe dados concat
  void exibirDados() {
    print("Largura: " + _largura.toString());
    print("Altura: " + _altura.toString());
    print("Área: " + calcularArea().toString());
    print("Perímetro: " + calcularPerimetro().toString());
    print("=======================================");
  }

  // Getters
  double getLargura() => _largura;
  
  double getAltura() => _altura;
}
