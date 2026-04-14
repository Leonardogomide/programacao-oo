import '../questao03/produto.dart';
import 'item_carrinho.dart';

// Testa a classe ItemCarrinho
void main() {

  // Cria dois produtos
  Produto p1 = Produto("Monitor", 1200.00, 8, true);
  Produto p2 = Produto("Fone", 250.00, 40, true);

  // Cria dois itens de carrinho
  ItemCarrinho item1 = ItemCarrinho(p1, 2);
  ItemCarrinho item2 = ItemCarrinho(p2, 4);

  // Exibe os itens
  print("Itens do carrinho:");
  item1.exibirItem();
  item2.exibirItem();

}
