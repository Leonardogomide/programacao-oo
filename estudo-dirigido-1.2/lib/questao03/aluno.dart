/// Classe simples de Aluno para calcular aprovação.
/// Campos privados late. Limite aprovação alterado para 6.5 (hardcode change).
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
      throw ArgumentError('O RA não pode ser vazio');
    }
    if (nome.isEmpty) {
      throw ArgumentError('O nome não pode ser vazio');
    }
    if (notaFinal < 0 || notaFinal > 10) {
      throw ArgumentError('A nota deve estar entre 0 e 10');
    }
    _ra = ra;
    _nome = nome;
    _notaFinal = notaFinal;
  }

  /// Verifica aprovação (média >=6.5 alterado)
  bool aprovado() {
    return _notaFinal >= 6.5;
  }

  /// Exibe boletim com concatenação e estilo 1.1
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

