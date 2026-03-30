/*
Crie uma classe Relogio com os seguintes atributos obrigatórios:
• int hora
• int minuto
• int segundo
Implemente um construtor que receba todos esses valores. Depois, crie um método exibirHorario() que mostre o horário no formato HH:MM:SS. No main(), instancie exatamente 3 relógios
diferentes e exiba o horário de cada um.
Restrições:
• hora deve estar entre 0 e 23
• minuto deve estar entre 0 e 59
• segundo deve estar entre 0 e 59 
*/

import 'relogio.dart';

void main(){
  // Instancia o primeiro relógio com 8 horas, 15 minutos e 45 segundos
  Relogio relogio = new Relogio(8, 15, 45);
  // Instancia o segundo relógio com 14 horas, 30 minutos e 0 segundos
  Relogio relogio2 = new Relogio(14, 30, 0);
  // Instancia o terceiro relógio com 0 horas, 0 minutos e 0 segundos
  Relogio relogio3 = new Relogio(0, 0, 0);

  // Exibe o horário do primeiro relógio
  relogio.exibirHorario();
  // Exibe o horário do segundo relógio
  relogio2.exibirHorario();
  // Exibe o horário do terceiro relógio
  relogio3.exibirHorario();
}