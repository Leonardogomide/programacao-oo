/// Classe simples de Endereco.
class Endereco {
  late String _rua;
  late int _numero;
  late String _bairro;
  late String _cidade;
  late String _estado;
  late int _cep;

  Endereco(String rua, int numero, String bairro, String cidade, String estado, int cep) {
    _rua = rua;
    _numero = numero;
    _bairro = bairro;
    _cidade = cidade;
    _estado = estado;
    _cep = cep;
  }

  String getRua() {
    return _rua;
  }

  int getNumero() {
    return _numero;
  }

  String getBairro() {
    return _bairro;
  }

  String getCidade() {
    return _cidade;
  }

  String getEstado() {
    return _estado;
  }

  int getCep() {
    return _cep;
  }

  String getCepFormatado() {
    String cepStr = _cep.toString().padLeft(8, '0');
    return cepStr.substring(0, 5) + '-' + cepStr.substring(5);
  }

  void exibirEndereco() {
    print('///');
    print('Rua: ' + _rua + ', ' + _numero.toString());
    print('Bairro: ' + _bairro);
    print('Cidade: ' + _cidade + ' - ' + _estado);
    print('CEP: ' + getCepFormatado());
    print('///');
  }
}
