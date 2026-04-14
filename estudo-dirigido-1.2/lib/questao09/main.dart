import 'carro.dart';
import 'oficina.dart';

void main() {

  Carro carro = Carro('Fusca', 12000);
  Oficina oficina = Oficina();

  print('Antes da revisao:');
  carro.exibir();

  oficina.revisar(carro);

  print('Depois da revisao:');
  carro.exibir();

}

// a) Por que a quilometragem do carro foi alterada mesmo sem retornar um novo objeto?
// Porque o metodo revisar(Carro carro) recebe uma copia da referencia que aponta para
// o mesmo objeto Carro na heap. Ao executar carro.adicionarQuilometragem(50), o metodo
// modifica o estado interno do objeto original. Nao e necessario retornar nada, pois
// a alteracao ja acontece diretamente no objeto compartilhado entre o main e a Oficina.

// b) O parametro recebido pelo metodo revisar() representa um novo carro ou o mesmo objeto criado no main?
// O mesmo objeto. O parametro carro dentro de revisar() e apenas outra variavel que
// guarda o endereco de memoria do Carro criado no main. Nenhum novo objeto Carro
// e instanciado durante a chamada do metodo.
