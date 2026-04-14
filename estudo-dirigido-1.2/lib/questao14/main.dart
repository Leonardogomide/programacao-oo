import 'conta.dart';
import 'gerente.dart';

void main() {

  Conta conta = Conta('Lucas', 1000);
  Gerente g1 = Gerente('Marcia');
  Gerente g2 = Gerente('Lucia');

  print('Estado inicial:');
  conta.exibir();

  g1.depositar(conta, 200);
  conta.exibir();

  g2.sacar(conta, 150);
  conta.exibir();

}


// a) Por que os dois gerentes conseguem alterar o mesmo saldo?
// Porque tanto g1.depositar(conta, 200) quanto g2.sacar(conta, 150) recebem a mesma
// referencia do objeto Conta. Dentro de cada metodo, ao chamar conta.depositar() ou
// conta.sacar(), o gerente esta operando diretamente sobre o unico objeto Conta na heap.

// b) Cada gerente possui uma conta propria ou ambos estao operando sobre a mesma instancia?
// Ambos operam sobre a mesma instancia. Os gerentes nao possuem contas proprias; eles
// recebem a conta como parametro nos metodos depositar() e sacar(). Como a referencia
// passada aponta para o mesmo objeto, as operacoes de g1 e g2 se acumulam no mesmo saldo.

// c) O que esse exercicio mostra sobre compartilhamento de referencia entre objetos?
// Mostra que diferentes objetos podem manipular um mesmo recurso compartilhado ao receberem
// a mesma referencia. Isso e util para modelar situacoes reais (como varios gerentes
// operando a mesma conta), mas exige atencao: qualquer alteracao feita por um objeto
// e imediatamente visivel por todos os outros que compartilham essa referencia.
