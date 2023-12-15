/*
- Números (int e double)
- String (String)
- Booleano (bool)
- dynamic
*/

main() {
  // TIPO NUMÉRICO

  int n1 = 3;
  // o parênteses aplica a precedência ao método absoluto
  double n2 = (-5.67).abs();
  // convertendo valor em string para double
  double n3 = double.parse('123');
  // o tipo int e double são derivados do tipo num
  num n4 = 6;

  print(n1 + n2 + n3 + n4);

  n2 = 4;
  n4 = 6.4;

  print(n1 + n2 + n3 + n4);

  // TIPO TEXTO
  String s1 = 'Bom ';
  String s2 = 'dia';

  print(s1.toLowerCase() + s2.toUpperCase() + '!!!');

  // TIPO BOOLEANO

  bool estaChovendo = true;
  bool muitoFrio = false;

  // Operador and = &&
  // Operador or = ||

  print(estaChovendo && muitoFrio);
  print(estaChovendo || muitoFrio);

  // TIPO DINÂMICO

  // Trata-se de uma tipagem indefinida
  dynamic x = 'Apenas um exemplo';
  print(x);

  x = 123;
  print(x);
}
