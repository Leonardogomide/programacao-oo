/// Classe que representa uma pessoa com nome e idade.
class Pessoa{

  /// Nome da pessoa
  late String _nome;
  
  /// Idade da pessoa
  late int _idade;

  /// Construtor que inicializa nome e idade com validação.
  Pessoa(String nome, int idade){
      setNome(nome);
      setIdade(idade);
  }

  /// Define o nome da pessoa.
  /// Lança uma exceção se o nome estiver vazio.
  void setNome(String nome){
    if(nome.length <= 0){
      throw "Nome não pode ser vazio";
    }
    this._nome = nome;
  }

  /// Retorna o nome da pessoa.
  String getNome(){
    return this._nome;
  }

  /// Define a idade da pessoa.
  /// Lança uma exceção se a idade for menor que 0.
  void setIdade(int idade){
    if(idade < 0){
      throw "Idade não pode ser menor que 0";
    }
    this._idade = idade;
  }

  /// Retorna a idade da pessoa.
  int getIdade(){
    return this._idade;
  }

  /// Exibe os dados da pessoa (nome e idade) no console.
  void exibirDados(){
    print("Nome: " + this.getNome());
    print("Idade: " + this.getIdade().toString());
  }

}