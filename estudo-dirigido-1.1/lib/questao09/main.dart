import 'pessoa.dart';
import '../questao08/endereco.dart';

// Cria 3 pessoas com endereços
void main() {
  Endereco end1 = Endereco('Rua dos Pinheiros', 300, 'Vila Madalena', 'São Paulo', 'SP', 05425000);
  Endereco end2 = Endereco('Av. Rio Branco', 500, 'Centro', 'Rio de Janeiro', 'RJ', 20040000);
  Endereco end3 = Endereco('Rua XV de Novembro', 150, 'Centro', 'Florianópolis', 'SC', 88010000);

  Pessoa pessoa1 = Pessoa('José', 35, '444.444.444-44', end1);
  Pessoa pessoa2 = Pessoa('Fernanda', 28, '555.555.555-55', end2);
  Pessoa pessoa3 = Pessoa('Paulo', 45, '666.666.666-66', end3);

  print('Pessoa 1:');
  pessoa1.exibirPessoa();
  print('');

  print('Pessoa 2:');
  pessoa2.exibirPessoa();
  print('');

  print('Pessoa 3:');
  pessoa3.exibirPessoa();
}
