class Quadrado {

  late double _lado;
  late String _caractere;

  Quadrado(double lado, String caractere) {
    setLado(lado);
    setCaractere(caractere);
  }

  void setLado(double lado) {
    if (lado <= 0){
      throw "Lado deve ser maior que 0";
    }
    this._lado = lado;
  }

  double getLado(){
    return this._lado;
  }

  void setCaractere(String caractere) {
    if (caractere.isEmpty || caractere.length > 1){
      throw "Caractere deve ter apenas 1 símbolo";
    }
    this._caractere = caractere;
  }

  String getCaractere(){
    return this._caractere;
  }

  double calcularArea(){
    return getLado() * getLado();
  }

  double calcularPerimetro(){
    return getLado() * 4;
  }

  void desenhar() {
    int tamanho = getLado().round();
    for (int i = 0; i < tamanho; i++) {
      print((getCaractere() + ' ') * tamanho);
    }
  }

  void exibirResumo() {
    print("///");
    print("Lado: " + getLado().toString());
    print("Área: " + calcularArea().toString());
    print("Perímetro: " + calcularPerimetro().toString());
    print("///");
  }

  bool ehIgual(Quadrado outro) {
    return this._lado == outro._lado;
  }

}
