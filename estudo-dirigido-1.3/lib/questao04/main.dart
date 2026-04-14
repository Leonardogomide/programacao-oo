import '../questao03/produto.dart';
import 'lista_produto.dart';

// Testa a ListaProduto
void main() {

  // Cria tres produtos
  Produto p1 = Produto("Monitor", 1200.00, 8, true);
  Produto p2 = Produto("Fone", 250.00, 40, true);
  Produto p3 = Produto("Webcam", 180.00, 25, true);

  // Cria a lista e insere
  ListaProduto lista = ListaProduto();
  lista.inserir(p1);
  lista.inserir(p2);
  lista.inserir(p3);

  // Exibe lista completa
  print("Lista completa:");
  lista.exibirLista();

  // Remove Fone (indice 1)
  lista.remover(1);
  print("Tamanho apos remocao: ${lista.tamanho()}");

  // Recupera o primeiro
  Produto? recuperado = lista.get(0);
  if (recuperado != null) {
    print("Produto recuperado:");
    recuperado.exibirProduto();
  }

  // Exibe lista final
  print("Lista final:");
  lista.exibirLista();

}
