/// Classe simples de Lampada que simula ligar/desligar até queimar.
/// Campos privados para estado.
class Lampada {
  // Se a lâmpada está ligada ou não
  bool _ligada = false;
  
  // Quantas vezes ligou
  int _quantidadeLigacoes = 0;
  
  // Se a lâmpada queimou
  bool _queimada = false;

  /// Construtor padrão: começa desligada, 0 ligações, não queimada
  Lampada() {
    // Já inicializado nos campos
  }

  /// Tenta ligar a lâmpada
  void ligar() {
    // Se já queimou, não liga
    if (_queimada) {
      print('Lâmpada queimada, não pode ligar.');
      return; // Sai da função
    }
    
    // Se ligou 5 vezes ou mais, queima
    if (_quantidadeLigacoes >= 5) {
      _queimada = true;
      _ligada = false;
      print('Lâmpada queimou!');
      return; // Sai da função
    }
    
    // Liga normal e conta +1
    _ligada = true;
    _quantidadeLigacoes = _quantidadeLigacoes + 1;
  }

  /// Desliga a lâmpada (se não queimou)
  void desligar() {
    _ligada = false;
  }

  /// Mostra o estado atual da lâmpada
  void exibirEstado() {
    // Se queimada
    if (_queimada) {
      print('Estado: queimada (ligações: ' + _quantidadeLigacoes.toString() + ')');
    } 
    // Senão se ligada
    else if (_ligada) {
      print('Estado: ligada (ligações: ' + _quantidadeLigacoes.toString() + ')');
    } 
    // Senão desligada
    else {
      print('Estado: desligada (ligações: ' + _quantidadeLigacoes.toString() + ')');
    }
  }
}
