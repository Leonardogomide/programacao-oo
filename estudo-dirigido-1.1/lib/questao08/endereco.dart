class Endereco {

  late String _rua;
  late int _numero;
  late String _bairro;
  late String _cidade;
  late String _estado;
  late int _cep;

  Endereco(String rua, int numero, String bairro, String cidade, String estado, int cep) {
    setRua(rua);
    setNumero(numero);
    setBairro(bairro);
    setCidade(cidade);
    setEstado(estado);
    setCep(cep);
  }

  void setRua(String rua) {
    if (rua.isEmpty){
      throw "Rua não pode ser vazia";
    }
    this._rua = rua;
  }

  String getRua() {
    return this._rua;
  }

  void setNumero(int numero) {
    if (numero <= 0){
      throw "Número deve ser maior que 0";
    }
    this._numero = numero;
  }

  int getNumero() {
    return this._numero;
  }

  void setBairro(String bairro) {
    if (bairro.isEmpty){
      throw "Bairro não pode ser vazio";
    }
    this._bairro = bairro;
  }

  String getBairro() {
    return this._bairro;
  }

  void setCidade(String cidade) {
    if (cidade.isEmpty){
      throw "Cidade não pode ser vazia";
    }
    this._cidade = cidade;
  }

  String getCidade() {
    return this._cidade;
  }

  void setEstado(String estado) {
    if (estado.isEmpty){
      throw "Estado não pode ser vazio";
    }
    this._estado = estado;
  }

  String getEstado() {
    return this._estado;
  }

  void setCep(int cep) {
    if (cep <= 0){
      throw "CEP não pode ser vazio";
    }
    this._cep = cep;
  }

  int getCep() {
    return this._cep;
  }

  String getCepFormatado() {
    String cepStr = getCep().toString().padLeft(8, '0');
    return cepStr.substring(0, 5) + '-' + cepStr.substring(5);
  }

  void exibirEndereco() {
    print("///");
    print("Rua: " + getRua() + ", " + getNumero().toString());
    print("Bairro: " + getBairro());
    print("Cidade: " + getCidade() + " - " + getEstado());
    print("CEP: " + getCepFormatado());
    print("///");
  }

}
