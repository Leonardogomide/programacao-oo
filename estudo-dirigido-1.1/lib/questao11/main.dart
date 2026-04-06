import 'triangulo.dart';

// Testa 2 triângulos
void main() {
  // Triângulo 1: 6,8,10 'A'
  Triangulo t1 = Triangulo(6, 8, 10, 'A');
  print('Triângulo 1:');
  t1.exibirResumo();
  print('Esquerda:');
  t1.desenharEsquerda();
  print('');
  print('Centralizado:');
  t1.desenharCentralizado();
  print('');

  // Triângulo 2: equilátero 7,7,7 'B'
  Triangulo t2 = Triangulo(7, 7, 7, 'B');
  print('Triângulo 2:');
  t2.exibirResumo();
  print('Esquerda:');
  t2.desenharEsquerda();
  print('');
  print('Centralizado:');
  t2.desenharCentralizado();
}
