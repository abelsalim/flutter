int somaFuncao(int a, int b) {
  return a + b;
}

void main() {
  // Atribuindo uma função preexistente à uma variável
  int Function(int, int) soma1 = somaFuncao;
  print(soma1(1, 2));

  // Criando funções anônimas
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };
  print(soma2(20, 30));

  // Criando funções anônimas através de inferência
  var soma3 = (int x, int y) {
    return x * y;
  };
  print(soma3(8, 15));

  // Funções com notação ARROW
  // Trata-se de uma forma mais concisa de criar e manipular funções anônimas

  print(''.padLeft(30, '-'));

  // Definindo 4 funções anônimas
  var adicao = (x, y) => x + y;
  var subtracao = (x, y) => x - y;
  var multiplicacao = (x, y) => x * y;
  var divisao = (x, y) => x / y;

  print(adicao(8, 9));
  print(subtracao(8, 9));
  print(multiplicacao(8, 9));
  print(divisao(8, 9));
}
