import 'caixa.dart';

alterarValor(Caixa c) {
  c.setValor(99);
}

trocarCaixa(Caixa c) {
  c = Caixa(999);
  c.exibir();
}

void main() {

  Caixa caixa = Caixa(10);

  print('Estado inicial:');
  caixa.exibir();

  alterarValor(caixa);
  print('Depois de alterarValor:');
  caixa.exibir();

  trocarCaixa(caixa);
  print('Depois de trocarCaixa:');
  caixa.exibir();

}


// a) Por que alterarValor() modifica o objeto original?
// Porque o parametro c recebe o mesmo endereco de memoria do objeto caixa do main.
// Quando chamamos c.setValor(99), estamos acessando o objeto original atraves dessa
// referencia e alterando seu atributo _valor. A modificacao persiste apos o metodo
// terminar, pois foi feita diretamente no objeto da heap.

// b) Por que trocarCaixa() nao substitui a caixa criada no main?
// Porque c = Caixa(999) cria um novo objeto na heap e faz a variavel local c apontar
// para ele. Porem, a variavel caixa no main continua apontando para o objeto original
// com valor 99. A reatribuicao de c so tem efeito dentro do escopo da funcao, pois
// Dart passa uma copia da referencia, nao a referencia original em si.

// c) O que esse resultado mostra sobre a diferenca entre alterar um objeto e reatribuir uma variavel de referencia?
// Alterar o estado de um objeto atraves de metodos (como setValor) afeta o objeto real
// na heap, e todas as referencias que apontam para ele enxergam a mudanca. Ja reatribuir
// a variavel (c = novoObjeto) apenas muda para onde aquela variavel local aponta, sem
// impactar nenhuma outra variavel que referencia o objeto anterior.
