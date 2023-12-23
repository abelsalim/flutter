import './cliente.dart';
import './venda_item.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({required this.cliente, this.itens = const []});

  double get valorTotal {
    return itens
        .map((item) => item.preco * item.quantidade)
        .reduce((vr_total, vr_atual) => vr_total + vr_atual);
  }
}
