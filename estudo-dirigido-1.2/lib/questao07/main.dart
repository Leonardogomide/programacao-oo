import 'personagem.dart';

void main() {

  Personagem p1 = Personagem('Arthas', 100, 80);
  Personagem p2 = p1;

  print('Antes da alteracao:');
  p1.exibir();
  p2.exibir();

  p2.alterarVida(50);

  print('\nDepois da alteracao:');
  p1.exibir();
  p2.exibir();

}

// a) Por que, ao alterar a segunda variavel, a primeira tambem apresentou a alteracao?
// Quando fazemos p2 = p1, nao estamos criando um novo Personagem. Estamos apenas copiando
// a referencia, ou seja, p1 e p2 passam a apontar para o mesmo objeto na heap.
// Por isso, ao chamar p2.alterarVida(50), o objeto compartilhado e modificado,
// e essa mudanca e visivel tanto por p1 quanto por p2.

// b) Esse comportamento esta correto?
// Sim. Em Dart, variaveis de tipo objeto armazenam referencias, nao copias dos dados.
// A atribuicao p2 = p1 copia apenas o endereco de memoria, nao o conteudo do objeto.
// Esse e o comportamento padrao da linguagem para tipos por referencia.
