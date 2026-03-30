/*
Crie uma classe Produto com os seguintes atributos obrigatórios:
• int codigo
• String nome
• double precoUnitario
• int quantidade
Implemente um construtor que receba todos esses valores. Crie os seguintes métodos:
• calcularDesconto() → retorna o valor do desconto aplicado
• calcularTotal() → retorna o valor total da compra com desconto
• exibirResumo() → mostra código, nome, preço unitário, quantidade, desconto e total
No main(), instancie 1 produto e exiba o seu resumo. Em seguida, substitua os atributos deste produto e o exiba novamente.
Regras de desconto por quantidade:
• até 4 unidades: sem desconto
• de 5 a 9 unidades: 5% de desconto
• de 10 a 19 unidades: 10% de desconto
• 20 unidades ou mais: 15% de desconto
*/

import 'produto.dart';

void main() {
  Produto produto = new Produto(1, 'Celular', 2500.00, 2);
  produto.exibirResumo();

  produto.setCodigo(3);
  produto.setNome('Teclado');
  produto.setPrecoUnitario(200.00);
  produto.setQuantidade(10);
  produto.exibirResumo();
}
