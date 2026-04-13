class Aluno {
  // RA do aluno
  late String _ra;
  
  // Nome do aluno
  late String _nome;
  
  // Nota final
  late double _notaFinal;

  /// Construtor named com validações (nota 0-10)
  Aluno({required String ra, required String nome, required double notaFinal}) {
    if (ra.isEmpty) {
      print('O RA não pode ser vazio');
    } else {
      _ra = ra;
    }
    if (nome.isEmpty) {
      print('O nome não pode ser vazio');
    } else {
      _nome = nome;
    }
    if (notaFinal < 0 || notaFinal > 10) {
      print('A nota deve estar entre 0 e 10');
    } else {
      _notaFinal = notaFinal;
    }
  }

  bool aprovado() {
    return _notaFinal >= 6.5;
  }

  /// Exibe boletim com concatenação 
  void exibirBoletim() {
    print("RA: " + _ra);
    print("Nome: " + _nome);
    print("Nota Final: " + _notaFinal.toString());
    print("Situação: " + (aprovado() ? 'Aprovado' : 'Reprovado'));
    print("=======================================");
  }

  // Getters
  String getRa() => _ra;
  
  String getNome() => _nome;
  
  double getNotaFinal() => _notaFinal;
}
