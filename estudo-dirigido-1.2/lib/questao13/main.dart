import 'carteira.dart';
import 'pessoa.dart';

void main() {

  Pessoa? p1 = Pessoa('Lucas', Carteira(100));
  Pessoa? p2 = p1;

  print('Estado inicial:');
  p1.exibir();
  p2.exibir();

  p2.carteira.adicionar(50);

  print('\nDepois de alterar a carteira por p2:');
  p1.exibir();
  p2.exibir();

  p1 = null;
  print('\nDepois de p1 = null:');
  print('p1: $p1');
  p2.exibir();

  p2 = null;
  print('\nDepois de p2 = null:');
  print('p2: $p2');

}


// a) Por que a alteracao feita na carteira por p2 tambem apareceu quando o objeto foi acessado por p1?
// Porque p2 = p1 copia apenas a referencia, fazendo ambas as variaveis apontarem para
// o mesmo objeto Pessoa na heap. Esse objeto contem uma unica Carteira. Ao chamar
// p2.carteira.adicionar(50), estamos acessando essa mesma Carteira compartilhada,
// entao o saldo atualizado aparece tanto via p1 quanto via p2.

// b) Em termos conceituais, as variaveis p1 e p2 armazenam o objeto inteiro ou uma referencia para ele?
// Apenas uma referencia (um ponteiro). O objeto Pessoa com seus atributos (_nome e _carteira)
// fica armazenado na heap. As variaveis p1 e p2 na stack guardam somente o endereco
// de memoria que aponta para esse objeto.

// c) Onde ficam as variaveis locais e onde ficam os objetos criados dinamicamente?
// Variaveis locais (como p1 e p2) ficam na stack, que e uma area de memoria rapida
// e com escopo definido pela funcao. Ja os objetos criados com construtores (Pessoa, Carteira)
// ficam na heap, uma area de memoria dinamica gerenciada pelo runtime do Dart.

// d) Em que momento os objetos Pessoa e Carteira passam a ficar elegiveis para o garbage collector?
// Somente quando nao existir mais nenhuma referencia ativa apontando para eles. Ao fazer
// p1 = null, o objeto Pessoa ainda sobrevive porque p2 ainda aponta para ele. Quando
// p2 = null, nenhuma variavel mais referencia o objeto Pessoa (nem a Carteira contida nele),
// e ambos se tornam elegiveis para coleta pelo garbage collector.
