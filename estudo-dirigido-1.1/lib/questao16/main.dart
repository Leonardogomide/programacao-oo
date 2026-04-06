import 'personagem.dart';

// Simula combate
void main() {
  Personagem heroi = Personagem('Guerreiro', 120, 25);
  Personagem vilao = Personagem('Mago', 90, 30);

  print('Status inicial:');
  heroi.exibirStatus();
  vilao.exibirStatus();
  print('---');

  // Loop de combate até um morrer
  while (heroi.estaVivo() && vilao.estaVivo()) {
    heroi.atacar(vilao);
    if (vilao.estaVivo()) {
      vilao.atacar(heroi);
    }
    heroi.exibirStatus();
    vilao.exibirStatus();
    print('---');
  }

  // Quem ganhou
  if (heroi.estaVivo()) {
    print(heroi.getNome() + ' venceu!');
  } else {
    print(vilao.getNome() + ' venceu!');
  }
}
