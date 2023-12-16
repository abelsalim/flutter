import 'dart:math';

main() {
  // Gera um 'double' aleatório entre 0 e 10
  var nota = Random().nextDouble() * 10;
  // limita as casas decimais para uma e converte novamente para 'double'
  nota = double.parse(nota.toStringAsFixed(1));

  print('Sua nota foi $nota');

  if (nota == 10) {
    print('Parabéns, foi aprovado com nota máxima!');
  } else if (nota >= 8) {
    print('Parabéns pelos esforços... passou pertinho do 10... hahahahahah');
  } else if (nota >= 6) {
    print('Essa passou perto em... na próxima pode não ter tanta sorte!!!');
  } else {
    print('Como disse Amando Filho... Tente outra vez!!!');
  }
}
