class Musica {

  late String _titulo;
  late String _artista;
  late int _duracaoSegundos;

  Musica(String titulo, String artista, int duracaoSegundos) {
    setTitulo(titulo);
    setArtista(artista);
    setDuracaoSegundos(duracaoSegundos);
  }

  void setTitulo(String titulo) {
    if (titulo.isEmpty){
      throw "Título não pode ser vazio";
    }
    this._titulo = titulo;
  }

  String getTitulo(){
    return this._titulo;
  }

  void setArtista(String artista) {
    if (artista.isEmpty){
      throw "Artista não pode ser vazio";
    }
    this._artista = artista;
  }

  String getArtista(){
    return this._artista;
  }

  void setDuracaoSegundos(int duracao) {
    if (duracao <= 0){
      throw "Duração deve ser maior que 0";
    }
    this._duracaoSegundos = duracao;
  }

  int getDuracaoSegundos(){
    return this._duracaoSegundos;
  }

  void exibirMusica() {
    print("  - " + getTitulo() + " | " + getArtista() + " | " + getDuracaoSegundos().toString() + "s");
  }

}

class Playlist {

  late String _nome;
  late Musica _musica1;
  late Musica _musica2;
  late Musica _musica3;

  Playlist(String nome, Musica musica1, Musica musica2, Musica musica3) {
    setNome(nome);
    this._musica1 = musica1;
    this._musica2 = musica2;
    this._musica3 = musica3;
  }

  void setNome(String nome) {
    if (nome.isEmpty){
      throw "Nome da playlist não pode ser vazio";
    }
    this._nome = nome;
  }

  String getNome(){
    return this._nome;
  }

  int calcularDuracaoTotal(){
    return _musica1.getDuracaoSegundos() +
           _musica2.getDuracaoSegundos() +
           _musica3.getDuracaoSegundos();
  }

  void exibirPlaylist() {
    print("Playlist: " + getNome());
    _musica1.exibirMusica();
    _musica2.exibirMusica();
    _musica3.exibirMusica();
    print("Duração total: " + calcularDuracaoTotal().toString() + "s");
    print("---");
  }

  void tocarPlaylist() {
    print("Tocando playlist: " + getNome());
    print("▶ " + _musica1.getTitulo());
    print("▶ " + _musica2.getTitulo());
    print("▶ " + _musica3.getTitulo());
  }

}
