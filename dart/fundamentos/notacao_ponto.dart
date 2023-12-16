// Exemplos da notação ponto em Dart

main() {
  // Arredondando a o valor
  double nota_1 = 6.99.roundToDouble();
  print(nota_1);

  // Retorna o inteiro descartando os decimais
  double nota_2 = 6.99.truncateToDouble();
  print(nota_2);

  // Texto maiúsculo e minúsculo
  print('Salim'.toUpperCase());
  print('Salim'.toLowerCase());

  // Atribui um valor, fatia a string por quantidade de caracteres, acrescenta
  // três '*' a direita e posteriormente mais três '*' a esquerda
  var s1 = 'Abel Salim';
  var s2 = s1.substring(0, 4);
  var s3 = s2.padRight(7, '*');
  var s4 = s3.padLeft(10, '*');

  // Criando variável em cadeia
  var s5 = 'Abel Salim'.substring(0, 4).padRight(7, '*').padLeft(10, '*');

  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print(s5);
}
