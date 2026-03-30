import '../questao08/endereco.dart';

class Pessoa {

  late String _nome;
  late int _idade;
  late String _cpf;
  late Endereco _endereco;

  Pessoa(String nome, int idade, String cpf, Endereco endereco) {
    setNome(nome);
    setIdade(idade);
    setCpf(cpf);
    setEndereco(endereco);
  }

  void setNome(String nome) {
    if (nome.isEmpty){
      throw "Nome não pode ser vazio";
    }
    this._nome = nome;
  }

  String getNome() {
    return this._nome;
  }

  void setIdade(int idade) {
    if (idade < 0){
      throw "Idade não pode ser menor que 0";
    }
    this._idade = idade;
  }

  int getIdade() {
    return this._idade;
  }

  void setCpf(String cpf) {
    if (cpf.isEmpty){
      throw "CPF não pode ser vazio";
    }
    this._cpf = cpf;
  }

  String getCpf() {
    return this._cpf;
  }

  void setEndereco(Endereco endereco) {
    this._endereco = endereco;
  }

  Endereco getEndereco() {
    return this._endereco;
  }

  void exibirPessoa() {
    print("///");
    print("Nome: " + getNome());
    print("Idade: " + getIdade().toString());
    print("CPF: " + getCpf());
    getEndereco().exibirEndereco();
    print("///");
  }

}
