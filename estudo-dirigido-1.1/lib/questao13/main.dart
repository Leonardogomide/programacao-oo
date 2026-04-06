import 'pedido.dart';
import '../questao06/produto.dart';

// Testa 2 pedidos
void main() {
  Produto p1 = Produto(1, 'Impressora', 300.00, 1);
  Produto p2 = Produto(2, 'Roteador', 150.00, 1);

  Pedido pedido1 = Pedido(1, p1, 3);
  print('Pedido 1:');
  pedido1.exibirPedido();
  print('');

  Pedido pedido2 = Pedido(2, p2, 5);
  print('Pedido 2:');
  pedido2.exibirPedido();
}
