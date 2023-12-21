class Data {
  int? dia;
  int? mes;
  int? ano;

  //
  // Exemplo de construtor criado de forma manual
  //
  // Data(int dia, int mes, int ano) {
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }

  // Exemplo de construtor conciso na sua definição
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  // Exemplo de construtor nomeado
  Data.nomeado({this.dia = 1, this.mes = 1, this.ano = 1970});

  String toString() {
    return 'Classe Data - ${formataData()}';
  }

  dynamic ajustaDiaMes(numero) {
    switch (numero.toString().length) {
      case 1:
        numero = numero.toString().padLeft(2, '0');
        break;
    }
    ;
    return numero;
  }

  String formataData() {
    return '${ajustaDiaMes(dia)}/${ajustaDiaMes(mes)}/${ano}';
  }
}

void separador() {
  print(''.padLeft(30, '-'));
}

void main() {
  // Instanciar uma classe utilizando a expressão 'new' é opcional
  Data dataNascimento = new Data(24, 5, 1970);
  print(dataNascimento.formataData());

  Data dataCompra = Data(17, 12, 2023);
  print(dataCompra.formataData());

  separador();

  // Ao imprimir a própria objeto 'Data' através de uma variável instanciada é
  // executado implicitamente a função 'toString'. Como exemplo a mesma foi
  // Sobrescrita.
  print(dataNascimento.toString());
  print(dataCompra.toString());

  print(dataNascimento);
  print(dataCompra);

  separador();

  // Com a adição do construtor e atribuição do valor padrão nos atributos é
  // possível obter retorno apenas imprimindo a própria classe.
  print(new Data.nomeado());
  print(Data.nomeado());
}
