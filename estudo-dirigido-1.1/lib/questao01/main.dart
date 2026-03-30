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
  // Instancia primeira pessoa
  Pessoa pessoa1 = new Pessoa('Maria', 25);
  // Instancia segunda pessoa
  Pessoa pessoa2 = new Pessoa('João', 30);
  // Instancia terceira pessoa
  Pessoa pessoa3 = new Pessoa('Ana', 40);

  // Exibe dados da primeira pessoa
  pessoa1.exibirDados();
  // Exibe dados da segunda pessoa
  pessoa2.exibirDados();
  // Exibe dados da terceira pessoa
  pessoa3.exibirDados();
}