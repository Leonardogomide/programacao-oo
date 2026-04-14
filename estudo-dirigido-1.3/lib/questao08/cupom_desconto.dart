/// Classe CupomDesconto com percentual.
class CupomDesconto {

  // Codigo do cupom
  String _codigo;

  // Percentual de desconto
  double _percentual;

  // Se o cupom esta ativo
  bool _ativo;

  // Construtor com validacao
  CupomDesconto(this._codigo, this._percentual, this._ativo) {
    if (_codigo.isEmpty) {
      print('O codigo nao pode ser vazio');
    }
    if (_percentual < 0 || _percentual > 100) {
      print('O percentual deve estar entre 0 e 100');
    }
  }

  // Getter codigo
  String get codigo => _codigo;

  // Getter percentual
  double get percentual => _percentual;

  // Getter ativo
  bool get ativo => _ativo;

  // Ativa o cupom
  ativar() {
    _ativo = true;
  }

  // Desativa o cupom
  desativar() {
    _ativo = false;
  }

  // Calcula desconto sobre um valor
  double calcularDesconto(double valor) {
    if (_ativo) {
      return valor * (_percentual / 100);
    }
    return 0;
  }

  // Exibe dados do cupom
  exibirCupom() {
    print("Codigo: $_codigo");
    print("Percentual: ${_percentual.toStringAsFixed(1)}%");
    print("Ativo: $_ativo");
    print("=======================================");
  }

}
