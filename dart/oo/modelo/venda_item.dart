import './produto.dart';

class VendaItem {
  Produto produto;
  int quantidade;
  late double _preco;

  VendaItem({required this.produto, this.quantidade = 1});

  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }

  double get preco {
    _preco = produto.precoComDEsconto;
    return _preco;
  }
}
