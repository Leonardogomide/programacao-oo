import 'circulo.dart';

// Mostra 3 círculos
void main() {
  // Círculo 1
  Circulo c1 = Circulo(4.0, 'amarelo');
  print('Círculo 1:');
  c1.exibirResumo();

  // Círculo 2
  Circulo c2 = Circulo(6.0, 'roxo');
  print('Círculo 2:');
  c2.exibirResumo();

  // Círculo 3
  Circulo c3 = Circulo(8.0, 'laranja');
  print('Círculo 3:');
  c3.exibirResumo();
}
