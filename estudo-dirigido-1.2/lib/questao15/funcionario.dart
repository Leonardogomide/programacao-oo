class Funcionario {
  String _nome;
  String _cargo;
  double _salario;

  Funcionario.estagiario(this._nome)
      : _cargo = 'Estagiario',
        _salario = 1000 {
  }

  Funcionario.pleno(this._nome, this._salario)
      : _cargo = 'Pleno' {
  }

  Funcionario.gerente({required String nome, double bonus = 1000})
      : _nome = nome,
        _cargo = 'Gerente',
        _salario = 5000 + bonus {
  }

  double calcularPagamentoMensal() {
    return _salario;
  }

  void exibirDados() {
    print("Nome: $_nome");
    print("Cargo: $_cargo");
    print("Salario: R\$ ${calcularPagamentoMensal().toStringAsFixed(2)}");
    print("=======================================");
  }
}

