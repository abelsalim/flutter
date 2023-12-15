main() {
  // tipando variáveis
  int idade = 24;
  double b = 3.1314;
  bool desliga = false;
  String nome = 'Abel';

  // imprimindo variáveis
  print(idade);
  print(b);
  print(desliga);
  print(nome);

  // tipando variáveis de forma automática
  var sobrenome = 'Costa';
  var inteiro = 1;
  var float = 1.1;
  var ativo = true;

  // imprimindo variáveis
  print(sobrenome.runtimeType);
  print(inteiro.runtimeType);
  print(float.runtimeType);
  print(ativo.runtimeType);

  // Concatenando strings
  print(nome + ' ' + sobrenome);
  // Concatenando strings com outros tipos
  print(nome + ': ' + (idade + b).toString());

  // Verificando tipagem
  print(nome is int);
  print(idade is String);
}
