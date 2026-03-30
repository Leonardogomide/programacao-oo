class Produto {

  late int _codigo;
  late String _nome;
  late double _precoUnitario;
  late int _quantidade;

  Produto(int codigo, String nome, double precoUnitario, int quantidade) {
    setCodigo(codigo);
    setNome(nome);
    setPrecoUnitario(precoUnitario);
    setQuantidade(quantidade);
  }

  void setCodigo(int codigo) {
    if (codigo <= 0){
      throw "Código deve ser maior que 0";
    }
    this._codigo = codigo;
  }

  int getCodigo() {
    return this._codigo;
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

  void setPrecoUnitario(double preco) {
    if (preco <= 0){
      throw "Preço deve ser maior que 0";
    }
    this._precoUnitario = preco;
  }

  double getPrecoUnitario() {
    return this._precoUnitario;
  }

  void setQuantidade(int quantidade) {
    if (quantidade <= 0){
      throw "Quantidade deve ser maior que 0";
    }
    this._quantidade = quantidade;
  }

  int getQuantidade() {
    return this._quantidade;
  }

  double calcularDesconto() {
    int q = getQuantidade();
    if (q >= 20){
      return getPrecoUnitario() * getQuantidade() * 0.15;
    }
    if (q >= 10){
      return getPrecoUnitario() * getQuantidade() * 0.10;
    }
    if (q >= 5){
      return getPrecoUnitario() * getQuantidade() * 0.05;
    }
    return 0;
  }

  double calcularTotal() {
    return getPrecoUnitario() * getQuantidade() - calcularDesconto();
  }

  void exibirResumo() {
    print("/////");
    print("Código: " + getCodigo().toString());
    print("Nome: " + getNome());
    print("Preço unitário: R\$ " + getPrecoUnitario().toStringAsFixed(2));
    print("Quantidade: " + getQuantidade().toString());
    print("Desconto: R\$ " + calcularDesconto().toStringAsFixed(2));
    print("Total: R\$ " + calcularTotal().toStringAsFixed(2));
    print("/////");
  }

}
