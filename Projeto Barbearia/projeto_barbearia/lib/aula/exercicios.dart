void main() {
  /**
   * Atividade 01
   * a) Defina as seguintes variáveis e seus respectivos valores: 
   * displina, carga horária com casas decimais, professor responsável, 
   * se a disciplina está ativa e quantidade de alunos. 
   * b) imprima todos os valores utilizando: i) concatenação, 
   * ii) interpolação simples e (iii) a interpolação com processamento
   * 
   * Atividade 02
   * Aplique o que aprendeu no seu projeto.
   */

  /*atividade 01*/
  String disciplina = 'Desenvolvimento em dispositivos moveis';
  double cargaHoraria = 160.0;
  String professorResponsavel = 'Helio';
  bool eAtiva = true;
  int quantidadeAlunos = 25;

  /* I */
  print(disciplina +
      ' ' +
      '${cargaHoraria}' +
      ' ' +
      professorResponsavel +
      ' ' +
      '${eAtiva}' +
      ' ' +
      '${quantidadeAlunos}');

  /* II */
  print(
      '$disciplina $cargaHoraria $professorResponsavel $eAtiva %quantidadeAlunos');

  /* III */
  print(
      '$disciplina $cargaHoraria $professorResponsavel ${eAtiva == true ? 'A disciplina esta ativa' : 'A disciplina não esta ativa'} $quantidadeAlunos');

  /**
   * Atividade 03
   * a) Refaça "Atividade 01" utilizando Inferência de Tipo.
   * 
   * Atividade 04
   * Aplique o que aprendeu no seu projeto.
   */
  var disciplina2 = 'Desenvolvimento em dispositivos moveis';
  var cargaHoraria2 = 160.0;
  var professorResponsavel2 = 'Helio';
  var eAtiva2 = true;
  var quantidadeAlunos2 = 25;

  /* I */
  print(disciplina2 +
      ' ' +
      '${cargaHoraria2}' +
      ' ' +
      professorResponsavel2 +
      ' ' +
      '${eAtiva2}' +
      ' ' +
      '${quantidadeAlunos2}');

  /* II */
  print(
      '$disciplina2 $cargaHoraria2 $professorResponsavel2 $eAtiva2 %quantidadeAlunos2');

  /* III */
  print(
      '$disciplina2 $cargaHoraria2 $professorResponsavel2 ${eAtiva2 == true ? 'A disciplina esta ativa' : 'A disciplina não esta ativa'} $quantidadeAlunos2');

/* Aplique o que aprendeu no seu projeto (dynamic).

//01) Considerando o exemplo, em qual contexto utilizamos uma variável dynamica?
  //02) Em relação ao seu projeto, faça 2 exemplos de uso incorreto. Justifique.
  //03) Em relação ao seu projeto, faça 2 exemplos de uso correto. Justifique.
*/

//01) Considerando o exemplo, em qual contexto utilizamos uma variável dynamica?

/*
>>>Atividade - final/const
  01) Em relação ao seu projeto, faça 2 exemplos de uso incorreto. Justifique.
  02) Em relação ao seu projeto, faça 2 exemplos de uso correto. Justifique.
  03) Qual a diferença entre uma variável, const e final. Qual devemos utilizar?
*/
}
