import 'cupom_desconto.dart';

// Testa a classe CupomDesconto
void main() {

  // Cria cupom de 20%
  CupomDesconto cupom = CupomDesconto("PROMO20", 20.0, true);

  // Aplica desconto sobre 800
  double valor = 800.0;
  double desconto = cupom.calcularDesconto(valor);

  // Exibe resultados
  print("Valor original: R\$ ${valor.toStringAsFixed(2)}");
  print("Desconto: R\$ ${desconto.toStringAsFixed(2)}");
  print("Valor final: R\$ ${(valor - desconto).toStringAsFixed(2)}");
  print("");
  cupom.exibirCupom();

}
