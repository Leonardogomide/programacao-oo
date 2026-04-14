import '../questao01/cliente.dart';
import '../questao02/lista_cliente.dart';
import '../questao03/produto.dart';
import '../questao04/lista_produto.dart';
import '../questao09/pedido.dart';

/// Classe Loja que reune clientes, produtos e pedidos.
class Loja {

  // Nome da loja
  String _nome;

  // Lista de clientes
  ListaCliente _clientes;

  // Lista de produtos
  ListaProduto _produtos;

  // Lista de pedidos
  List<Pedido> _pedidos;

  // Construtor
  Loja(this._nome, this._clientes, this._produtos)
      : _pedidos = [] {
    if (_nome.isEmpty) {
      print('O nome nao pode ser vazio');
    }
  }

  // Getter nome
  String get nome => _nome;

  // Getter clientes
  ListaCliente get clientes => _clientes;

  // Getter produtos
  ListaProduto get produtos => _produtos;

  // Getter pedidos
  List<Pedido> get pedidos => _pedidos;

  // Cadastra cliente
  cadastrarCliente(Cliente cliente) {
    _clientes.inserir(cliente);
  }

  // Cadastra produto
  cadastrarProduto(Produto produto) {
    _produtos.inserir(produto);
  }

  // Registra pedido
  registrarPedido(Pedido pedido) {
    _pedidos.add(pedido);
  }

  // Exibe resumo geral da loja
  exibirResumoLoja() {
    print("Loja: $_nome");
    print("=======================================");
    print("Clientes cadastrados: ${_clientes.tamanho()}");
    _clientes.exibirLista();
    print("Produtos cadastrados: ${_produtos.tamanho()}");
    _produtos.exibirLista();
    print("Pedidos registrados: ${_pedidos.length}");
    for (var pedido in _pedidos) {
      pedido.exibirResumoPedido();
    }
  }

}
