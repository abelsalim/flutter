import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:despesas_pessoais/models/tansaction.dart';
import 'package:despesas_pessoais/components/transaction_list.dart';
import 'package:despesas_pessoais/components/transaction_form.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({
    super.key,
  });

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
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
    Transaction(
      id: 't4',
      title: 'Internet',
      value: 84.99,
      date: DateTime(2023, 1, 01, 15, 58, 00),
    ),
    Transaction(
      id: 't5',
      title: 'Conta de Água',
      value: 59.99,
      date: DateTime(2023, 12, 12, 18, 35, 50),
    ),
    Transaction(
      id: 't6',
      title: 'Conta de luz',
      value: 287.47,
      date: DateTime(2023, 12, 24, 23, 40, 35),
    ),
    Transaction(
      id: 't7',
      title: 'Internet',
      value: 84.99,
      date: DateTime(2023, 1, 01, 15, 58, 00),
    ),
    Transaction(
      id: 't8',
      title: 'Conta de Água',
      value: 59.99,
      date: DateTime(2023, 12, 12, 18, 35, 50),
    ),
    Transaction(
      id: 't9',
      title: 'Conta de luz',
      value: 287.47,
      date: DateTime(2023, 12, 24, 23, 40, 35),
    )
  ];

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
    return Column(
      children: [
        TransactionForm(onSubmit: _addTransaction),
        TransactionList(transactions: _transactions),
      ],
    );
  }
}
