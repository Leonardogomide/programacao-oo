import '../questao01/cliente.dart';
import '../questao02/lista_cliente.dart';
import '../questao03/produto.dart';
import '../questao04/lista_produto.dart';
import '../questao05/item_carrinho.dart';
import '../questao06/lista_carrinho.dart';
import '../questao07/carrinho.dart';
import '../questao08/cupom_desconto.dart';
import '../questao09/pedido.dart';
import 'loja.dart';

// Testa a classe Loja
void main() {

  // Cria dois clientes
  Cliente c1 = Cliente("Rafael", "rafael@mail.com", 400.0, true);
  Cliente c2 = Cliente("Camila", "camila@mail.com", 200.0, true);

  // Cria tres produtos
  Produto p1 = Produto("Monitor", 1200.00, 8, true);
  Produto p2 = Produto("Fone", 250.00, 40, true);
  Produto p3 = Produto("Webcam", 180.00, 25, true);

  // Cria a loja e cadastra clientes e produtos
  ListaCliente listaClientes = ListaCliente();
  ListaProduto listaProdutos = ListaProduto();
  Loja loja = Loja("ByteShop", listaClientes, listaProdutos);

  loja.cadastrarCliente(c1);
  loja.cadastrarCliente(c2);
  loja.cadastrarProduto(p1);
  loja.cadastrarProduto(p2);
  loja.cadastrarProduto(p3);

  // Monta o carrinho do Rafael
  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);
  ListaCarrinho listaItens = ListaCarrinho();
  Carrinho carrinho = Carrinho(c1, listaItens, true);
  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);

  // Cria pedido com cupom de 20%
  CupomDesconto cupom = CupomDesconto("PROMO20", 20.0, true);
  Pedido pedido = Pedido("PD100", carrinho, cupom);
  pedido.fecharPedido();

  // Registra pedido na loja
  loja.registrarPedido(pedido);

  // Exibe resumo geral
  print("Resumo geral da loja:");
  loja.exibirResumoLoja();

}
