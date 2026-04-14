import '../questao01/cliente.dart';

/// Classe que gerencia uma lista de clientes.
class ListaCliente {

  // Lista interna
  List<Cliente> _clientes = [];

  // Insere cliente
  inserir(Cliente cliente) {
    _clientes.add(cliente);
  }

  // Remove pelo indice
  remover(int i) {
    if (i >= 0 && i < _clientes.length) {
      _clientes.removeAt(i);
    } else {
      print("Indice invalido!");
    }
  }

  // Retorna tamanho
  int tamanho() {
    return _clientes.length;
  }

  // Retorna cliente pelo indice
  Cliente? get(int i) {
    if (i >= 0 && i < _clientes.length) {
      return _clientes[i];
    }
    print("Indice invalido!");
    return null;
  }

  // Exibe todos os clientes
  exibirLista() {
    for (var cliente in _clientes) {
      cliente.exibirCliente();
    }
  }

}
