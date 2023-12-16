import 'dart:math';

main() {
  // Gera um 'double' aleatório entre 0 e 10
  var numero = Random().nextDouble() * 10;
  // limita as casas decimais para uma e converte novamente para 'double'
  numero = double.parse(numero.toStringAsFixed(1));

  print('A número sorteada foi $numero');

  switch (numero) {
    case 10:
      print('Parabéns, foi aprovado com nota máxima!');
      break;

    case >= 8:
      print('Parabéns pelos esforços... passou pertinho do 10... hahahahahah');
      break;

    case >= 6:
      print('Essa passou perto em... na próxima pode não ter tanta sorte!!!');
      break;

    default:
      print('Como disse Amando Filho... Tente outra vez!!!');
  }
}
