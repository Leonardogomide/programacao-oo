class Pessoa{

  late String _nome;
  late int _idade;

  Pessoa(String nome, int idade){
      setNome(nome);
      setIdade(idade);
  }

  void setNome(String nome){
    if(nome.length <= 0){
      throw "Nome não pode ser vazio";
    }
    this._nome = nome;
  }

  String getNome(){
    return this._nome;
  }

  void setIdade(int idade){
    if(idade < 0){
      throw "Idade não pode ser menor que 0";
    }
    this._idade = idade;
  }

  int getIdade(){
    return this._idade;
  }

  void exibirDados(){
    print("Nome: " + this.getNome());
    print("Idade: " + this.getIdade().toString());
  }

}