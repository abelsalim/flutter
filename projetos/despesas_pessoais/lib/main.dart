import 'package:flutter/material.dart';
import 'package:despesas_pessoais/components/transaction_user.dart';

void main() => runApp(const ExpenseApp());

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
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
            TransactionUser(),
          ],
        ),
      ),
    );
  }
}
