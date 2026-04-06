import 'playlist.dart';

// Cria playlist
void main() {
  Musica m1 = Musica('Imagine', 'John Lennon', 183);
  Musica m2 = Musica('Hey Jude', 'The Beatles', 431);
  Musica m3 = Musica('Let It Be', 'The Beatles', 244);

  Playlist playlist = Playlist('Músicas Icônicas', m1, m2, m3);

  print('Playlist info:');
  playlist.exibirPlaylist();
  print('');
  print('Tocando:');
  playlist.tocarPlaylist();
}
