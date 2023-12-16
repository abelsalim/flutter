main() {
  const listaAlunos = ['Abel', 'Salim', 'Lucas', 'Samuel'];
  String nome = 'Salim';
  String status = 'aprovado';
  double nota = 9.8;

  // interpolação de objetos
  String frase_1 = '$nome está $status pq tirou nota $nota!';
  // utilizando a contra barra para exceção
  String frase_2 = '\$nome está $status pq tirou nota $nota!';
  // aplicando notação ponto em uma interpolação
  String frase_3 = 'temos ${listaAlunos.length} alunos';

  print(frase_1);
  print(frase_2);
  print(frase_3);
}
