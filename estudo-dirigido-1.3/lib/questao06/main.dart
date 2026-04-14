import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import 'lista_carrinho.dart';

// Testa a ListaCarrinho
void main() {

  // Cria tres produtos
  Produto p1 = Produto("Monitor", 1200.00, 8, true);
  Produto p2 = Produto("Fone", 250.00, 40, true);
  Produto p3 = Produto("Webcam", 180.00, 25, true);

  // Cria tres itens
  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 3);
  ItemCarrinho item3 = ItemCarrinho(p3, 2);

  // Cria a lista e insere
  ListaCarrinho lista = ListaCarrinho();
  lista.inserir(item1);
  lista.inserir(item2);
  lista.inserir(item3);

  // Exibe lista completa
  print("Lista completa:");
  lista.exibirLista();

  // Remove o Fone (indice 1)
  lista.remover(1);
  print("Tamanho apos remocao: ${lista.tamanho()}");

  // Recupera o primeiro
  ItemCarrinho? recuperado = lista.get(0);
  if (recuperado != null) {
    print("Item recuperado:");
    recuperado.exibirItem();
  }

  // Exibe lista final
  print("Lista final:");
  lista.exibirLista();

}
