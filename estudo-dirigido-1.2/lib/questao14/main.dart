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
