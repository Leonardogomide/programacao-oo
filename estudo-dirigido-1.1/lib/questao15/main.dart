/*
Crie uma classe Cofrinho com os seguintes atributos obrigatórios:
• double saldo
• int quantidadeDepositos
Implemente um construtor que inicialize os valores. Crie os seguintes métodos:
• depositar(double valor) → adiciona valor ao saldo
• quebrar() → mostra o total acumulado e zera o cofrinho
• exibirSaldo() → mostra o saldo atual
No main(), instancie exatamente 1 cofrinho, faça vários depósitos e depois quebre o cofrinho.
Restrições:
• saldo inicial deve ser maior ou igual a 0
• quantidadeDepositos deve iniciar com 0
• o valor do depósito deve ser maior que 0
• ao quebrar, o saldo deve voltar para 0
• a quantidade de depósitos deve ser incrementada corretamente a cada depósito
*/

import 'cofrinho.dart';

void main() {
  Cofrinho cofrinho = new Cofrinho(0);

  cofrinho.depositar(20.00);
  cofrinho.exibirSaldo();
  cofrinho.depositar(15.75);
  cofrinho.exibirSaldo();
  cofrinho.depositar(50.00);
  cofrinho.exibirSaldo();
  cofrinho.depositar(30.25);
  cofrinho.exibirSaldo();

  cofrinho.quebrar();
  cofrinho.exibirSaldo();
}
