/// Classe Musica.
class Musica {
  late String _titulo;
  late String _artista;
  late int _duracaoSegundos;

  Musica(String titulo, String artista, int duracaoSegundos) {
    _titulo = titulo;
    _artista = artista;
    _duracaoSegundos = duracaoSegundos;
  }

  String getTitulo() {
    return _titulo;
  }

  String getArtista() {
    return _artista;
  }

  int getDuracaoSegundos() {
    return _duracaoSegundos;
  }

  void exibirMusica() {
    print('  - ' + _titulo + ' | ' + _artista + ' | ' + _duracaoSegundos.toString() + 's');
  }
}

/// Classe Playlist.
class Playlist {
  late String _nome;
  late Musica _musica1;
  late Musica _musica2;
  late Musica _musica3;

  Playlist(String nome, Musica musica1, Musica musica2, Musica musica3) {
    _nome = nome;
    _musica1 = musica1;
    _musica2 = musica2;
    _musica3 = musica3;
  }

  String getNome() {
    return _nome;
  }

  int calcularDuracaoTotal() {
    return _musica1.getDuracaoSegundos() + _musica2.getDuracaoSegundos() + _musica3.getDuracaoSegundos();
  }

  void exibirPlaylist() {
    print('Playlist: ' + _nome);
    _musica1.exibirMusica();
    _musica2.exibirMusica();
    _musica3.exibirMusica();
    print('Duração total: ' + calcularDuracaoTotal().toString() + 's');
    print('---');
  }

  void tocarPlaylist() {
    print('Tocando playlist: ' + _nome);
    print('▶ ' + _musica1.getTitulo());
    print('▶ ' + _musica2.getTitulo());
    print('▶ ' + _musica3.getTitulo());
  }
}
