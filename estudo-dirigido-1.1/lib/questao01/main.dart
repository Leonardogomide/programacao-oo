import 'pessoa.dart';


/*Crie uma classe Pessoa com os seguintes atributos obrigatórios:
• String nome
• int idade
Implemente um construtor que receba todos esses valores. Depois, crie um método exibirDados() que mostre as informações da pessoa de forma organizada. No main(), instancie exatamente 3 pessoas diferentes e exiba os dados de cada uma.
Restrições:
• nome não pode ser vazio
• idade deve ser maior ou igual a 0 
*/

void main(){  
  Pessoa pessoa1 = new Pessoa('Maria', 25);
  Pessoa pessoa2 = new Pessoa('João', 30);
  Pessoa pessoa3 = new Pessoa('Ana', 40);

  pessoa1.exibirDados();
  pessoa2.exibirDados();
  pessoa3.exibirDados();
}