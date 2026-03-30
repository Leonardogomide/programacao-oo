class Circulo {

  static const double PI = 3.14;

  late double _raio;
  late String _cor;

  Circulo(double raio, String cor) {
    setRaio(raio);
    setCor(cor);
  }

  void setRaio(double raio) {
    if (raio <= 0){
      throw "Raio deve ser maior que 0";
    }
    this._raio = raio;
  }

  double getRaio(){
    return this._raio;
  }

  void setCor(String cor) {
    if (cor.isEmpty){
      throw "Cor não pode ser vazia";
    }
    this._cor = cor;
  }

  String getCor(){
    return this._cor;
  }

  double calcularArea(){
    return PI * getRaio() * getRaio();
  }

  double calcularPerimetro(){
    return 2 * PI * getRaio();
  }

  void exibirResumo() {
    print("Raio: " + getRaio().toString());
    print("Cor: " + getCor());
    print("Área: " + calcularArea().toStringAsFixed(2));
    print("Perímetro: " + calcularPerimetro().toStringAsFixed(2));
    print("---");
  }

}
