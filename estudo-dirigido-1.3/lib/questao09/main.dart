import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import '../questao06/lista_carrinho.dart';
import '../questao07/carrinho.dart';
import '../questao08/cupom_desconto.dart';
import 'pedido.dart';

// Testa a classe Pedido
void main() {

  // Cria o cliente
  Cliente cliente = Cliente("Rafael", "rafael@mail.com", 400.0, true);

  // Cria dois produtos
  Produto p1 = Produto("Monitor", 1200.00, 8, true);
  Produto p2 = Produto("Fone", 250.00, 40, true);

  // Cria os itens
  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);

  // Monta o carrinho
  ListaCarrinho listaItens = ListaCarrinho();
  Carrinho carrinho = Carrinho(cliente, listaItens, true);
  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);

  // Cria cupom de 20%
  CupomDesconto cupom = CupomDesconto("PROMO20", 20.0, true);

  // Cria e fecha o pedido
  Pedido pedido = Pedido("PD100", carrinho, cupom);
  pedido.fecharPedido();

  // Exibe resumo
  print("Resumo do pedido:");
  pedido.exibirResumoPedido();

}
