class Personagem {

  String _nome;
  int _vida;
  int _energia;

  Personagem(this._nome, this._vida, this._energia) {
    if (_nome.isEmpty) {
      print('O nome nao pode ser vazio');
    }
    if (_vida < 0) {
      print('A vida nao pode ser negativa');
    }
    if (_energia < 0) {
      print('A energia nao pode ser negativa');
    }
  }

  alterarVida(int novaVida) {
    _vida = novaVida;
  }

  exibir() {
    print("Nome: $_nome | Vida: $_vida | Energia: $_energia");
  }

}
