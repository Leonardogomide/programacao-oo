import 'retangulo.dart';

// Função principal testes retângulos (estilo 1.1, dados variados)
void main() {
  // Retângulo padrão
  Retangulo ret1 = Retangulo(6.0, 4.0);
  print('Retângulo 1:');
  ret1.exibirDados();
  print('');

  // Unitário
  Retangulo ret2 = Retangulo.unitario();
  print('Retângulo unitário:');
  ret2.exibirDados();
  print('');

  // Quadrado alterado lado 5
  Retangulo ret3 = Retangulo.quadrado(5.0);
  print('Quadrado lado 5:');
  ret3.exibirDados();
}

