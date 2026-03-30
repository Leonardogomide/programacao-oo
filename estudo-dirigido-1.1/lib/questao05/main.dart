/*
Crie uma classe Aluno com os seguintes atributos obrigatórios:
• String nome
• double nota1
• double nota2
Implemente um construtor que receba todos esses valores. Crie os seguintes métodos:
• calcularMedia() → retorna a média das notas
• verificarAprovacao() → informa se o aluno foi aprovado ou reprovado
• exibirBoletim() → mostra nome, notas, média e situação
No main(), instancie exatamente 10 alunos diferentes e exiba o boletim de cada um.
Restrições:
• notas devem estar entre 0 e 10
• aluno é aprovado se média ≥ 6
• média deve ser calculada corretamente
*/

import 'aluno.dart';

void main() {
  Aluno aluno1 = new Aluno('Pedro', 7.5, 8.5);
  Aluno aluno2 = new Aluno('Sofia', 6.0, 7.0);
  Aluno aluno3 = new Aluno('Lucas', 4.0, 5.0);
  Aluno aluno4 = new Aluno('Mariana', 8.0, 9.0);
  Aluno aluno5 = new Aluno('Rafael', 5.5, 6.5);
  Aluno aluno6 = new Aluno('Camila', 3.0, 4.0);
  Aluno aluno7 = new Aluno('Bruno', 9.0, 10.0);
  Aluno aluno8 = new Aluno('Laura', 7.0, 8.0);
  Aluno aluno9 = new Aluno('Felipe', 6.5, 7.5);
  Aluno aluno10 = new Aluno('Valentina', 2.0, 3.0);

  aluno1.exibirBoletim();
  aluno2.exibirBoletim();
  aluno3.exibirBoletim();
  aluno4.exibirBoletim();
  aluno5.exibirBoletim();
  aluno6.exibirBoletim();
  aluno7.exibirBoletim();
  aluno8.exibirBoletim();
  aluno9.exibirBoletim();
  aluno10.exibirBoletim();
}
