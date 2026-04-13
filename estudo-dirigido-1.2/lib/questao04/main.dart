import 'usuario.dart';

// Função principal
void main() {
  // Usuário com apelido
  Usuario usuario1 = Usuario("Sofia", "sofia@email.com", "Sofi");
  print('Perfil usuário 1:');
  usuario1.exibirPerfil();
  print('');

  // Usuário sem apelido
  Usuario usuario2 = Usuario("Rafael", "rafael@email.com");
  print('Perfil usuário 2:');
  usuario2.exibirPerfil();
}

