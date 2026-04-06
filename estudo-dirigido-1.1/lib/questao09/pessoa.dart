import '../questao08/endereco.dart';

/// Classe Pessoa com endereço.
class Pessoa {
  late String _nome;
  late int _idade;
  late String _cpf;
  late Endereco _endereco;

  Pessoa(String nome, int idade, String cpf, Endereco endereco) {
    _nome = nome;
    _idade = idade;
    _cpf = cpf;
    _endereco = endereco;
  }

  String getNome() {
    return _nome;
  }

  int getIdade() {
    return _idade;
  }

  String getCpf() {
    return _cpf;
  }

  Endereco getEndereco() {
    return _endereco;
  }

  void exibirPessoa() {
    print('///');
    print('Nome: ' + _nome);
    print('Idade: ' + _idade.toString());
    print('CPF: ' + _cpf);
    _endereco.exibirEndereco();
    print('///');
  }
}
