main() {
  // um simples for
  for (int a = 1; a <= 5; a++) {
    print('for 1 = $a');
  }

  print(''.padRight(38, '-'));

  // Criando iterável em tempo de execução
  for (var a = 0; a <= 10; a++) {
    if (a % 2 == 1) {
      print('impar = $a');
    } else {
      print('par = $a');
    }
  }

  print(''.padRight(38, '-'));

  // Criando iterável previamente
  var b = 20;

  for (; b >= 10; b--) {
    if (b % 2 == 1) {
      print('impar = $b');
    } else {
      print('par = $b');
    }
  }

  print(''.padRight(38, '-'));

  // TRABALHANDO COM LISTAS

  // Iterando nas notas - Método 1
  var notas = [8.9, 9.3, 7.8, 6.0, 5.5, 4.0, 0.9];

  for (var i = 0; i < notas.length; i++) {
    print('nota: ${notas.elementAt(i)}');
  }

  print(''.padRight(38, '-'));

  // Iterando nas notas - Método 2
  for (var nota in notas) {
    print('nota: $nota');
  }

  // Calculando a média trimestral

  var notas_trimestrais = [
    [8.9, 9.3],
    [7.8, 6.0],
    [5.5, 4.0]
  ];

  print(''.padRight(38, '-'));

  for (var lista in notas_trimestrais) {
    var [n1, n2] = lista;
    var media = ((n1 + n2) / 2).toStringAsFixed(1);
    print('nota 1: $n1 | nota 2: $n2 | média $media');
  }

  print(''.padRight(38, '-'));

  // TRABALHANDO COM MAP
  var notas_alunos = {'Abel': 6.0, 'Salim': 5.7, 'Lucas': 8.5, 'Samuel': 10.0};

  for (var entrada in notas_alunos.entries) {
    if (entrada.value == 10) {
      print('Você tirou ${entrada.value} ${entrada.key}, '
          'foi aprovado com nota máxima!');
    } else if (entrada.value >= 8) {
      print('Você tirou ${entrada.value} ${entrada.key}, '
          'Parabéns pelos esforços... passou pertinho do 10... hahahahahah');
    } else if (entrada.value >= 6) {
      print('Você tirou ${entrada.value} ${entrada.key}, '
          'Essa passou perto em... na próxima pode não ter tanta sorte!!!');
    } else {
      print('Você tirou ${entrada.value} ${entrada.key}, '
          'Como disse Amando Filho... Tente outra vez!!!');
    }
  }
}
