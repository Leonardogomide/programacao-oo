class Personagem {

  late String _nome;
  late int _vida;
  late int _ataque;

  Personagem(String nome, int vida, int ataque) {
    setNome(nome);
    setVida(vida);
    setAtaque(ataque);
  }

  void setNome(String nome) {
    if (nome.isEmpty){
      throw "Nome não pode ser vazio";
    }
    this._nome = nome;
  }

  String getNome(){
    return this._nome;
  }

  void setVida(int vida) {
    if (vida <= 0){
      throw "Vida deve ser maior que 0";
    }
    this._vida = vida;
  }

  int getVida(){
    return this._vida;
  }

  void setAtaque(int ataque) {
    if (ataque <= 0){
      throw "Ataque deve ser maior que 0";
    }
    this._ataque = ataque;
  }

  int getAtaque(){
    return this._ataque;
  }

  bool estaVivo(){
    return this._vida > 0;
  }

  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print(getNome() + " está morto e não pode atacar.");
      return;
    }
    int dano = getAtaque();
    inimigo._vida = (inimigo._vida - dano).clamp(0, inimigo._vida);
    print(getNome() + " atacou " + inimigo.getNome() + " causando " + dano.toString() + " de dano.");
  }

  void exibirStatus() {
    print("Nome: " + getNome() + " | Vida: " + getVida().toString() + " | Ataque: " + getAtaque().toString());
  }

}
