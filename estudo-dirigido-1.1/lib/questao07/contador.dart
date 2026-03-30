class Contador {

  late int _valor;

  Contador(int valorInicial) {
    if (valorInicial < 0){
      throw "Valor inicial deve ser maior ou igual a 0";
    }
    this._valor = valorInicial;
  }

  void incrementar() {
    this._valor++;
  }

  void decrementar() {
    if (this._valor > 0){
      this._valor--;
    }
  }

  void zerar() {
    this._valor = 0;
  }

  void exibirValor() {
    print("Valor: " + this._valor.toString());
  }

}
