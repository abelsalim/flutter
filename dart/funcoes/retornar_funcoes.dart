String Function(int) somarParcial(int n1) {
  return (int n2) {
    var ImparPar = (n1 + n2) % 2 == 0 ? 'Par' : 'Impar';
    return 'A soma dos números $n1 com $n2 é $ImparPar';
  };
}

void main() {
  // O retorno de funções agrega a funcionalidade opcional de um segundo
  // processamento através de um segundo parâmetro não obrigatório.

  // em casos onde a função leva um período de processamento inicial, podemos
  // armazenar o function da mesma em uma variável como o exemplo abaixo para
  // posteriormente executarmos a variável com o segundo parâmetro. O que
  // resulta em uma economia significativo de processamento e memória.
  var somaCom10 = somarParcial(10);

  print(somaCom10(12));
  print(somaCom10(5));
  print(somaCom10(75));
}
