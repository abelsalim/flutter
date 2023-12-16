/*
- List
- Set
- Map
*/

main() {
  // TIPO LIST

  var aprovados = ['Abel', 'Salim', 'Lucas', 'Samuel'];

  print(aprovados);
  // Acessando o índice 2 de uma lista
  print(aprovados.elementAt(1));
  // Retorna o tamanho da lista
  print(aprovados.length);

  // TIPO MAP

  var telefones = {
    'Abel': '+55 (11) 91234-5678',
    'Salim': '+55 (21) 91234-5678',
    'Lucas': '+55 (88) 91234-5678',
    'Samuel': '+55 (85) 91234-5678',
  };

  print(telefones);
  // Acessando o valor da chave 'Salim' de uma lista
  print(telefones['Salim']);
  // Retorna o tamanho do map
  print(telefones.length);
  // Retorna as chaves de um map
  print(telefones.keys);
  // Retorna os calores de um map
  print(telefones.values);
  // Retorna as entradas de um map
  print(telefones.entries);

  // TIPO SET

  // Caso na criação do set seja inserido apenas valores do mesmo tipo, o mesmo
  // será tipado como conjuntos do tipo 'x'
  var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};
  print(times);

  // Adicionando valores
  times.add('Palmeiras');

  // Retorna tamanho do conjunto
  print(times.length);
  // Retorna o booleano se o valor existir no conjunto
  print(times.contains('Palmeiras'));
  // Retorna o primeiro valor do conjunto
  print(times.first);
  // Retorna o último do conjunto
  print(times.last);

  print(times);
}
