import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double) onSubmit;

  const TransactionForm({
    required this.onSubmit,
    super.key,
  });

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final titleController = TextEditingController();

  final valueController = TextEditingController();

  _submitForm() {
    final title = titleController.text;
    // Tente converter para double, senão, sete como 0
    final value = double.tryParse(valueController.text) ?? 0.0;

    if (title.isEmpty || value <= 0) {
      return;
    }

    widget.onSubmit(title, value);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            TextField(
              controller: titleController,
              // onSubmitted serve para confirma a transação com o 'OK' do
              // teclado, mas ela necessita de um Function que retorne uma
              // String, portanto podemos criar uma função vazia repassando
              // apenas o underscore como um valor vazio|nulo|semvalor.
              // Nota: mesmo sendo um voidFunction, os () tem que ser repassados
              // no arrow - diferente de que acontece no onPressed
              onSubmitted: (_) => _submitForm(),
              decoration: const InputDecoration(
                labelText: 'Descrição da despesa',
              ),
            ),
            TextField(
              controller: valueController,
              keyboardType:
                  // o 'decimal: true' remete a usabilidade do app em IOS
                  const TextInputType.numberWithOptions(decimal: true),
              // onSubmitted serve para confirma a transação com o 'OK' do
              // teclado, mas ela necessita de um Function que retorne uma
              // String, portanto podemos criar uma função vazia repassando
              // apenas o underscore como um valor vazio|nulo|semvalor.
              // Nota: mesmo sendo um voidFunction, os () tem que ser repassados
              // no arrow - diferente de que acontece no onPressed
              onSubmitted: (_) => _submitForm(),
              decoration: const InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(191, 77, 115, 1),
                    ),
                  ),
                  onPressed: _submitForm,
                  child: const Text('Nova Transação'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
