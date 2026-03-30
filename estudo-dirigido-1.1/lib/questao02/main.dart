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
  Relogio relogio = new Relogio(8,15,45);
  Relogio relogio2 = new Relogio(14,30,0);
  Relogio relogio3 = new Relogio(0,0,0);

  relogio.exibirHorario();
  relogio2.exibirHorario();
  relogio3.exibirHorario();
}