import 'dart:io';

main() {
  // O ponto de exclamação serve para confirmar que o valor de entrada não será
  // nulo. Exemplo: String entrada = stdin.readLineSync()!;

  // Para definir uma constante é utilizado as palavras reservadas 'const' e
  // 'final', onde a 'const' refere-se aos valores predefinidos em tempo de
  // compilação - como a constante PI - e a 'final' é algo que será inserido ao
  // decorrer do uso da aplicação - como a entrada do usuário que é indefinida.

  // Área da circunferência = PI * raio * raio

  const PI = 3.1415;

  // para impressão na mesma linha utilizamos o stdout
  stdout.write('Informe o raio: ');

  // CAptura entrada do usuário
  final entradaDoUsuario = stdin.readLineSync()!;
  // Conversão de valor String para doble | 'final' define como constante
  final raio = double.parse(entradaDoUsuario);

  // Calculando a área
  final area = PI * raio * raio;

  print('O valor de área é: ' + area.toString());
}
