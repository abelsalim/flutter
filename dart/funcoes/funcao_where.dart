List<TESTE> simulaWhere<TESTE>(List<TESTE> lista, bool Function(TESTE) fn) {
  List<TESTE> listaFiltrada = [];
  for (TESTE elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }

  return listaFiltrada;
}

void main() {
  var notas = [8.2, 7.4, 6.5, 5.9, 4.8, 3.9, 9.6, 3.7, 7.9, 8.6, 8.9];

  // definindo uma função anônima que retorna um booleano, mas recebe os dados
  // como double aplicando respectivamente suas próprias regras.
  bool Function(double) notasBaixasFn = (double nota) => nota <= 6;
  bool Function(double) notasMedianasFn = (double nota) => nota > 6 && nota < 7;
  bool Function(double) notasBoasFn = (double nota) => nota >= 7 && nota < 8.5;
  bool Function(double) notasMuitoBoasFn = (double nota) => nota >= 8.5;

  // variáveis que recebem a lista filtrada pelo método 'where', onde o mesmo
  // recebe a lista anônima criada como parâmetro para iterar e retornar o
  // filtro aplicado na mesmo.
  var notasBaixas = notas.where(notasBaixasFn);
  var notasMedianas = notas.where(notasMedianasFn);
  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);

  print(notasBaixas);
  print(notasMedianas);
  print(notasBoas);
  print(notasMuitoBoas);

  // Abaixo segue a simulação do where em uma função simples para o entendimento
  // na usabilidade da mesma.

  var boasNotasFn = (double nota) => nota >= 7.5;
  var somenteNotasBoas = simulaWhere(notas, boasNotasFn);

  var nomes = ['Abel', 'Salim', 'Lucas', 'Samuel'];
  var nomesGrandesFn = (String nome) => nome.length > 4;
  var somenteNomesGrandes = simulaWhere(nomes, nomesGrandesFn);

  print(somenteNotasBoas);
  print(somenteNomesGrandes);
}
