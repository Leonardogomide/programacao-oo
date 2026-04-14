import '../questao03/produto.dart';

/// Classe que gerencia uma lista de produtos.
class ListaProduto {

  // Lista interna
  List<Produto> _produtos = [];

  // Insere produto
  inserir(Produto produto) {
    _produtos.add(produto);
  }

  // Remove pelo indice
  remover(int i) {
    if (i >= 0 && i < _produtos.length) {
      _produtos.removeAt(i);
    } else {
      print("Indice invalido!");
    }
  }

  // Retorna tamanho
  int tamanho() {
    return _produtos.length;
  }

  // Retorna produto pelo indice
  Produto? get(int i) {
    if (i >= 0 && i < _produtos.length) {
      return _produtos[i];
    }
    print("Indice invalido!");
    return null;
  }

  // Exibe todos os produtos
  exibirLista() {
    for (var produto in _produtos) {
      produto.exibirProduto();
    }
  }

}
