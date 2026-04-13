import 'produto.dart';

// Função principal para testar produtos (estilo 1.1 com múltiplos e dados variados)
void main() {
  // Primeiro produto: Teclado com estoque baixo (alterado)
  Produto produto1 = Produto('Teclado', 2500.00, 7);
  print('Primeiro produto:');
  produto1.exibirFicha();
  print('');

  // Testa venda e repo
  print('Venda 2 unidades:');
  produto1.vender(2);
  produto1.exibirFicha();
  print('');

  print('Repor 4 unidades:');
  produto1.repor(4);
  produto1.exibirFicha();
  print('');

  // Segundo produto para variar
  Produto produto2 = Produto('Mouse', 150.00, 15);
  print('Segundo produto:');
  produto2.exibirFicha();

  // Teste insuficiente
  print('Tentar vender demais:');
  produto2.vender(20);
}

