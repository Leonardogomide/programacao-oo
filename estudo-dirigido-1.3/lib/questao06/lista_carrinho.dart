import '../questao05/item_carrinho.dart';

/// Classe que gerencia uma lista de itens do carrinho.
class ListaCarrinho {

  // Lista interna
  List<ItemCarrinho> _itens = [];

  // Insere item
  inserir(ItemCarrinho item) {
    _itens.add(item);
  }

  // Remove pelo indice
  remover(int i) {
    if (i >= 0 && i < _itens.length) {
      _itens.removeAt(i);
    } else {
      print("Indice invalido!");
    }
  }

  // Retorna tamanho
  int tamanho() {
    return _itens.length;
  }

  // Retorna item pelo indice
  ItemCarrinho? get(int i) {
    if (i >= 0 && i < _itens.length) {
      return _itens[i];
    }
    print("Indice invalido!");
    return null;
  }

  // Exibe todos os itens
  exibirLista() {
    for (var item in _itens) {
      item.exibirItem();
    }
  }

}
