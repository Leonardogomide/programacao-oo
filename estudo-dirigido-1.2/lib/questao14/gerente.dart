import 'conta.dart';

class Gerente {
  String _nome;

  Gerente(this._nome) {
  }

  depositar(Conta conta, double valor) {
    print("Gerente $_nome depositando R\$ ${valor.toStringAsFixed(2)}");
    conta.depositar(valor);
  }

  sacar(Conta conta, double valor) {
    print("Gerente $_nome sacando R\$ ${valor.toStringAsFixed(2)}");
    conta.sacar(valor);
  }
}

