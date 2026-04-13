/// Classe simples de Usuario para perfil.
class Usuario {
  // Nome completo
  late String _nome;
  
  // Email
  late String _email;
  
  // Apelido (default nome)
  late String _apelido;

  /// Construtor com optional apelido
  Usuario(String nome, String email, [String? apelido]) {
    if (nome.isEmpty) {
      print('O nome não pode ser vazio');
    } else {
      _nome = nome;
    }
    if (email.isEmpty) {
      print('O email não pode ser vazio');
    } else {
      _email = email;
      _apelido = apelido ?? nome;
    }
  }

  /// Exibe perfil com concatenação
  void exibirPerfil() {
    print("Nome: " + _nome);
    print("Email: " + _email);
    print("Apelido: " + _apelido);
    print("=======================================");
  }

  // Getters
  String getNome() => _nome;
  
  String getEmail() => _email;
  
  String getApelido() => _apelido;
}
