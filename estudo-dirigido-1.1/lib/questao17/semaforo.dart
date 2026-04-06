/// Classe Semaforo simples com ciclo de cores.
class Semaforo {
  String _corAtual = 'vermelho';
  int _tempoRestante = 5;

  static const Map<String, int> tempos = {
    'vermelho': 5,
    'verde': 4,
    'amarelo': 2,
  };

  static const Map<String, String> emojis = {
    'vermelho': '🔴',
    'verde': '🟢',
    'amarelo': '🟡',
  };

  Semaforo(String corInicial) {
    if (tempos.containsKey(corInicial)) {
      _corAtual = corInicial;
      _tempoRestante = tempos[corInicial]!;
    }
  }

  void trocarCor() {
    // Ciclo vermelho -> verde -> amarelo -> vermelho
    if (_corAtual == 'vermelho') {
      _corAtual = 'verde';
    } else if (_corAtual == 'verde') {
      _corAtual = 'amarelo';
    } else {
      _corAtual = 'vermelho';
    }
    _tempoRestante = tempos[_corAtual]!;
  }

  void reduzirTempo() {
    _tempoRestante--;
    if (_tempoRestante <= 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    print(emojis[_corAtual]! + ' ' + _corAtual + ' - tempo: ' + _tempoRestante.toString());
  }
}
