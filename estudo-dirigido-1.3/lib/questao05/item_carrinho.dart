import '../questao03/produto.dart';

/// Classe ItemCarrinho que associa produto e quantidade.
class ItemCarrinho {

  // Produto do item
  Produto _produto;

  // Quantidade do item
  int _quantidade;

  // Construtor com validacao
  ItemCarrinho(this._produto, this._quantidade) {
    if (_quantidade <= 0) {
      print('A quantidade deve ser maior que zero');
    }
  }

  // Getter produto
  Produto get produto => _produto;

  // Getter quantidade
  int get quantidade => _quantidade;

  // Calcula subtotal
  double calcularSubtotal() {
    return _produto.preco * _quantidade;
  }

  // Exibe dados do item
  exibirItem() {
    print("Produto: ${_produto.nome}");
    print("Preco unitario: R\$ ${_produto.preco.toStringAsFixed(2)}");
    print("Quantidade: $_quantidade");
    print("Subtotal: R\$ ${calcularSubtotal().toStringAsFixed(2)}");
    print("=======================================");
  }

}
