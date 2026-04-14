import '../questao07/carrinho.dart';
import '../questao08/cupom_desconto.dart';

/// Classe Pedido com carrinho e cupom opcional.
class Pedido {

  // Numero do pedido
  String _numero;

  // Carrinho do pedido
  Carrinho _carrinho;

  // Cupom de desconto (pode ser nulo)
  CupomDesconto? _cupom;

  // Total sem desconto
  double _totalBruto;

  // Total com desconto
  double _totalFinal;

  // Status do pedido
  String _status;

  // Construtor
  Pedido(this._numero, this._carrinho, this._cupom)
      : _totalBruto = 0,
        _totalFinal = 0,
        _status = "aberto" {
    if (_numero.isEmpty) {
      print('O numero nao pode ser vazio');
    }
  }

  // Getter numero
  String get numero => _numero;

  // Getter carrinho
  Carrinho get carrinho => _carrinho;

  // Getter cupom
  CupomDesconto? get cupom => _cupom;

  // Getter total bruto
  double get totalBruto => _totalBruto;

  // Getter total final
  double get totalFinal => _totalFinal;

  // Getter status
  String get status => _status;

  // Fecha pedido calculando totais e aplicando cupom
  fecharPedido() {
    _totalBruto = _carrinho.calcularTotal();
    if (_cupom != null && _cupom!.ativo) {
      double desconto = _cupom!.calcularDesconto(_totalBruto);
      _totalFinal = _totalBruto - desconto;
    } else {
      _totalFinal = _totalBruto;
    }
    _status = "fechado";
  }

  // Cancela pedido
  cancelarPedido() {
    _status = "cancelado";
  }

  // Exibe resumo do pedido
  exibirResumoPedido() {
    print("Pedido: $_numero");
    print("Status: $_status");
    print("Cliente: ${_carrinho.cliente.nome}");
    print("Total Bruto: R\$ ${_totalBruto.toStringAsFixed(2)}");
    if (_cupom != null) {
      print("Cupom: ${_cupom!.codigo} (${_cupom!.percentual}%)");
    }
    print("Total Final: R\$ ${_totalFinal.toStringAsFixed(2)}");
    print("=======================================");
  }

}
