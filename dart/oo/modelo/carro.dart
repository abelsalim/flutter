class Carro {
  int? velocidadeAtual;
  final int? velocidadeMaxima;

  Carro({this.velocidadeAtual = 0, this.velocidadeMaxima = 150});

  String formataVelocidade() {
    return '$velocidadeAtual km/h';
  }

  bool estaNoLimite({acelerar = false, frear = false}) {
    if (acelerar && velocidadeAtual! >= velocidadeMaxima!) {
      return true;
    } else if (frear && velocidadeAtual! <= 0) {
      return true;
    }
    return false;
  }

  dynamic acelerar() {
    if (velocidadeAtual! + 5 >= velocidadeMaxima!) {
      velocidadeAtual = velocidadeMaxima;
    } else {
      velocidadeAtual = velocidadeAtual! + 5;
    }
    return formataVelocidade();
  }

  dynamic frear() {
    if (velocidadeAtual! - 5 <= 0) {
      velocidadeAtual = 0;
    } else {
      velocidadeAtual = velocidadeAtual! - 5;
    }
    return formataVelocidade();
  }
}
