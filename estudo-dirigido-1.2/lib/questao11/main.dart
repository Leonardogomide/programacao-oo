import 'endereco.dart';
import 'cliente.dart';

void main() {

Cliente cliente1 = Cliente('Julia', Endereco('Rua B', 20, 'São Paulo'));
  Cliente cliente2 = Cliente.copia(cliente1);

  cliente2.endereco.alterarRua('Rua B');

  print('Cliente original:');
  cliente1.exibir();

  print('Cliente copiado:');
  cliente2.exibir();

}
