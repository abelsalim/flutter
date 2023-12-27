import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
    super.key,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // Extrai os valores em listas da chave 'resposta'
    var respostas = !temPerguntaSelecionada
        ? []
        : (perguntas.elementAt(perguntaSelecionada)['respostas'] as List<Map>);

    // Cria objetos do tipo Resposta - os Botões
    var widgets = respostas.map((item) {
      // Por questões estruturais/estética/leitura foi adicionado adicionado as
      // chaves substituindo a notação arrow.
      return Resposta(
        texto: item['texto'].toString(),
        // A notação '()' indica que passei um método vazio para quando o mesmo
        // for acionado, eu posso então repassar a função de fato desejada.
        onSelection: () => responder(item['pontuacao']),
      );
    }).toList();

    return Column(
      // children é componente que é composto por múltiplos widgets
      children: [
        Questao(
          texto: perguntas.elementAt(perguntaSelecionada)['texto'].toString(),
        ),
        // Operador 'spread'
        ...widgets,
      ],
    );
  }
}
