import 'contador.dart';

// Testa dois contadores
void main() {
  print('Contador 1 (inicia em 5):');
  Contador contador1 = Contador(5);
  contador1.incrementar(); // 6
  contador1.incrementar(); // 7
  contador1.incrementar(); // 8
  contador1.exibirValor(); // 8
  contador1.decrementar(); // 7
  contador1.exibirValor(); // 7
  contador1.zerar(); // 0
  contador1.exibirValor(); // 0
  contador1.decrementar(); // continua 0
  contador1.exibirValor(); // 0
  print('');

  print('Contador 2 (inicia em 20):');
  Contador contador2 = Contador(20);
  contador2.exibirValor(); // 20
  contador2.decrementar(); // 19
  contador2.decrementar(); // 18
  contador2.exibirValor(); // 18
  contador2.zerar(); // 0
  contador2.exibirValor(); // 0
}
