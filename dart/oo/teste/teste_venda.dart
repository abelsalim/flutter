import '../modelo/produto.dart';
import '../modelo/cliente.dart';
import '../modelo/venda.dart';
import '../modelo/venda_item.dart';

void main() {
  Venda venda1 = Venda(
      cliente: Cliente(nome: 'Abel salim', cpf: '000.111.222-33'),
      itens: <VendaItem>[
        VendaItem(
          quantidade: 2,
          produto: Produto(
            codigo: '000001',
            nome: 'laterninha LG',
            preco: 100,
          ),
        ),
        VendaItem(
          quantidade: 3,
          produto: Produto(
              codigo: '000002',
              nome: 'Mousepad One Piece',
              preco: 20,
              desconto: 10),
        ),
      ]);

  print(venda1.valorTotal);
  print(venda1.itens[0].produto.nome);
  print(venda1.itens[0].produto.codigo);

  // Exemplo quebrando o método

  print(''.padRight(35, '-'));

  var item1 = VendaItem(
    quantidade: 8,
    produto: Produto(
        codigo: '000001', nome: 'laterninha LG', preco: 100, desconto: 50),
  );

  var item2 = VendaItem(
      quantidade: 4,
      produto: Produto(
        codigo: '000002',
        nome: 'Mousepad One Piece',
        preco: 20,
        desconto: 17,
      ));

  Venda venda2 = Venda(
      cliente: Cliente(
        nome: 'Abel salim',
        cpf: '000.111.222-33',
      ),
      itens: <VendaItem>[
        item1,
        item2,
      ]);

  print(venda2.valorTotal);
  print(venda2.itens[0].produto.nome);
  print(venda2.itens[0].produto.codigo);
}
