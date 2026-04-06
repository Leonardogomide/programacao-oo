import 'quadrado.dart';

// Testa 4 quadrados: diferentes e iguais
void main() {
  // Quadrado 1: lado 4, X
  Quadrado q1 = Quadrado(4, 'X');
  print('Quadrado 1:');
  q1.exibirResumo();
  q1.desenhar();
  print('');

  // Quadrado 2: lado 6, O (diferente)
  Quadrado q2 = Quadrado(6, 'O');
  print('Quadrado 2:');
  q2.exibirResumo();
  q2.desenhar();
  print('');

  // Quadrado 3: lado 4, Y (igual lado q1)
  Quadrado q3 = Quadrado(4, 'Y');
  print('Quadrado 3:');
  q3.exibirResumo();
  q3.desenhar();
  print('');

  // Quadrado 4: lado 4, Z (igual lado q1 e q3)
  Quadrado q4 = Quadrado(4, 'Z');
  print('Quadrado 4:');
  q4.exibirResumo();
  q4.desenhar();
  print('');

  // Verifica iguais por lado
  print('q1 == q2? ' + q1.ehIgual(q2).toString());
  print('q1 == q3? ' + q1.ehIgual(q3).toString());
  print('q3 == q4? ' + q3.ehIgual(q4).toString());
}
