class Motor {

  late int _potencia;
  late String _tipo;

  Motor(int potencia, String tipo) {
    setPotencia(potencia);
    setTipo(tipo);
  }

  void setPotencia(int potencia) {
    if (potencia <= 0){
      throw "Potência deve ser maior que 0";
    }
    this._potencia = potencia;
  }

  int getPotencia(){
    return this._potencia;
  }

  void setTipo(String tipo) {
    if (tipo.isEmpty){
      throw "Tipo não pode ser vazio";
    }
    this._tipo = tipo;
  }

  String getTipo(){
    return this._tipo;
  }

  void exibirMotor() {
    print("Motor: " + getTipo() + " - " + getPotencia().toString() + " cv");
  }

}

class Carro {

  late String _modelo;
  late Motor _motor;

  Carro(String modelo, Motor motor) {
    setModelo(modelo);
    setMotor(motor);
  }

  void setModelo(String modelo) {
    if (modelo.isEmpty){
      throw "Modelo não pode ser vazio";
    }
    this._modelo = modelo;
  }

  String getModelo(){
    return this._modelo;
  }

  void setMotor(Motor motor) {
    this._motor = motor;
  }

  Motor getMotor(){
    return this._motor;
  }

  void exibirCarro() {
    print("Modelo: " + getModelo());
    getMotor().exibirMotor();
    print("---");
  }

}
