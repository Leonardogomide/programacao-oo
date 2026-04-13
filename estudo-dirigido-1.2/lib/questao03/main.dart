import 'aluno.dart';

// Função principal para testar alunos (estilo 1.1 verboso, dados variados)
void main() {
  // Aluno1 aprovado
  Aluno aluno1 = Aluno(ra: "2023001", nome: "Pedro", notaFinal: 8.0);
  print('Boletim do aluno 1:');
  aluno1.exibirBoletim();
  print('');

  // Aluno2 reprovado
  Aluno aluno2 = Aluno(ra: "2023002", nome: "Carla", notaFinal: 4.5);
  print('Boletim do aluno 2:');
  aluno2.exibirBoletim();
  print('');

  // Aluno3 borderline
  Aluno aluno3 = Aluno(ra: "2023003", nome: "Fernando", notaFinal: 6.5);
  print('Boletim do aluno 3:');
  aluno3.exibirBoletim();
}

