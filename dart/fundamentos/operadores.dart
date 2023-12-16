// Operadores

import 'dart:io';

main() {
  // Operadores aritméticos (operadores binários/infix)

  var a = 7;
  var b = 3;
  var resultado = a + b;

  print(resultado);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(32 % 2);

  // Operadores lógicos

  var ehFragil = true;
  var ehCaro = true;

  // Operador lógico 'and': quando ambas as partes correspondem a 'true'
  print(ehFragil && ehCaro);
  // Operador lógico 'or': quando uma ou ambas as partes correspondem a 'true'
  print(ehFragil || ehCaro);
  // Operador lógico 'xor': quando apenas uma das partes correspondem a 'true'
  print(ehFragil ^ ehCaro);
  // Operador lógico 'not'
  print(!ehFragil);

  // Operadores de atribuição (binário/infix)

  double n = 12;
  // Formas de atribuições
  n = n + 3;

  n += 3;
  print(n);

  n += 5;
  print(n);

  n *= 5;
  print(n);

  n /= 5;
  print(n);

  n %= 2;
  print(n);

  // Operadores relacionais (binário/infix)

  print(3 > 2);
  print(3 >= 5);
  print(3 < 2);
  print(3 <= 5);
  print(3 != 5);
  print(3 == 5);

  print((2 + 5) > (3 - 1) && (4 + 7) != (7 - 4));

  // Operadores unários (incrementais/decrementais)

  var n1 = 3;
  var n2 = 4;

  // incrementando valores (posfix)
  n1++;
  print(n1);

  // decrementando valores (prefix)
  --n1;
  print(n1);

  // o operador incremental/decremental na direita tem precedência
  // o operador incremental/decremental na esquerda não tem precedência
  print(n1++ == --n2);
  print(a == b);

  // Operadores ternários (if/else)

  stdout.write('Está chovendo? (s/N) ');
  bool estaChovendo = stdin.readLineSync()! == 's';

  stdout.write('Está frio? (s/N) ');
  bool estaFrio = stdin.readLineSync()! == 's';

  print(estaChovendo);
  print(estaFrio);

  // Se estaChovendo ou estaFrio, 'Ficar em casa', senão "Sair!!!"
  String res = estaChovendo || estaFrio ? 'Ficar em casa' : 'Sair!!';

  print(res);
  print(estaChovendo && estaFrio ? 'haha' : 'top top top');
}
