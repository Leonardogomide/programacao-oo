import 'cofrinho.dart';

// Testa cofrinho
void main() {
  Cofrinho cofrinho = Cofrinho(0);

  cofrinho.depositar(20.00);
  cofrinho.exibirSaldo(); // 20.00

  cofrinho.depositar(15.75);
  cofrinho.exibirSaldo(); // 35.75

  cofrinho.depositar(50.00);
  cofrinho.exibirSaldo(); // 85.75

  cofrinho.depositar(30.25);
  cofrinho.exibirSaldo(); // 116.00

  cofrinho.quebrar(); // Mostra total e zera
  cofrinho.exibirSaldo(); // 0.00
}
