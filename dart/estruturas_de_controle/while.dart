import 'dart:io';

main() {
  var digitado = 'sair';

  // 'while' é uma estrutura de controle que permite iterar indefinidas vezes
  // enquanto não atingir o objetivo repassado, porém ao atribuir o valor 'sair'
  // em 'digitado', a condição já foi atendida, portanto a mesma não irá iniciar
  // o loop
  while (digitado != 'sair') {
    stdout.write('[WHILE] - Digite algo ou sair: ');
    digitado = stdin.readLineSync()!;
  }

  // diferente do 'while', 'do while' é uma estrutura de controle que entra no
  // laço mesmo que a condição ja esteja atendida. Como exemplos temos a
  // variável 'digitado' que já possui o valor em questão e somente o verifica
  // no final da execução do bloco associado
  do {
    stdout.write('[DO] - Digite algo ou sair: ');
    digitado = stdin.readLineSync()!;
  } while (digitado != 'sair');

  print('Fim!');
}
