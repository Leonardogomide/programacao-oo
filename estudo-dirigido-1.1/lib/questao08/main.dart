/*
Crie uma classe Endereco com os seguintes atributos obrigatórios:
• String rua
• int numero
• String bairro
• String cidade
• String estado
• int cep
Implemente um construtor que receba todos esses valores. Depois, crie um método exibirEndereco() que mostre todas as informações do endereço de forma organizada. No main(), instancie exatamente 3 endereços diferentes e exiba cada um.
Restrições:
• rua não pode ser vazia
• numero deve ser maior que 0
• bairro não pode ser vazio
• cidade não pode ser vazia
• estado não pode ser vazio
• cep não pode ser vazio
• cep deverá ser impresso no formato XXXXX-XXX
*/

import 'endereco.dart';

void main() {
  Endereco end1 = new Endereco('Rua dos Pinheiros', 300, 'Vila Madalena', 'São Paulo', 'SP', 05425000);
  Endereco end2 = new Endereco('Av. Rio Branco', 500, 'Centro', 'Rio de Janeiro', 'RJ', 20040000);
  Endereco end3 = new Endereco('Rua XV de Novembro', 150, 'Centro', 'Florianópolis', 'SC', 88010000);

  end1.exibirEndereco();
  end2.exibirEndereco();
  end3.exibirEndereco();
}
