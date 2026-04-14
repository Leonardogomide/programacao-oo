/// Classe Cliente com saldo em carteira.
class Cliente {

  // Nome do cliente
  String _nome;

  // Email do cliente
  String _email;

  // Saldo na carteira
  double _saldoCarteira;

  // Se o cliente esta ativo
  bool _ativo;

  // Construtor com validacao
  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo) {
    if (_nome.isEmpty) {
      print('O nome nao pode ser vazio');
    }
    if (_email.isEmpty) {
      print('O email nao pode ser vazio');
    }
    if (_saldoCarteira < 0) {
      print('O saldo nao pode ser negativo');
    }
  }

  // Getter nome
  String get nome => _nome;

  // Getter email
  String get email => _email;

  // Getter saldo
  double get saldoCarteira => _saldoCarteira;

  // Getter ativo
  bool get ativo => _ativo;

  // Adiciona saldo
  adicionarSaldo(double valor) {
    if (valor > 0) {
      _saldoCarteira += valor;
    }
  }

  // Debita saldo
  debitarSaldo(double valor) {
    if (valor > _saldoCarteira) {
      print("Saldo insuficiente!");
      return;
    }
    _saldoCarteira -= valor;
  }

  // Ativa o cliente
  ativar() {
    _ativo = true;
  }

  // Desativa o cliente
  desativar() {
    _ativo = false;
  }

  // Exibe dados do cliente
  exibirCliente() {
    print("Nome: $_nome");
    print("Email: $_email");
    print("Saldo: R\$ ${_saldoCarteira.toStringAsFixed(2)}");
    print("Ativo: $_ativo");
    print("=======================================");
  }

}
