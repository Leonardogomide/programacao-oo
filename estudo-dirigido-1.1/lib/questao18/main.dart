/*
Crie uma classe Musica com os seguintes atributos obrigatórios:
• String titulo
• String artista
• int duracaoSegundos
Crie uma classe Playlist com os seguintes atributos obrigatórios:
• String nome
• Musica musica1
• Musica musica2
• Musica musica3
Implemente os construtores para ambas as classes. Crie os seguintes métodos:
• exibirPlaylist() → mostra o nome da playlist e os dados das músicas
• calcularDuracaoTotal() → retorna a duração total da playlist
• tocarPlaylist() → exibe as músicas sendo tocadas em sequência
No main(), instancie exatamente 1 playlist com 3 músicas diferentes e exiba todas as informações.
*/

import 'playlist.dart';

void main() {
  Musica m1 = new Musica('Imagine', 'John Lennon', 183);
  Musica m2 = new Musica('Hey Jude', 'The Beatles', 431);
  Musica m3 = new Musica('Let It Be', 'The Beatles', 244);

  Playlist playlist = new Playlist('Músicas Icônicas', m1, m2, m3);

  playlist.exibirPlaylist();
  playlist.tocarPlaylist();
}
