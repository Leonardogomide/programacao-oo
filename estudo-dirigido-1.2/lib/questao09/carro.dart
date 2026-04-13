class Carro {

  String _modelo;
  int _quilometragem;

  Carro(this._modelo, this._quilometragem) {
    if (_modelo.isEmpty) {
      print('O modelo nao pode ser vazio');
    }
    if (_quilometragem < 0) {
      print('A quilometragem nao pode ser negativa');
    }
  }

  adicionarQuilometragem(int km) {
    _quilometragem += km;
  }

  exibir() {
    print("Modelo: $_modelo | Km: $_quilometragem");
    print("=======================================");
  }

}
