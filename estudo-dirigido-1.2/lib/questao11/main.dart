import 'endereco.dart';
import 'cliente.dart';

void main() {

Cliente cliente1 = Cliente('Julia', Endereco('Rua B', 20, 'São Paulo'));
  Cliente cliente2 = Cliente.copia(cliente1);

  cliente2.endereco.alterarRua('Rua B');

  print('Cliente original:');
  cliente1.exibir();

  print('Cliente copiado:');
  cliente2.exibir();

}

// a) Por que a alteracao no endereco de um cliente nao modificou o endereco do outro?
// Porque o construtor Cliente.copia() instancia um novo objeto Endereco usando os valores
// (rua, numero, cidade) do endereco original. Assim, cliente1 e cliente2 possuem objetos
// Endereco distintos na memoria. Alterar a rua de um nao afeta o outro.

// b) O que foi feito nesse exercicio para evitar o compartilhamento da mesma referencia de Endereco?
// No construtor Cliente.copia(), em vez de simplesmente copiar a referencia _endereco = outro._endereco,
// foi criado um novo Endereco com new Endereco(outro._endereco.rua, outro._endereco.numero,
// outro._endereco.cidade). Essa tecnica e chamada de deep copy (copia profunda) e garante
// que cada cliente tenha seu proprio objeto Endereco independente.

// c) Qual e a diferenca entre copiar a referencia de um objeto e criar uma nova instancia com os mesmos dados?
// Ao copiar a referencia, ambas as variaveis apontam para o mesmo objeto na heap, e qualquer
// modificacao feita por uma e visivel pela outra. Ao criar uma nova instancia (deep copy),
// existe um segundo objeto independente na memoria com os mesmos valores iniciais, mas
// alteracoes em um nao afetam o outro, pois sao objetos separados.
