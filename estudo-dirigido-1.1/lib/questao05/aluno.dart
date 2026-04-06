/// Classe simples de Aluno para calcular notas e aprovação.
/// Campos privados para nome e notas.
class Aluno {
  // Nome do aluno
  late String _nome;
  
  // Primeira nota
  late double _nota1;
  
  // Segunda nota
  late double _nota2;

  /// Construtor que recebe nome, nota1 e nota2
  Aluno(String nome, double nota1, double nota2) {
    _nome = nome;    // Nome do aluno
    _nota1 = nota1;  // Primeira nota
    _nota2 = nota2;  // Segunda nota
  }

  /// Pega o nome do aluno
  String getNome() {
    return _nome;
  }

  /// Pega a primeira nota
  double getNota1() {
    return _nota1;
  }

  /// Pega a segunda nota
  double getNota2() {
    return _nota2;
  }

  /// Calcula a média das duas notas
  double calcularMedia() {
    // Soma as notas e divide por 2
    return (_nota1 + _nota2) / 2;
  }

  /// Verifica se aprovado (média >= 6)
  String verificarAprovacao() {
    // Se média maior ou igual 6, aprovado
    if (calcularMedia() >= 6) {
      return 'Aprovado';
    }
    // Senão reprovado
    return 'Reprovado';
  }

  /// Mostra o boletim completo
  void exibirBoletim() {
    print('////////');
    print('Nome: ' + _nome);
    print('Nota 1: ' + _nota1.toString());
    print('Nota 2: ' + _nota2.toString());
    print('Média: ' + calcularMedia().toString());
    print('Situação: ' + verificarAprovacao());
    print('////////');
  }
}
