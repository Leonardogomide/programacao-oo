import '../questao06/produto.dart';

class Pedido {

  late int _numero;
  late Produto _produto;
  late int _quantidade;

  Pedido(int numero, Produto produto, int quantidade) {
    setNumero(numero);
    setProduto(produto);
    setQuantidade(quantidade);
  }

  void setNumero(int numero) {
    if (numero <= 0){
      throw "Número deve ser maior que 0";
    }
    this._numero = numero;
  }

  int getNumero(){
    return this._numero;
  }

  void setProduto(Produto produto) {
    this._produto = produto;
  }

  Produto getProduto(){
    return this._produto;
  }

  void setQuantidade(int quantidade) {
    if (quantidade <= 0){
      throw "Quantidade deve ser maior que 0";
    }
    this._quantidade = quantidade;
  }

  int getQuantidade(){
    return this._quantidade;
  }

  double calcularTotal(){
    return getProduto().getPrecoUnitario() * getQuantidade();
  }

  void exibirPedido() {
    print("Pedido nº: " + getNumero().toString());
    print("Produto: " + getProduto().getNome());
    print("Preço unitário: R\$ " + getProduto().getPrecoUnitario().toStringAsFixed(2));
    print("Quantidade: " + getQuantidade().toString());
    print("Total: R\$ " + calcularTotal().toStringAsFixed(2));
    print("---");
  }

}
