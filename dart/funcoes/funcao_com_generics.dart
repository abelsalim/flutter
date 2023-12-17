import 'dart:math';

E segundoElementoV2<E>(List<E> lista, {int indice = 0}) {
  return lista.elementAtOrNull(indice) == null
      ? lista.elementAt(0)
      : lista.elementAt(indice);
}

Object segundoElementoV1(List lista, {int indice = 0}) {
  return lista.length >= 1 ? lista.elementAt(indice) : null;
}

void main() {
  var lista = [3, 4, 5, 6, 7, 155, 66, 89];

  // A execução do 'lista.elementAtOrNull(indice)' realizaria o que a função
  // proposta está provendo, mas foi criada para fins educacionais.
  print(segundoElementoV1(lista, indice: 2));

  // Utilizando uma função generic onde foi criado um tipo chamado 'E' e nessa
  // função ocorre o tratamento do 'null', já que funções não podem retornar
  // esse valor - o que não acontece no primeiro caso.
  print(segundoElementoV2(lista, indice: Random().nextInt(9)));
}
