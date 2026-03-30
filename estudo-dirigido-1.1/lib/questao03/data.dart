class Data {

  late int _dia;
  late int _mes;
  late int _ano;

  Data(int dia, int mes, int ano) {
    setDia(dia);
    setMes(mes);
    setAno(ano);
  }

  void setDia(int dia) {
    if (dia < 1 || dia > 31){
      throw "Dia deve estar entre 1 e 31";
    }
    this._dia = dia;
  }

  int getDia() {
    return this._dia;
  }

  void setMes(int mes) {
    if (mes < 1 || mes > 12){
      throw "Mês deve estar entre 1 e 12";
    }
    this._mes = mes;
  }

  int getMes() {
    return this._mes;
  }

  void setAno(int ano) {
    if (ano <= 0){
      throw "Ano deve ser maior que 0";
    }
    this._ano = ano;
  }

  int getAno() {
    return this._ano;
  }

  void exibirData() {
    print(
      getDia().toString().padLeft(2, '0') + '/' +
      getMes().toString().padLeft(2, '0') + '/' +
      getAno().toString().padLeft(4, '0')
    );
  }

}
