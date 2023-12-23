class Carro {
  int? _velocidadeAtual = 0;
  final int? velocidadeMaxima;

  Carro({this.velocidadeMaxima = 150});

  // Método set para manipular o valor
  void set velocidadeAtual(int novaVelocidade) {
    bool deltaValido = (_velocidadeAtual! - novaVelocidade).abs() <= 50;
    if (deltaValido && novaVelocidade >= 0) {
      this._velocidadeAtual = novaVelocidade;
    }
  }

  // Método get para capturar valor
  int get velocidadeAtual {
    return _velocidadeAtual!;
  }

  String formataVelocidade() {
    return '$_velocidadeAtual km/h';
  }

  bool estaNoLimite({acelerar = false, frear = false}) {
    if (acelerar && _velocidadeAtual! >= velocidadeMaxima!) {
      return true;
    } else if (frear && _velocidadeAtual! <= 0) {
      return true;
    }
    return false;
  }

  dynamic acelerar() {
    if (_velocidadeAtual! + 5 >= velocidadeMaxima!) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual = _velocidadeAtual! + 5;
    }
    return formataVelocidade();
  }

  dynamic frear() {
    if (_velocidadeAtual! - 5 <= 0) {
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual = _velocidadeAtual! - 5;
    }
    return formataVelocidade();
  }
}
