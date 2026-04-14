import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import '../questao06/lista_carrinho.dart';
import 'carrinho.dart';

// Testa a classe Carrinho
void main() {

  // Cria o cliente
  Cliente cliente = Cliente("Rafael", "rafael@mail.com", 400.0, true);

  // Cria tres produtos
  Produto p1 = Produto("Monitor", 1200.00, 8, true);
  Produto p2 = Produto("Fone", 250.00, 40, true);
  Produto p3 = Produto("Webcam", 180.00, 25, true);

  // Cria os itens
  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);
  ItemCarrinho item3 = ItemCarrinho(p3, 1);

  // Cria o carrinho e adiciona os itens
  ListaCarrinho listaItens = ListaCarrinho();
  Carrinho carrinho = Carrinho(cliente, listaItens, true);
  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);
  carrinho.adicionarItem(item3);

  // Exibe o carrinho
  print("Dados do carrinho:");
  carrinho.exibirCarrinho();

}
