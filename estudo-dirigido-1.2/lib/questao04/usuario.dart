/// Classe simples de Usuario para perfil.
/// Campos privados, apelido optional. Dados alterados.
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
      throw ArgumentError('O nome não pode ser vazio');
    }
    if (email.isEmpty) {
      throw ArgumentError('O email não pode ser vazio');
    }
    _nome = nome;
    _email = email;
    _apelido = apelido ?? nome;
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

