/// Classe simples de Contador.
/// Campo privado para o valor atual.
class Contador {
  // Valor atual do contador
  late int _valor;

  /// Construtor com valor inicial (assume >= 0)
  Contador(int valorInicial) {
    _valor = valorInicial; // Define o valor inicial
  }

  /// Aumenta o valor em 1
  void incrementar() {
    _valor = _valor + 1; // Soma 1 ao valor
  }

  /// Diminui o valor em 1 (não vai abaixo de 0)
  void decrementar() {
    // Só diminui se maior que 0
    if (_valor > 0) {
      _valor = _valor - 1;
    }
  }

  /// Zera o contador
  void zerar() {
    _valor = 0; // Coloca zero
  }

  /// Mostra o valor atual
  void exibirValor() {
    print('Valor: ' + _valor.toString()); // Imprime o valor
  }
}
