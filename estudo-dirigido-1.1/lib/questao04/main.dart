import 'lampada.dart';

// Função principal para testar a lâmpada
void main() {
  // Cria uma nova lâmpada
  Lampada lampada = Lampada();

  // Primeira sequência
  print('Teste 1: Ligar');
  lampada.ligar();           // Liga (ligações=1)
  lampada.exibirEstado();    // ligada (1)
  print('Teste 1: Desligar');
  lampada.desligar();        // Desliga
  lampada.exibirEstado();    // desligada (1)
  print('');

  // Segunda sequência
  print('Teste 2: Ligar');
  lampada.ligar();           // Liga (2)
  lampada.desligar();        // Desliga
  print('Teste 2: Ligar');
  lampada.ligar();           // Liga (3)
  lampada.desligar();        // Desliga
  print('Teste 2: Ligar');
  lampada.ligar();           // Liga (4)
  lampada.desligar();        // Desliga
  print('');

  // Teste que queima
  print('Teste final: Ligar 5+ vezes');
  lampada.ligar();           // Liga (5) - agora queima na próxima
  lampada.exibirEstado();    // ligada (5)
  lampada.ligar();           // Tenta ligar 6 - queima
  lampada.exibirEstado();    // queimada (5)
}
