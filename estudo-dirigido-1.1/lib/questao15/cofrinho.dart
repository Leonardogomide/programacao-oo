/// Classe Cofrinho simples.
class Cofrinho {
  double _saldo = 0;
  int _quantidadeDepositos = 0;

  Cofrinho(double saldoInicial) {
    _saldo = saldoInicial; // Assume válido
    _quantidadeDepositos = 0;
  }

  double getSaldo() {
    return _saldo;
  }

  int getQuantidadeDepositos() {
    return _quantidadeDepositos;
  }

  void depositar(double valor) {
    // Assume valor > 0
    _saldo = _saldo + valor;
    _quantidadeDepositos = _quantidadeDepositos + 1;
  }

  void quebrar() {
    print('Total acumulado: R\$ ' + _saldo.toStringAsFixed(2));
    print('Depósitos realizados: ' + _quantidadeDepositos.toString());
    _saldo = 0;
    _quantidadeDepositos = 0;
  }

  void exibirSaldo() {
    print('Saldo: R\$ ' + getSaldo().toStringAsFixed(2));
  }
}
