import 'package:flutter/material.dart';
import './models/tansaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(const ExpenseApp());

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Internet',
      value: 84.99,
      date: DateTime(2023, 1, 01, 15, 58, 00),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Água',
      value: 59.99,
      date: DateTime(2023, 12, 12, 18, 35, 50),
    ),
    Transaction(
      id: 't3',
      title: 'Conta de luz',
      value: 287.47,
      date: DateTime(2023, 12, 24, 23, 40, 35),
    )
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(252, 228, 236, 1),
        title: const Text(
          'Despesas Pessoais',
          style: TextStyle(
            fontSize: 17,
            color: Colors.black87,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                child: Card(
                  elevation: 5,
                  child: Text('Gráfico'),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _transactions
                .map((tr) => Card(
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
                                DateFormat('dd/MM/y - H:m:ss').format(tr.date),
                                style: const TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
