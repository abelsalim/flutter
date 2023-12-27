import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final VoidCallback reiniciarQuestionario;

  const Resultado({
    required this.pontuacao,
    required this.reiniciarQuestionario,
    super.key,
  });

  String get fraseResultado {
    switch (pontuacao) {
      case <= 8:
        return 'Sua pontuacao foi: $pontuacao\nParabéns';
      case <= 12:
        return 'Sua pontuacao foi: $pontuacao\nVocê é bom!';
      case <= 16:
        return 'Sua pontuacao foi: $pontuacao\nImpressionante!';
      default:
        return 'Sua pontuacao foi: $pontuacao\nNível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 22),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.pink[200]),
          ),
          onPressed: reiniciarQuestionario,
          child: const Text(
            'Reiniciar Aplicação?',
            style: TextStyle(fontSize: 17),
          ),
        )
      ],
    );
  }
}
