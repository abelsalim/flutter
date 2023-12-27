import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String? texto;
  final VoidCallback? onSelection;

  const Resposta({
    this.texto,
    this.onSelection,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black87),
          backgroundColor: MaterialStateProperty.all(Colors.pink[100]),
        ),
        onPressed: onSelection,
        child: Text(texto!),
      ),
    );
  }
}
