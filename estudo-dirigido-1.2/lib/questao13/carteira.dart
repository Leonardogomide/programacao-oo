class Carteira {

  double _saldo;

  Carteira(this._saldo) {
    if (_saldo < 0) {
      print('O saldo nao pode ser negativo');
    }
  }

  adicionar(double valor) {
    _saldo += valor;
  }

  exibir() {
    print('Saldo: $_saldo');
  }

}
