import '../questao01/cliente.dart';
import '../questao05/item_carrinho.dart';
import '../questao06/lista_carrinho.dart';

/// Classe Carrinho vinculado a um cliente.
class Carrinho {

  // Cliente dono do carrinho
  Cliente _cliente;

  // Lista de itens
  ListaCarrinho _itens;

  // Se o carrinho esta aberto
  bool _aberto;

  // Construtor
  Carrinho(this._cliente, this._itens, this._aberto);

  // Getter cliente
  Cliente get cliente => _cliente;

  // Getter itens
  ListaCarrinho get itens => _itens;

  // Getter aberto
  bool get aberto => _aberto;

  // Adiciona item
  adicionarItem(ItemCarrinho item) {
    _itens.inserir(item);
  }

  // Remove item pelo indice
  removerItem(int i) {
    _itens.remover(i);
  }

  // Calcula total somando subtotais
  double calcularTotal() {
    double total = 0;
    for (int i = 0; i < _itens.tamanho(); i++) {
      var item = _itens.get(i);
      if (item != null) {
        total += item.calcularSubtotal();
      }
    }
    return total;
  }

  // Exibe dados do carrinho
  exibirCarrinho() {
    print("Cliente: ${_cliente.nome}");
    print("Status: ${_aberto ? 'Aberto' : 'Fechado'}");
    print("Itens:");
    _itens.exibirLista();
    print("Total: R\$ ${calcularTotal().toStringAsFixed(2)}");
    print("=======================================");
  }

}
