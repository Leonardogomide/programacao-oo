/*
Crie uma classe Semaforo com os seguintes atributos obrigatórios:
• String corAtual - represente com emojis 🔴 🟡 🟢
• int tempoRestante
Implemente um construtor que inicialize o semáforo com uma cor inicial e um tempo. Crie os seguintes métodos:
• trocarCor() → altera a cor seguindo a ordem: vermelho → verde → amarelo → vermelho
• reduzirTempo() → diminui o tempo restante em 1 unidade
• exibirEstado() → mostra a cor atual e o tempo restante
No main(), instancie exatamente 1 semáforo e simule seu funcionamento por alguns ciclos.
Regras de tempo:
• vermelho: 5 unidades
• verde: 4 unidades
• amarelo: 2 unidades
Restrições:
• corAtual deve assumir apenas: "vermelho", "verde" ou "amarelo"
• quando o tempo chegar a 0, o semáforo deve trocar automaticamente para a próxima cor
• ao trocar de cor, o tempo deve ser reiniciado conforme a regra da nova cor
*/

import 'semaforo.dart';

void main() {
  Semaforo semaforo = new Semaforo('vermelho');

  for (int i = 0; i < 25; i++) {
    semaforo.exibirEstado();
    semaforo.reduzirTempo();
  }
  semaforo.exibirEstado();
}
