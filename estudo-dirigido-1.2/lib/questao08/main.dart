import 'televisao.dart';
import 'controle_remoto.dart';

void main() {

  Televisao tv = Televisao(5, 20);
  ControleRemoto controle = ControleRemoto(tv);

  print('Estado inicial:');
  tv.exibir();

  controle.aumentarVolume();
  controle.proximoCanal();

  print('Depois de usar o controle:');
  tv.exibir();

}


// a) Por que o controle remoto consegue alterar diretamente o estado da televisao?
// O construtor de ControleRemoto recebe um objeto Televisao e armazena essa referencia
// no atributo _tv. Como em Dart objetos sao passados por referencia, o _tv do controle
// aponta para a mesma Televisao criada no main. Quando o controle chama _tv.aumentarVolume()
// ou _tv.proximoCanal(), ele esta modificando diretamente o estado desse unico objeto.

// b) O controle remoto possui uma copia da televisao ou uma referencia para o mesmo objeto?
// Uma referencia para o mesmo objeto. Nao existe duplicacao da Televisao em nenhum momento.
// A prova disso e que, apos usar o controle, o print de tv.exibir() no main ja mostra
// os valores atualizados de volume e canal, confirmando que ambos acessam o mesmo objeto.

