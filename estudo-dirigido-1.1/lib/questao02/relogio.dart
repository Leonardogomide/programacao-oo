/// Classe simples de Relogio para mostrar horário.
/// Campos privados para hora, minuto e segundo.
class Relogio {
  // Hora do relógio (0-23)
  late int _hora;
  
  // Minuto do relógio (0-59)
  late int _minuto;
  
  // Segundo do relógio (0-59)
  late int _segundo;

  /// Construtor que cria o relógio com hora, minuto e segundo.
  /// Assume valores válidos (junior style)
  Relogio(int hora, int minuto, int segundo) {
    _hora = hora;     // Coloca a hora
    _minuto = minuto; // Coloca o minuto
    _segundo = segundo; // Coloca o segundo
  }

  /// Pega a hora atual
  int getHora() {
    return _hora; // Retorna a hora privada
  }

  /// Pega o minuto atual
  int getMinuto() {
    return _minuto; // Retorna o minuto privado
  }

  /// Pega o segundo atual
  int getSegundo() {
    return _segundo; // Retorna o segundo privado
  }

  /// Mostra o horário no formato HH:MM:SS
  void exibirHorario() {
    // Pega hora e adiciona zero à esquerda se preciso
    String horaStr = _hora.toString().padLeft(2, '0');
    // Pega minuto e adiciona zero à esquerda se preciso
    String minutoStr = _minuto.toString().padLeft(2, '0');
    // Pega segundo e adiciona zero à esquerda se preciso
    String segundoStr = _segundo.toString().padLeft(2, '0');
    
    // Imprime tudo junto com :
    print(horaStr + ':' + minutoStr + ':' + segundoStr);
  }
}
