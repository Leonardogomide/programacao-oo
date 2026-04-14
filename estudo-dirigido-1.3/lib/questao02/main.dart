import '../questao01/cliente.dart';
import 'lista_cliente.dart';

// Testa a ListaCliente
void main() {

  // Cria tres clientes
  Cliente c1 = Cliente("Rafael", "rafael@mail.com", 150.0, true);
  Cliente c2 = Cliente("Camila", "camila@mail.com", 80.0, true);
  Cliente c3 = Cliente("Pedro", "pedro@mail.com", 250.0, false);

  // Cria a lista e insere
  ListaCliente lista = ListaCliente();
  lista.inserir(c1);
  lista.inserir(c2);
  lista.inserir(c3);

  // Exibe lista completa
  print("Lista completa:");
  lista.exibirLista();

  // Remove Camila (indice 1)
  lista.remover(1);
  print("Tamanho apos remocao: ${lista.tamanho()}");

  // Recupera o primeiro
  Cliente? recuperado = lista.get(0);
  if (recuperado != null) {
    print("Cliente recuperado:");
    recuperado.exibirCliente();
  }

  // Exibe lista final
  print("Lista final:");
  lista.exibirLista();

}
