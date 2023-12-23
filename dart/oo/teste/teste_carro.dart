import '../modelo/carro.dart';

String minimoMaximo(Carro carro) {
  var msg = carro.velocidadeAtual <= 0
      ? 'Velocidade mínima de ${carro.velocidadeAtual} atingida!'
      : 'Velocidade máxima de ${carro.velocidadeAtual} atingida';

  return msg;
}

void main() {
  Carro carro = Carro(velocidadeMaxima: 100);

  while (!carro.estaNoLimite(acelerar: true)) {
    print('A velocidade atual é de ${carro.acelerar()}');
  }

  print(minimoMaximo(carro));

  print(''.padRight(35, '-'));

  while (!carro.estaNoLimite(frear: true)) {
    print('A velocidade atual é de ${carro.frear()}');
  }

  print(minimoMaximo(carro));
}
