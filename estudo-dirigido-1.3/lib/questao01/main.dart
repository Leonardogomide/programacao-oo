import 'cliente.dart';

// Testa a classe Cliente
void main() {

  // Cria dois clientes
  Cliente cliente1 = Cliente("Rafael", "rafael@mail.com", 150.0, true);
  Cliente cliente2 = Cliente("Camila", "camila@mail.com", 80.0, false);

  // Adiciona saldo ao cliente1
  cliente1.adicionarSaldo(100.0);

  // Debita saldo do cliente2
  cliente2.debitarSaldo(30.0);

  // Ativa o cliente2
  cliente2.ativar();

  // Exibe dados finais
  print("Dados finais:");
  cliente1.exibirCliente();
  cliente2.exibirCliente();

}
