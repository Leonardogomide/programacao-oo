/*
Crie uma classe Data com os seguintes atributos obrigatórios:
• int dia
• int mes
• int ano
Implemente um construtor que receba todos esses valores. Depois, crie um método exibirData() que mostre a data no formato DD/MM/AAAA. No main(), instancie exatamente 3 datas diferentes e exiba cada uma.
Restrições:
• dia deve estar entre 1 e 31
• mes deve estar entre 1 e 12
• ano deve ser maior que 0
*/

import 'data.dart';

void main() {
  Data data1 = new Data(5, 10, 2025);
  Data data2 = new Data(12, 12, 1995);
  Data data3 = new Data(28, 2, 2024);

  data1.exibirData();
  data2.exibirData();
  data3.exibirData();
}
