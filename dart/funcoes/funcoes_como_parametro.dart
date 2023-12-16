import 'dart:math';

void executarPor(Function(String) fn,
    {String valor = 'hahahahahaha', int quantidade = 1}) {
  for (int i = 0; i < quantidade; i++) {
    fn(valor);
  }
}

void executar(Function fnPar, Function fnImpar) {
  var numero = Random().nextInt(11);
  numero % 2 == 0 ? fnPar(numero) : fnImpar(numero);
}

void main() {
  // Definindo funções com notação ARROW
  var minhaFnPar = (x) => print('O número $x é par!');
  var minhaFnImpar = (x) => print('O número $x impar!');

  // Funções que aceita funções como parâmetro
  executar(minhaFnPar, minhaFnImpar);
  executar(minhaFnPar, minhaFnImpar);
  executar(minhaFnPar, minhaFnImpar);

  executarPor(print, quantidade: 5, valor: 'Abel Salim');
  executarPor(print, quantidade: 5);
  executarPor(print);
}
