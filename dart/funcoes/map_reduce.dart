void main() {
  // Utilizando MAP

  var alunos = [
    {'nome': 'Abel', 'nota': 8.0},
    {'nome': 'Salim', 'nota': 5.8},
    {'nome': 'Lucas', 'nota': 9.5},
    {'nome': 'Samuel', 'nota': 6.4},
  ];

  String Function(Map) capturaNome = (aluno) => aluno['nome'];
  print(alunos.map(capturaNome));

  int Function(String) quantidadeLetras = (nome) => nome.length;
  print(alunos.map(capturaNome).map(quantidadeLetras));

  // Utilizando REDUCE

  var notas = [8.2, 7.4, 6.5, 5.9, 4.8, 3.9, 9.6, 3.7, 7.9, 8.6, 8.9];

  // Exemplos de 'arrow functions' com mesma funcionalidades, onde 'somarFn1'
  // vem destacado sua tipagem, logo a 'somarFn2' fica a cargo da linguagem
  // prover a tipagem automática.
  double Function(double, double) somarFn1 = (double x, double y) => (x + y);
  var somarFn2 = (double x, double y) => x + y;

  print(notas.reduce(somarFn1));
  print(notas.reduce(somarFn2));

  // Utilizando WHERE, MAP e REDUCE

  // Exemplo de métodos aninhados
  // 1º - Extrindo as notas
  // 2º - converta o type 'Object' para 'double'
  // 3º - filtre apenas as notas maiores que 8
  var notasFinais = alunos
      .map((aluno) => aluno['nota'])
      .map((nota) => nota as double)
      .where((nota) => nota >= 8);

  // Some todos os números da lista 'notasFinais'
  var somaNotasFinais = notasFinais.reduce((t, a) => t + a);

  // Calcule a média dos indivíduos
  var media = somaNotasFinais / notasFinais.length;

  print('A média dos ${notasFinais.length} alunos que tiveram nota >= 8 foi: '
      '$media');
}
