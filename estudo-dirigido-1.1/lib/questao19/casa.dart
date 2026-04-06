/// Classe Cômodo.
class Comodo {
  late String _nome;
  late double _tamanho;

  Comodo(String nome, double tamanho) {
    _nome = nome;
    _tamanho = tamanho;
  }

  String getNome() {
    return _nome;
  }

  double getTamanho() {
    return _tamanho;
  }

  void exibirComodo() {
    print('  - ' + _nome + ': ' + _tamanho.toString() + ' m²');
  }
}

/// Classe Casa.
class Casa {
  late String _proprietario;
  late Comodo _comodo1;
  late Comodo _comodo2;
  late Comodo _comodo3;

  Casa(String proprietario, Comodo comodo1, Comodo comodo2, Comodo comodo3) {
    _proprietario = proprietario;
    _comodo1 = comodo1;
    _comodo2 = comodo2;
    _comodo3 = comodo3;
  }

  String getProprietario() {
    return _proprietario;
  }

  double calcularAreaTotal() {
    return _comodo1.getTamanho() + _comodo2.getTamanho() + _comodo3.getTamanho();
  }

  void exibirCasa() {
    print('Proprietário: ' + _proprietario);
    _comodo1.exibirComodo();
    _comodo2.exibirComodo();
    _comodo3.exibirComodo();
    print('Área total: ' + calcularAreaTotal().toString() + ' m²');
  }
}
