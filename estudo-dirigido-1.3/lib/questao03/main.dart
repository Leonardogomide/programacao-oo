import 'produto.dart';

// Testa a classe Produto
void main() {

  // Cria dois produtos
  Produto p1 = Produto("Monitor", 1200.00, 8, true);
  Produto p2 = Produto("Fone", 250.00, 40, true);

  // Repoe estoque do p1
  p1.reporEstoque(3);

  // Retira estoque do p2
  p2.retirarEstoque(15);

  // Exibe dados finais
  print("Dados finais:");
  p1.exibirProduto();
  p2.exibirProduto();

}
