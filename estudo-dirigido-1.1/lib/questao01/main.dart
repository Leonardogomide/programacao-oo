import 'pessoa.dart';


// Função principal do programa
void main() {
  // Cria a primeira pessoa chamada Maria com 25 anos
  Pessoa pessoa1 = Pessoa('Maria', 25);
  
  // Cria a segunda pessoa chamada João com 30 anos
  Pessoa pessoa2 = Pessoa('João', 30);
  
  // Cria a terceira pessoa chamada Ana com 40 anos
  Pessoa pessoa3 = Pessoa('Ana', 40);

  // Chama o método para mostrar dados da pessoa1
  print('Dados da primeira pessoa:');
  pessoa1.exibirDados();
  print('');  // Linha em branco para separar

  // Chama o método para mostrar dados da pessoa2
  print('Dados da segunda pessoa:');
  pessoa2.exibirDados();
  print('');  // Linha em branco para separar

  // Chama o método para mostrar dados da pessoa3
  print('Dados da terceira pessoa:');
  pessoa3.exibirDados();
}
