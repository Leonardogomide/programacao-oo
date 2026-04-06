import 'data.dart';

// Função principal para testar datas
void main() {
  // Primeira data: 05/10/2025
  Data data1 = Data(5, 10, 2025);
  print('Primeira data:');
  data1.exibirData();
  print('');

  // Segunda data: 12/12/1995
  Data data2 = Data(12, 12, 1995);
  print('Segunda data:');
  data2.exibirData();
  print('');

  // Terceira data: 28/02/2024
  Data data3 = Data(28, 2, 2024);
  print('Terceira data:');
  data3.exibirData();
}
