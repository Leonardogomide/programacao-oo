class Lampada {

  late bool _ligada;
  late int _quantidadeLigacoes;
  late bool _queimada;

  Lampada() {
    this._ligada = false;
    this._quantidadeLigacoes = 0;
    this._queimada = false;
  }

  void ligar() {
    if (this._queimada) {
      print("Lâmpada queimada, não pode ser ligada. :(");
      return;
    }
    if (this._quantidadeLigacoes >= 5) {
      this._queimada = true;
      this._ligada = false;
      print("Lâmpada queimou!");
      return;
    }
    this._ligada = true;
    this._quantidadeLigacoes++;
  }

  void desligar() {
    this._ligada = false;
  }

  void exibirEstado() {
    if (this._queimada) {
      print("Estado: queimada (ligações: " + this._quantidadeLigacoes.toString() + ")");
    } else if (this._ligada) {
      print("Estado: ligada (ligações: " + this._quantidadeLigacoes.toString() + ")");
    } else {
      print("Estado: desligada (ligações: " + this._quantidadeLigacoes.toString() + ")");
    }
  }

}
