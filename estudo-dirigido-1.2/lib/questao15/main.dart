import 'funcionario.dart';

void main() {

  Funcionario f1 = Funcionario.estagiario('Joao');
Funcionario f2 = Funcionario.pleno('Lara', 3200);
  Funcionario f3 = Funcionario.gerente(nome: 'Carlos', bonus: 1500);

  f1.exibirDados();
  f2.exibirDados();
  f3.exibirDados();

}

// a) Qual e a vantagem de usar construtores nomeados nesse caso?
// Tornam a criacao de objetos mais clara e autoexplicativa. Ao ler Funcionario.estagiario('Joao')
// ou Funcionario.gerente(nome: 'Carlos'), ja se entende qual perfil esta sendo criado,
// sem precisar analisar uma lista de parametros. Cada construtor encapsula os valores
// padrao adequados para aquele perfil, evitando erros de configuracao.

// b) O que muda no estado inicial de cada objeto conforme o construtor utilizado?
// O estagiario recebe cargo "Estagiario" e salario fixo de 1000. O pleno recebe cargo
// "Pleno" e o salario e definido pelo parametro passado. O gerente recebe cargo "Gerente"
// e salario de 5000 somado a um bonus (padrao 1000). Ou seja, cada construtor configura
// _cargo e _salario de forma diferente, resultando em objetos com estados iniciais distintos.

// c) Por que pode ser melhor definir o cargo ja no construtor em vez de usar metodos separados?
// Porque o construtor garante que o objeto ja nasce completo e consistente. Se o cargo
// fosse atribuido por um metodo apos a criacao, existiria um intervalo em que o Funcionario
// estaria sem cargo definido, o que poderia gerar comportamentos inesperados. Definir
// tudo no construtor elimina esse estado intermediario invalido.
