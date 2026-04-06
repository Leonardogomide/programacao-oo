/// Classe Personagem para combate.
class Personagem {
  late String _nome;
  late int _vida;
  late int _ataque;

  Personagem(String nome, int vida, int ataque) {
    _nome = nome;
    _vida = vida;
    _ataque = ataque;
  }

  String getNome() {
    return _nome;
  }

  int getVida() {
    return _vida;
  }

  int getAtaque() {
    return _ataque;
  }

  bool estaVivo() {
    return _vida > 0;
  }

  void atacar(Personagem inimigo) {
    // Só ataca se vivo
    if (!estaVivo()) {
      print(_nome + ' está morto e não pode atacar.');
      return;
    }
    
    int dano = _ataque;
    // Reduz vida inimiga, não abaixo 0
    inimigo._vida -= dano;
    if (inimigo._vida < 0) inimigo._vida = 0;
    
    print(_nome + ' atacou ' + inimigo._nome + ' causando ' + dano.toString() + ' de dano.');
  }

  void exibirStatus() {
    print('Nome: ' + _nome + ' | Vida: ' + _vida.toString() + ' | Ataque: ' + _ataque.toString());
  }
}
