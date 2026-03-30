/*
Crie uma classe Pessoa com os seguintes atributos obrigatórios:
• String nome
• int idade
• String cpf
• Endereco endereco
Implemente um construtor que receba todos esses valores. Depois, crie um método exibirPessoa() que mostre os dados da pessoa de forma organizada, incluindo os dados do endereço. No main(), instancie exatamente 3 pessoas diferentes, cada uma com 1 endereço, e exiba os dados completos de cada uma.
Restrições:
• nome não pode ser vazio
• idade deve ser maior ou igual a 0
• cpf não pode ser vazio
• endereco deve ser do tipo Endereco
*/

import 'pessoa.dart';
import '../questao08/endereco.dart';

void main() {
  Endereco end1 = new Endereco('Rua dos Pinheiros', 300, 'Vila Madalena', 'São Paulo', 'SP', 05425000);
  Endereco end2 = new Endereco('Av. Rio Branco', 500, 'Centro', 'Rio de Janeiro', 'RJ', 20040000);
  Endereco end3 = new Endereco('Rua XV de Novembro', 150, 'Centro', 'Florianópolis', 'SC', 88010000);

  Pessoa pessoa1 = new Pessoa('José', 35, '444.444.444-44', end1);
  Pessoa pessoa2 = new Pessoa('Fernanda', 28, '555.555.555-55', end2);
  Pessoa pessoa3 = new Pessoa('Paulo', 45, '666.666.666-66', end3);

  pessoa1.exibirPessoa();
  pessoa2.exibirPessoa();
  pessoa3.exibirPessoa();
}
