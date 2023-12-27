void main() {
  final perguntas = [
    {
      'texto': 'Qual é a sua cor favorita ?',
      'respostas': [
        {'texto': 'Branco', 'nota': 10},
        {'texto': 'Preto', 'nota': 8},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Azul', 'nota': 6},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito ?',
      'respostas': [
        {'texto': 'Coelho', 'nota': 10},
        {'texto': 'Cachorro', 'nota': 8},
        {'texto': 'Gato', 'nota': 5},
        {'texto': 'Leão', 'nota': 6},
      ]
    },
    {
      'texto': 'Qual é o seu instrutor favorito ?',
      'respostas': [
        {'texto': 'Abel', 'nota': 10},
        {'texto': 'Salim', 'nota': 8},
        {'texto': 'Lucas', 'nota': 5},
        {'texto': 'Samuel', 'nota': 6},
      ]
    }
  ];

  var respostas1 = (perguntas.elementAt(0)['respostas'] as List<Map>);
  var widgets = respostas1.map((item) => item['nota']).toList();

  print(respostas1);
  print(widgets);
  // print(respostas2.runtimeType);
  // print(respostas3.runtimeType);
  // print(respostas4.runtimeType);
  // print(perguntas.elementAt(0)['respostas'].runtimeType);
  // print(perguntas);
  // print(respostas1);
}
