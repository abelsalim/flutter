import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:despesas_pessoais/models/tansaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList({
    required this.transactions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      // ListView.builder é utilizado para fins de otimização
      child: ListView.builder(
        // Destaca o preenchimento
        padding: const EdgeInsets.all(15),
        // Destaque o preenchimento total da lista
        itemCount: transactions.length,
        // Cria o widget
        itemBuilder: (ctx, index) {
          final tr = transactions.elementAt(index);
          return Card(
            elevation: 5,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(191, 77, 115, 1),
                      width: 2,
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'R\$ ${tr.value.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(191, 77, 115, 1),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tr.title.toString(),
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Text(
                      DateFormat('dd/MM/y - H:m').format(tr.date),
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
