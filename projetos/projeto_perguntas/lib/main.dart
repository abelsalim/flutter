import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita ?',
      'respostas': [
        {'texto': 'Branco', 'pontuacao': 7},
        {'texto': 'Preto', 'pontuacao': 1},
        {'texto': 'Vermelho', 'pontuacao': 2},
        {'texto': 'Azul', 'pontuacao': 10},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito ?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 8},
        {'texto': 'Cachorro', 'pontuacao': 5},
        {'texto': 'Gato', 'pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual é o seu instrutor favorito ?',
      'respostas': [
        {'texto': 'Abel', 'pontuacao': 1},
        {'texto': 'Salim', 'pontuacao': 1},
        {'texto': 'Lucas', 'pontuacao': 3},
        {'texto': 'Samuel', 'pontuacao': 1},
      ]
    }
  ];

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  set perguntaSelecionada(int novaValor) {
    _perguntaSelecionada = novaValor;
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gi Silva'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(
                pontuacao: _pontuacaoTotal,
                reiniciarQuestionario: _reiniciarQuestionario,
              ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
