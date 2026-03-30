import 'dart:math';

class Triangulo {

  late double _lado1;
  late double _lado2;
  late double _lado3;
  late String _caractere;

  Triangulo(double lado1, double lado2, double lado3, String caractere) {
    setLado1(lado1);
    setLado2(lado2);
    setLado3(lado3);
    setCaractere(caractere);
    if (!_ehValido()){
      throw "Os lados não formam um triângulo válido";
    }
  }

  bool _ehValido() =>
    _lado1 + _lado2 > _lado3 &&
    _lado1 + _lado3 > _lado2 &&
    _lado2 + _lado3 > _lado1;

  void setLado1(double v) {
    if (v <= 0){
      throw "Lado deve ser maior que 0";
    }
    this._lado1 = v;
  }

  double getLado1(){
    return this._lado1;
  }

  void setLado2(double v) {
    if (v <= 0){
      throw "Lado deve ser maior que 0";
    }
    this._lado2 = v;
  }

  double getLado2(){
    return this._lado2;
  }

  void setLado3(double v) {
    if (v <= 0){
      throw "Lado deve ser maior que 0";
    }
    this._lado3 = v;
  }

  double getLado3(){
    return this._lado3;
  }

  void setCaractere(String c) {
    if (c.isEmpty || c.length > 1){
      throw "Caractere deve ter apenas 1 símbolo";
    }
    this._caractere = c;
  }

  String getCaractere(){
    return this._caractere;
  }

  double calcularPerimetro(){
    return _lado1 + _lado2 + _lado3;
  }

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - _lado1) * (s - _lado2) * (s - _lado3));
  }

  void desenharEsquerda() {
    int linhas = _lado1.round();
    for (int i = 1; i <= linhas; i++) {
      print((getCaractere() + ' ') * i);
    }
  }

  void desenharCentralizado() {
    int linhas = _lado1.round();
    for (int i = 1; i <= linhas; i++) {
      String espacos = ' ' * (linhas - i);
      print(espacos + (getCaractere() + ' ') * i);
    }
  }

  void exibirResumo() {
    print("///");
    print("Lado 1: " + getLado1().toString());
    print("Lado 2: " + getLado2().toString());
    print("Lado 3: " + getLado3().toString());
    print("Área: " + calcularArea().toStringAsFixed(2));
    print("Perímetro: " + calcularPerimetro().toString());
    print("///");
  }

}
