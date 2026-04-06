/// Classe simples de Data para mostrar datas.
/// Campos privados para dia, mês e ano.
class Data {
  // Dia da data (1-31)
  late int _dia;
  
  // Mês da data (1-12)
  late int _mes;
  
  // Ano da data
  late int _ano;

  /// Construtor que cria a data com dia, mês e ano.
  /// Assume valores válidos
  Data(int dia, int mes, int ano) {
    _dia = dia;   // Coloca o dia
    _mes = mes;   // Coloca o mês
    _ano = ano;   // Coloca o ano
  }

  /// Pega o dia
  int getDia() {
    return _dia;
  }

  /// Pega o mês
  int getMes() {
    return _mes;
  }

  /// Pega o ano
  int getAno() {
    return _ano;
  }

  /// Mostra a data no formato DD/MM/AAAA
  void exibirData() {
    // Formata dia com 2 dígitos
    String diaStr = _dia.toString().padLeft(2, '0');
    // Formata mês com 2 dígitos
    String mesStr = _mes.toString().padLeft(2, '0');
    // Formata ano com 4 dígitos
    String anoStr = _ano.toString().padLeft(4, '0');
    
    // Imprime com barras
    print(diaStr + '/' + mesStr + '/' + anoStr);
  }
}
