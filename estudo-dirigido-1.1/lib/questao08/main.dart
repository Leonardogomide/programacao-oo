import 'endereco.dart';

// Mostra 3 endereços diferentes
void main() {
  // Endereço 1: São Paulo
  Endereco end1 = Endereco('Rua dos Pinheiros', 300, 'Vila Madalena', 'São Paulo', 'SP', 05425000);
  print('Endereço 1:');
  end1.exibirEndereco();
  print('');

  // Endereço 2: Rio de Janeiro
  Endereco end2 = Endereco('Av. Rio Branco', 500, 'Centro', 'Rio de Janeiro', 'RJ', 20040000);
  print('Endereço 2:');
  end2.exibirEndereco();
  print('');

  // Endereço 3: Florianópolis
  Endereco end3 = Endereco('Rua XV de Novembro', 150, 'Centro', 'Florianópolis', 'SC', 88010000);
  print('Endereço 3:');
  end3.exibirEndereco();
}
