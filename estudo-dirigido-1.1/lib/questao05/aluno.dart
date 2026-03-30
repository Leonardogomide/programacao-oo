class Aluno {

  late String _nome;
  late double _nota1;
  late double _nota2;

  Aluno(String nome, double nota1, double nota2) {
    setNome(nome);
    setNota1(nota1);
    setNota2(nota2);
  }

  void setNome(String nome) {
    if (nome.isEmpty){
      throw "Nome não pode ser vazio";
    }
    this._nome = nome;
  }

  String getNome() {
    return this._nome;
  }

  void setNota1(double nota) {
    if (nota < 0 || nota > 10){
      throw "Nota deve estar entre 0 e 10";
    }
    this._nota1 = nota;
  }

  double getNota1() {
    return this._nota1;
  }

  void setNota2(double nota) {
    if (nota < 0 || nota > 10){
      throw "Nota deve estar entre 0 e 10";
    }
    this._nota2 = nota;
  }

  double getNota2(){
    return this._nota2;
  }

  double calcularMedia(){
    return (this._nota1 + this._nota2) / 2;
  }

  String verificarAprovacao(){
    if(calcularMedia() >= 6){
      return "Aprovado";
    }
    return "Reprovado";
  }

  void exibirBoletim() {
    print("////////");
    print("Nome: " + getNome());
    print("Nota 1: " + getNota1().toString());
    print("Nota 2: " + getNota2().toString());
    print("Média: " + calcularMedia().toString());
    print("Situação: " + verificarAprovacao());
    print("////////");
  }

}
