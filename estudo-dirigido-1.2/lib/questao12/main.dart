import 'contato.dart';
import 'agenda.dart';

void main() {

  Agenda agenda1 = Agenda.vazia();
  agenda1.adicionarContato(Contato('Ana', '1111-1111'));

  Agenda agenda2 = Agenda.comContatos([
    Contato('Lucia ', '2222-2222'),
    Contato('Jorge', '3333-3333'),
  ]);

  print('Agenda 1:');
  agenda1.listarContatos();

  print('Agenda 2:');
  agenda2.listarContatos();

}


// a) Qual e a diferenca pratica entre criar uma agenda vazia e criar uma agenda ja com contatos?
// Agenda.vazia() inicializa _contatos como uma lista vazia ([]). Nenhum contato existe
// ainda, e eles devem ser inseridos depois usando adicionarContato(). Ja Agenda.comContatos()
// recebe uma lista de Contato pronta e a atribui diretamente a _contatos, permitindo
// que a agenda ja comece populada desde sua criacao.

// b) Quando uma lista de objetos e passada para o construtor, os contatos sao recriados ou a agenda passa a usar as referencias recebidas?
// A agenda usa as mesmas referencias recebidas. O construtor Agenda.comContatos(this._contatos)
// armazena a propria lista passada, sem criar copias dos objetos Contato. Isso significa
// que se alguem alterar um Contato fora da agenda, a mudanca tambem sera visivel dentro
// dela, pois ambos compartilham as mesmas referencias na memoria.
