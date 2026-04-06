import '../questao06/produto.dart';

/// Classe Pedido usando Produto da q6.
class Pedido {
  late int _numero;
  late Produto _produto;
  late int _quantidade;

  Pedido(int numero, Produto produto, int quantidade) {
    _numero = numero;
    _produto = produto;
    _quantidade = quantidade;
  }

  int getNumero() {
    return _numero;
  }

  Produto getProduto() {
    return _produto;
  }

  int getQuantidade() {
    return _quantidade;
  }

  double calcularTotal() {
    return _produto.getPrecoUnitario() * _quantidade;
  }

  void exibirPedido() {
    print('Pedido nº: ' + _numero.toString());
    print('Produto: ' + _produto.getNome());
    print('Preço unitário: R\$ ' + _produto.getPrecoUnitario().toStringAsFixed(2));
    print('Quantidade: ' + _quantidade.toString());
    print('Total: R\$ ' + calcularTotal().toStringAsFixed(2));
    print('---');
  }
}
