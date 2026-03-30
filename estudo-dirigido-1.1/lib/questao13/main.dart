/*
Crie uma classe Pedido com os seguintes atributos obrigatórios:
• int numero
• Produto produto
• int quantidade
Implemente um construtor que receba todos esses valores. Crie os seguintes métodos:
• calcularTotal() → calcula o valor total do pedido
• exibirPedido() → mostra o número do pedido, os dados do produto, a quantidade e o total
No main(), instancie exatamente 2 pedidos diferentes, cada um com um produto, e exiba os dados completos.
Restrições:
• numero deve ser maior que 0
• produto deve ser do tipo Produto
• quantidade deve ser maior que 0
• o total deve ser calculado usando o preço do produto
*/

import 'pedido.dart';
import '../questao06/produto.dart';

void main() {
  Produto p1 = new Produto(1, 'Impressora', 300.00, 1);
  Produto p2 = new Produto(2, 'Roteador', 150.00, 1);

  Pedido pedido1 = new Pedido(1, p1, 3);
  Pedido pedido2 = new Pedido(2, p2, 5);

  pedido1.exibirPedido();
  pedido2.exibirPedido();
}
