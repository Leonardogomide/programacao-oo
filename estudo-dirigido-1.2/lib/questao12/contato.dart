class Contato {

  String _nome;
  String _telefone;

  Contato(this._nome, this._telefone) {
    if (_nome.isEmpty) {
      print('O nome nao pode ser vazio');
    }
    if (_telefone.isEmpty) {
      print('O telefone nao pode ser vazio');
    }
  }

  String get nome => _nome;

  exibir() {
    print("Nome: $_nome | Telefone: $_telefone");
  }

}
