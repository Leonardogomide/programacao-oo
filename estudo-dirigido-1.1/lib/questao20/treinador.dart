/// Classe Pokemon simples.
class Pokemon {
  late int _numero;
  late String _nome;
  late String _tipo;
  late int _nivel;
  late int _hp;

  Pokemon(int numero, String nome, String tipo, int nivel, int hp) {
    _numero = numero;
    _nome = nome;
    _tipo = tipo;
    _nivel = nivel;
    _hp = hp;
  }

  int getNumero() {
    return _numero;
  }

  String getNome() {
    return _nome;
  }

  String getTipo() {
    return _tipo;
  }

  int getNivel() {
    return _nivel;
  }

  int getHp() {
    return _hp;
  }

  void exibirPokemon() {
    print('  #' + _numero.toString().padLeft(3, '0') + ' ' + _nome +
      ' | Tipo: ' + _tipo +
      ' | Nível: ' + _nivel.toString() +
      ' | HP: ' + _hp.toString());
  }
}

/// Classe Treinador.
class Treinador {
  late String _nome;
  late Pokemon _pokemon1;
  late Pokemon _pokemon2;
  late Pokemon _pokemon3;

  Treinador(String nome, Pokemon pokemon1, Pokemon pokemon2, Pokemon pokemon3) {
    _nome = nome;
    _pokemon1 = pokemon1;
    _pokemon2 = pokemon2;
    _pokemon3 = pokemon3;
  }

  String getNome() {
    return _nome;
  }

  int calcularPoderTotal() {
    return _pokemon1.getNivel() + _pokemon2.getNivel() + _pokemon3.getNivel();
  }

  Pokemon pokemonMaisForte() {
    Pokemon maisForte = _pokemon1;
    if (_pokemon2.getNivel() > maisForte.getNivel()) {
      maisForte = _pokemon2;
    }
    if (_pokemon3.getNivel() > maisForte.getNivel()) {
      maisForte = _pokemon3;
    }
    return maisForte;
  }

  void exibirTime() {
    print('Treinador: ' + _nome);
    _pokemon1.exibirPokemon();
    _pokemon2.exibirPokemon();
    _pokemon3.exibirPokemon();
    print('Poder total: ' + calcularPoderTotal().toString());
    print('Mais forte: ' + pokemonMaisForte().getNome());
  }
}
