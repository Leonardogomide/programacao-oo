class Produto {
  // Nome privado
  late String _nome;
  
  // Preco privado
  late double _preco;
  
  // Estoque privado
  late int _estoque;

  // Construtor
  Produto(String nome, double preco, int estoque) {
    _nome = nome;
    _preco = preco;
    _estoque = estoque;
  }

  // Repor
  void repor(int qtd) {
    _estoque = _estoque + qtd;
  }

  // Vender
  void vender(int qtd) {
    if (qtd > _estoque) {
      print('Estoque insuficiente!');
      return;
    }
    _estoque = _estoque - qtd;
  }

  // Exibir
  void exibirFicha() {
    print("Produto: $_nome");
    print("Preço: R\$ ${_preco.toStringAsFixed(2)}");
    print("Estoque: $_estoque unidades");
    print("=======================================");
  }
}

