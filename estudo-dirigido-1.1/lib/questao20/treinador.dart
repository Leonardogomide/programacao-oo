class Pokemon {

  late int _numero;
  late String _nome;
  late String _tipo;
  late int _nivel;
  late int _hp;

  Pokemon(int numero, String nome, String tipo, int nivel, int hp) {
    setNumero(numero);
    setNome(nome);
    setTipo(tipo);
    setNivel(nivel);
    setHp(hp);
  }

  void setNumero(int numero) {
    this._numero = numero;
  }

  int getNumero(){
    return this._numero;
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

  void setTipo(String tipo) {
    if (tipo.isEmpty){
      throw "Tipo não pode ser vazio";
    }
    this._tipo = tipo;
  }

  String getTipo(){
    return this._tipo;
  }

  void setNivel(int nivel) {
    if (nivel < 1 || nivel > 100){
      throw "Nível deve estar entre 1 e 100";
    }
    this._nivel = nivel;
  }

  int getNivel(){
    return this._nivel;
  }

  void setHp(int hp) {
    if (hp <= 0){
      throw "HP deve ser maior que 0";
    }
    this._hp = hp;
  }

  int getHp(){
    return this._hp;
  }

  void exibirPokemon() {
    print("  #" + getNumero().toString().padLeft(3, '0') + " " + getNome() +
          " | Tipo: " + getTipo() +
          " | Nível: " + getNivel().toString() +
          " | HP: " + getHp().toString());
  }

}

class Treinador {

  late String _nome;
  late Pokemon _pokemon1;
  late Pokemon _pokemon2;
  late Pokemon _pokemon3;

  Treinador(String nome, Pokemon pokemon1, Pokemon pokemon2, Pokemon pokemon3) {
    setNome(nome);
    this._pokemon1 = pokemon1;
    this._pokemon2 = pokemon2;
    this._pokemon3 = pokemon3;
  }

  void setNome(String nome) {
    if (nome.isEmpty){
      throw "Nome do treinador não pode ser vazio";
    }
    this._nome = nome;
  }

  String getNome(){
    return this._nome;
  }

  int calcularPoderTotal(){
    return _pokemon1.getNivel() + _pokemon2.getNivel() + _pokemon3.getNivel();
  }

  Pokemon pokemonMaisForte() {
    Pokemon mais = _pokemon1;
    if (_pokemon2.getNivel() > mais.getNivel()) {
      mais = _pokemon2;
    }
    if (_pokemon3.getNivel() > mais.getNivel()) {
      mais = _pokemon3;
    }
    return mais;
  }

  void exibirTime() {
    print("Treinador: " + getNome());
    _pokemon1.exibirPokemon();
    _pokemon2.exibirPokemon();
    _pokemon3.exibirPokemon();
    print("Poder total: " + calcularPoderTotal().toString());
    print("Mais forte: " + pokemonMaisForte().getNome());
  }

}
