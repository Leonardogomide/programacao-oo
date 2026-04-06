import 'produto.dart';

// Programa principal para testar produto
void main() {
  // Produto 1: Celular, 2 unid, sem desconto
  Produto produto1 = Produto(1, 'Celular', 2500.00, 2);
  print('Produto 1 (sem desconto):');
  produto1.exibirResumo();
  print('');

  // Segundo produto: Teclado, 10 unid (10% desconto)
  Produto produto2 = Produto(3, 'Teclado', 200.00, 10);
  print('Produto 2 (10% desconto):');
  produto2.exibirResumo();
}
