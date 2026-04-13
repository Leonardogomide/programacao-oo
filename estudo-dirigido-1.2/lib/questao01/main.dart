import 'lampada.dart';

void main() {
  // Cria uma nova lâmpada
  Lampada lampada = Lampada();

  // Teste 1: Ligar básico
  print('Teste 1: Ligar primeira vez');
  lampada.ligar();           
  lampada.exibirEstado();    
  print('Teste 1: Desligar');
  lampada.desligar();        
  lampada.exibirEstado();    
  print('');

  // Teste 2: Múltiplas ligações
  print('Teste 2: Ligar múltiplas vezes');
  lampada.ligar();           // 1
  lampada.desligar();        
  lampada.ligar();           // 2
  lampada.ligar();           // 3 (fica ligada)
  lampada.exibirEstado();    
  print('');

  // Teste final: Queimar (4 ligações)
  print('Teste final: Ligar para queimar');
  lampada.ligar();           // 4 - queima na próxima
  lampada.exibirEstado();    
  lampada.ligar();           // tenta 5 - queimada
  lampada.exibirEstado();    
}

