class Conta {
  // Campo privado numero
  late String _numero;
  
  // Campo privado titular
  late String _titular;
  
  // Campo privado saldo
  late double _saldo;

  // Construtor bancaria
  Conta.bancaria(String numero, String titular) {
    _numero = numero;
    _titular = titular;
    _saldo = 0.0;
  }

  // Construtor vip
  Conta.vip(String numero, String titular, double saldo) {
    _numero = numero;
    _titular = titular;
    _saldo = saldo;
  }

  // Deposita
  void depositar(double valor) {
    _saldo = _saldo + valor;
  }

  // Saca
  void sacar(double valor) {
    if (valor > _saldo) {
      print("Saldo insuficiente!");
      return;
    }
    _saldo = _saldo - valor;
  }

  // Mostra resumo
  void exibirResumo() {
    print("Conta: $_numero");
    print("Titular: $_titular");
    print("Saldo: R\$ ${_saldo.toStringAsFixed(2)}");
    print("=======================================");
  }

  // Getter numero
  String getNumero() {
    return _numero;
  }

  // Getter titular
  String getTitular() {
    return _titular;
  }

  // Getter saldo
  double getSaldo() {
    return _saldo;
  }
}

