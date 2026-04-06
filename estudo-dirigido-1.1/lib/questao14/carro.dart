/// Classe Motor.
class Motor {
  late int _potencia;
  late String _tipo;

  Motor(int potencia, String tipo) {
    _potencia = potencia;
    _tipo = tipo;
  }

  int getPotencia() {
    return _potencia;
  }

  String getTipo() {
    return _tipo;
  }

  void exibirMotor() {
    print('Motor: ' + _tipo + ' - ' + _potencia.toString() + ' cv');
  }
}

/// Classe Carro com Motor.
class Carro {
  late String _modelo;
  late Motor _motor;

  Carro(String modelo, Motor motor) {
    _modelo = modelo;
    _motor = motor;
  }

  String getModelo() {
    return _modelo;
  }

  Motor getMotor() {
    return _motor;
  }

  void exibirCarro() {
    print('Modelo: ' + _modelo);
    _motor.exibirMotor();
    print('---');
  }
}
