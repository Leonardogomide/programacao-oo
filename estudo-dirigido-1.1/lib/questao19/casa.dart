class Comodo {

  late String _nome;
  late double _tamanho;

  Comodo(String nome, double tamanho) {
    setNome(nome);
    setTamanho(tamanho);
  }

  void setNome(String nome) {
    if (nome.isEmpty){
      throw "Nome não pode ser vazio";
    }
    this._nome = nome;
  }

  String getNome(){
    return this._nome;
  }

  void setTamanho(double tamanho) {
    if (tamanho <= 0){
      throw "Tamanho deve ser maior que 0";
    }
    this._tamanho = tamanho;
  }

  double getTamanho(){
    return this._tamanho;
  }

  void exibirComodo() {
    print("  - " + getNome() + ": " + getTamanho().toString() + " m²");
  }

}

class Casa {

  late String _proprietario;
  late Comodo _comodo1;
  late Comodo _comodo2;
  late Comodo _comodo3;

  Casa(String proprietario, Comodo comodo1, Comodo comodo2, Comodo comodo3) {
    setProprietario(proprietario);
    this._comodo1 = comodo1;
    this._comodo2 = comodo2;
    this._comodo3 = comodo3;
  }

  void setProprietario(String proprietario) {
    if (proprietario.isEmpty){
      throw "Proprietário não pode ser vazio";
    }
    this._proprietario = proprietario;
  }

  String getProprietario(){
    return this._proprietario;
  }

  double calcularAreaTotal(){
    return _comodo1.getTamanho() +
           _comodo2.getTamanho() +
           _comodo3.getTamanho();
  }

  void exibirCasa() {
    print("Proprietário: " + getProprietario());
    _comodo1.exibirComodo();
    _comodo2.exibirComodo();
    _comodo3.exibirComodo();
    print("Área total: " + calcularAreaTotal().toString() + " m²");
  }

}
