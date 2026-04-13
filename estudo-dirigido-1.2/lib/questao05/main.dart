import 'conta.dart';

// Função principal testes contas (estilo 1.1, dados variados)
void main() {
  // Conta bancária
  Conta conta1 = Conta.bancaria("1001", "Beatriz");
  print('Conta bancária inicial:');
  conta1.exibirResumo();
  print('');
  
  print('Depósito 1500:');
  conta1.depositar(1500);
  conta1.exibirResumo();
  print('');

  // Conta vip
  Conta conta2 = Conta.vip("1002", "Gabriel", 3000.00);
  print('Conta vip inicial:');
  conta2.exibirResumo();
  print('');
  
  print('Saque 1000:');
  conta2.sacar(1000);
  conta2.exibirResumo();
}

