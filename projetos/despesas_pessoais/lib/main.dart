import 'dart:math';
import 'package:flutter/material.dart';
import 'package:despesas_pessoais/models/tansaction.dart';
import 'package:despesas_pessoais/components/transaction_list.dart';
import 'package:despesas_pessoais/components/transaction_form.dart';

void main() => runApp(const ExpenseApp());

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    ),
  ];

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return TransactionForm(onSubmit: _addTransaction);
      },
    );
  }

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

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
        actions: [
          IconButton(
            onPressed: () => _openTransactionFormModal(context),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
            TransactionList(transactions: _transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.black87,
          backgroundColor: Colors.pink[50],
          child: const Icon(Icons.add_circle_outlined),
          onPressed: () => _openTransactionFormModal(context)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
