import 'dart:math';

void somaComPrint(int a, int b) {
  print(a + b);
}

void somaDoisNumeros() {
  var n1 = Random().nextInt(11);
  var n2 = Random().nextInt(11);

  print(n1 + n2);
}

int somar(int a, int b) {
  return a + b;
}

double somarNumerosAleatorios() {
  var n1 = Random().nextDouble() * 10;
  var n2 = Random().nextDouble() * 10;

  return formataNumeroDouble(n1 + n2);
}

double formataNumeroDouble(double numero) {
  return double.parse(numero.toStringAsFixed(2));
}

juntaParametros(a, b) {
  return '${a.toString()} - ${b.toString()}';
}

int numeroAleatorio([int maximo = 10]) {
  return Random().nextInt(maximo);
}

ajustaDiaMes(numero) {
  switch (numero.toString().length) {
    case 1:
      numero = numero.toString().padLeft(2, '0');
      break;
  }
  return numero;
}

void imprimeData([int dia = 1, int mes = 1, int ano = 1970]) {
  print('${ajustaDiaMes(dia)}/${ajustaDiaMes(mes)}/$ano');
}

void saudarPessoa({String nome = 'Abel', int idade = 30}) {
  print('Olá $nome, nem parece que você tem $idade anos.');
}

void main() {
  // Quando uma função inicia com a palavra reservada 'void', a mesma não
  // retorna valores. Para isso, é necessário repassar no início da mesma o tipo
  // do valor retornado, com 'int', 'bool' e etc. Caso não tenha um tipo
  // destacado, a mesma receberá atributos tipados como 'dynamic'.

  // Repassando valores para função que não retorna valores
  somaComPrint(2, 3);
  somaComPrint(4, 5);
  // Executando função que não retorna valores
  somaDoisNumeros();

  // Executando funções que retornam valores
  print('A função 1 retornou: ${somar(1, 2)}.');
  print('A função 2 retornou: ${somarNumerosAleatorios()}.');

  // Executando função do tipo 'dynamic'
  print(juntaParametros('Argumento 1', {'Nome', 'Salim'}));

  // O que define uma função como OPCIONAL é inserir a tipagem e atributo dentro
  // de colchetes. Exemplo: 'int numeroAleatorio([int maximo = 11]) {}'.
  //
  // Logo podemos ver também que para atribuirmos um valor padrão para o
  // atributos temos apenas que destacar o sinal de igualdade juntamente com seu
  // valor padrão.

  // Executando funções com atributos padrões
  print(numeroAleatorio());
  print(numeroAleatorio(90));

  imprimeData(24, 5, 1999);
  imprimeData(24, 5);
  imprimeData(24);
  imprimeData();

  // o que define se um parâmetro é nomeado ou não em uma função é envolve-los
  // em chaves.
  // Exemplo: 'saudarPessoa({String nome = 'Abel', int idade = 24}) {}'

  // Executando função com parâmetros nomeados
  saudarPessoa(nome: 'Salim', idade: 24);
  saudarPessoa(nome: 'Salim');
  saudarPessoa();
}
