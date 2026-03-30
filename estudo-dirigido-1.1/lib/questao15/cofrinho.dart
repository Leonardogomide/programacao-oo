class Cofrinho {

  late double _saldo;
  late int _quantidadeDepositos;

  Cofrinho(double saldoInicial) {
    if (saldoInicial < 0){
      throw "Saldo inicial deve ser maior ou igual a 0";
    }
    this._saldo = saldoInicial;
    this._quantidadeDepositos = 0;
  }

  double getSaldo(){
    return this._saldo;
  }

  int getQuantidadeDepositos(){
    return this._quantidadeDepositos;
  }

  void depositar(double valor) {
    if (valor <= 0){
      throw "Valor do depósito deve ser maior que 0";
    }
    this._saldo += valor;
    this._quantidadeDepositos++;
  }

  void quebrar() {
    print("Total acumulado: R\$ " + this._saldo.toStringAsFixed(2));
    print("Depósitos realizados: " + this._quantidadeDepositos.toString());
    this._saldo = 0;
    this._quantidadeDepositos = 0;
  }

  void exibirSaldo() {
    print("Saldo: R\$ " + getSaldo().toStringAsFixed(2));
  }

}
