class Produto {
  String? codigo;
  String? nome;
  double preco;
  double desconto;

  Produto({this.codigo, this.nome, required this.preco, this.desconto = 0});

  double get precoComDEsconto {
    return preco - ((preco * desconto) / 100);
  }
}
