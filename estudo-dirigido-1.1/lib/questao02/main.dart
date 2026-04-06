import 'relogio.dart';

// Função principal para testar os relógios
void main() {
  // Cria o primeiro relógio: 8:15:45
  Relogio relogio1 = Relogio(8, 15, 45);
  print('Primeiro relógio:');
  relogio1.exibirHorario();
  print(''); // Linha vazia para separar

  // Cria o segundo relógio: 14:30:00
  Relogio relogio2 = Relogio(14, 30, 0);
  print('Segundo relógio:');
  relogio2.exibirHorario();
  print(''); // Linha vazia para separar

  // Cria o terceiro relógio: 00:00:00
  Relogio relogio3 = Relogio(0, 0, 0);
  print('Terceiro relógio:');
  relogio3.exibirHorario();
}
