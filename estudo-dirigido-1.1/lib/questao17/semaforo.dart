class Semaforo {

  late String _corAtual;
  late int _tempoRestante;

  static const Map<String, int> _tempos = {
    'vermelho': 5,
    'verde': 4,
    'amarelo': 2,
  };

  static const Map<String, String> _emojis = {
    'vermelho': '🔴',
    'verde': '🟢',
    'amarelo': '🟡',
  };

  Semaforo(String corInicial) {
    _setCorInicial(corInicial);
    this._tempoRestante = _tempos[this._corAtual]!;
  }

  void _setCorInicial(String cor) {
    if (!_tempos.containsKey(cor)){
      throw "Cor inválida. Use: vermelho, verde ou amarelo";
    }
    this._corAtual = cor;
  }

  void trocarCor() {
    if (_corAtual == 'vermelho') {
      _corAtual = 'verde';
    } else if (_corAtual == 'verde') {
      _corAtual = 'amarelo';
    } else {
      _corAtual = 'vermelho';
    }
    this._tempoRestante = _tempos[_corAtual]!;
  }

  void reduzirTempo() {
    this._tempoRestante--;
    if (this._tempoRestante <= 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    print(_emojis[_corAtual]! + " " + _corAtual + " - tempo: " + _tempoRestante.toString());
  }

}
