/*
Crie uma classe Personagem com os seguintes atributos obrigatórios:
• String nome
• int vida
• int ataque
Implemente um construtor que receba todos esses valores. Crie os seguintes métodos:
• atacar(Personagem inimigo) → reduz a vida do inimigo
• exibirStatus() → mostra nome, vida e ataque
• estaVivo() → retorna se o personagem ainda está vivo
No main(), crie exatamente 2 personagens e simule um combate entre eles.
Restrições:
• nome não pode ser vazio
• vida deve ser maior que 0
• ataque deve ser maior que 0
• a vida não pode ficar negativa
• um personagem com vida 0 não pode atacar
*/

import 'personagem.dart';

void main() {
  Personagem heroi = new Personagem('Guerreiro', 120, 25);
  Personagem vilao = new Personagem('Mago', 90, 30);

  heroi.exibirStatus();
  vilao.exibirStatus();
  print("---");

  while (heroi.estaVivo() && vilao.estaVivo()) {
    heroi.atacar(vilao);
    if (vilao.estaVivo()) vilao.atacar(heroi);
    heroi.exibirStatus();
    vilao.exibirStatus();
    print("---");
  }

  print(heroi.estaVivo() ? heroi.getNome() + " venceu!" : vilao.getNome() + " venceu!");
}
