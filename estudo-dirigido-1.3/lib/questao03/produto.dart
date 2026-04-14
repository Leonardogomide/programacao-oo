/// Classe Produto com controle de estoque.
class Produto {

  // Nome do produto
  String _nome;

  // Preco do produto
  double _preco;

  // Estoque disponivel
  int _estoque;

  // Se o produto esta ativo
  bool _ativo;

  // Construtor com validacao
  Produto(this._nome, this._preco, this._estoque, this._ativo) {
    if (_nome.isEmpty) {
      print('O nome nao pode ser vazio');
    }
    if (_preco < 0) {
      print('O preco nao pode ser negativo');
    }
    if (_estoque < 0) {
      print('O estoque nao pode ser negativo');
    }
  }

  // Getter nome
  String get nome => _nome;

  // Getter preco
  double get preco => _preco;

  // Getter estoque
  int get estoque => _estoque;

  // Getter ativo
  bool get ativo => _ativo;

  // Ativa o produto
  ativar() {
    _ativo = true;
  }

  // Desativa o produto
  desativar() {
    _ativo = false;
  }

  // Repoe estoque
  reporEstoque(int quantidade) {
    if (quantidade > 0) {
      _estoque += quantidade;
    }
  }

  // Retira estoque
  retirarEstoque(int quantidade) {
    if (quantidade > _estoque) {
      print("Estoque insuficiente!");
      return;
    }
    _estoque -= quantidade;
  }

  // Exibe dados do produto
  exibirProduto() {
    print("Produto: $_nome");
    print("Preco: R\$ ${_preco.toStringAsFixed(2)}");
    print("Estoque: $_estoque unidades");
    print("Ativo: $_ativo");
    print("=======================================");
  }

}
