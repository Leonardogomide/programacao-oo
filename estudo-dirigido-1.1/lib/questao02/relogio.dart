class Relogio{

  late int _hora;
  late int _minuto;
  late int _segundo;

  Relogio(int hora, int minuto, int segundo){
    this.setHora(hora);
    this.setMinuto(minuto);
    this.setSegundo(segundo);
  }

  void setHora(int hora){
    validaHora(hora);
    this._hora = hora;
  }

  int getHora(){
    return this._hora;
  }

  void setMinuto(int minuto){
    validaRangeHorario(minuto);
    this._minuto = minuto;
  }

  int getMinuto(){
    return this._minuto;
  }

  void setSegundo(int segundo){
    validaRangeHorario(segundo);
    this._segundo = segundo;
  }

  int getSegundo(){
    return this._segundo;
  }

  void validaRangeHorario(int horario){
    if(horario > 0 && horario > 59){
      throw "Horário inválido, permitidos valores apenas de 0 a 59";
    }
  }

  void validaHora(int horario){
    if(horario > 0 && horario > 23){
      throw "Horário inválido, permitidos valores apenas de 0 a 23";
    }
  }

  void exibirHorario() {
    print(
      this.getHora().toString().padLeft(2, '0') + ':' +
      this.getMinuto().toString().padLeft(2, '0') + ':' +
      this.getSegundo().toString().padLeft(2, '0')
    );
}

}