/// Classe simples de Pessoa para estudo de OO em Dart.
/// Aqui temos nome e idade privados.
class Pessoa {
  // Campo privado para o nome da pessoa
  late String _nome;
  
  // Campo privado para a idade da pessoa
  late int _idade;

  // Construtor simples que recebe nome e idade
  // Assume que os valores são válidos (estilo junior)
  Pessoa(String nome, int idade) {
    _nome = nome;  // Atribui o nome diretamente
    _idade = idade;  // Atribui a idade diretamente
  }

  // Método para pegar o nome (getter simples)
  String getNome() {
    return _nome;  // Retorna o nome privado
  }

  // Método para pegar a idade (getter simples)
  int getIdade() {
    return _idade;  // Retorna a idade privada
  }

  // Método para mostrar os dados da pessoa no console
  void exibirDados() {
    // Imprime o nome
    print("Nome: " + _nome);
    // Imprime a idade
    print("Idade: " + _idade.toString());
  }
}
