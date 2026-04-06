/// Classe simples de Produto com desconto por quantidade.
/// Campos privados.
class Produto {
  // Código do produto
  late int _codigo;
  
  // Nome do produto
  late String _nome;
  
  // Preço por unidade
  late double _precoUnitario;
  
  // Quantidade comprada
  late int _quantidade;

  /// Construtor com todos os dados
  Produto(int codigo, String nome, double precoUnitario, int quantidade) {
    _codigo = codigo;
    _nome = nome;
    _precoUnitario = precoUnitario;
    _quantidade = quantidade;
  }

  /// Pega código
  int getCodigo() {
    return _codigo;
  }

  /// Pega nome
  String getNome() {
    return _nome;
  }

  /// Pega preço unitário
  double getPrecoUnitario() {
    return _precoUnitario;
  }

  /// Pega quantidade
  int getQuantidade() {
    return _quantidade;
  }

  /// Calcula desconto baseado na quantidade
  double calcularDesconto() {
    int q = _quantidade;
    // 20 ou mais: 15%
    if (q >= 20) {
      return _precoUnitario * q * 0.15;
    }
    // 10-19: 10%
    if (q >= 10) {
      return _precoUnitario * q * 0.10;
    }
    // 5-9: 5%
    if (q >= 5) {
      return _precoUnitario * q * 0.05;
    }
    // Menos: 0
    return 0.0;
  }

  /// Calcula total com desconto
  double calcularTotal() {
    // Preço total menos desconto
    return _precoUnitario * _quantidade - calcularDesconto();
  }

  /// Mostra resumo do produto
  void exibirResumo() {
    print('/////');
    print('Código: ' + _codigo.toString());
    print('Nome: ' + _nome);
    print('Preço unitário: R\$ ' + _precoUnitario.toStringAsFixed(2));
    print('Quantidade: ' + _quantidade.toString());
    print('Desconto: R\$ ' + calcularDesconto().toStringAsFixed(2));
    print('Total: R\$ ' + calcularTotal().toStringAsFixed(2));
    print('/////');
  }
}
