import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  /* Atividade 01
a) Solicite 2 notas de avaliações e calcule a média; 
b) Refaça o exercício anterior validado se as notas informadas são válidas (de 0 à 10);
c) Com a média calculada, verifique se o aluno está aprovado (maior ou igual à 6).
d) Faça 3 exemplos do seu projeto.
 */

/*
  // a
  print('Primeira nota: ');
  var entradaNota1 = stdin.readLineSync()!;
  var nota1 = int.parse(entradaNota1);
  print('Segunda nota: ');
  var entradaNota2 = stdin.readLineSync()!;
  var nota2 = int.parse(entradaNota2);
  var media = (nota1 + nota2) / 2;
  print('sua media foi $media');
*/
/*
  // b Refaça o exercício anterior validado se as notas informadas são válidas (de 0 à 10);
  print('Primeira nota: ');
  var entradaNota1 = stdin.readLineSync()!;
  var nota1 = int.parse(entradaNota1);

  while (nota1 < 0 || nota1 > 10) {
    print('nota não permitida.');
    print('Primeira nota: ');

    var entradaNota1 = stdin.readLineSync()!;
    nota1 = int.parse(entradaNota1);
  }

  print('Segunda nota: ');
  var entradaNota2 = stdin.readLineSync()!;
  nota2 = int.parse(entradaNota2);

    while (nota2 < 0 || nota2 > 10) {
    print('nota não permitida.');
    print('Segunda nota: ');

    var entradaNota2 = stdin.readLineSync()!;
    var nota2 = int.parse(entradaNota2);
  }

  var media = (nota1 + nota2) / 2;
  print('sua media foi $media');
*/

/*
// c) Com a média calculada, verifique se o aluno está aprovado (maior ou igual à 6).

  print('Primeira nota: ');
  var entradaNota1 = stdin.readLineSync()!;
  var nota1 = int.parse(entradaNota1);

  while (nota1 < 0 || nota1 > 10) {
    print('nota não permitida.');
    print('Primeira nota: ');

    var entradaNota1 = stdin.readLineSync()!;
    nota1 = int.parse(entradaNota1);
  }

  print('Segunda nota: ');
  var entradaNota2 = stdin.readLineSync()!;
  var nota2 = int.parse(entradaNota2);

  while (nota2 < 0 || nota2 > 10) {
    print('nota não permitida.');
    print('Segunda nota: ');

    var entradaNota2 = stdin.readLineSync()!;
    nota2 = int.parse(entradaNota2);
  }

  var media = (nota1 + nota2) / 2;
  print('sua media foi $media');

  if (media > 6.0) {
    print('Aprovado');
  } else {
    print('Reprovado');
  }
*/

  // d) Faça 3 exemplos do seu projeto.
/* */

  // desafio fazer o exercicio 1 usando funções, funções com retorno, funções com parametro e retorno;

  int verificarNota1(int nota1) {
    while (nota1 < 0 || nota1 > 10) {
      print('nota não permitida.');
      print('Primeira nota: ');

      var entradaNota1 = stdin.readLineSync()!;
      nota1 = int.parse(entradaNota1);
    }

    return nota1;
  }

  int entradaNota1() {
    print('Primeira nota: ');
    var entradaNota1 = stdin.readLineSync()!;
    var nota1 = int.parse(entradaNota1);

    verificarNota1(nota1);

    return nota1;
  }

  int verificarNota2(int nota2) {
    while (nota2 < 0 || nota2 > 10) {
      print('nota não permitida.');
      print('Segunda nota: ');

      var entradaNota2 = stdin.readLineSync()!;
      nota2 = int.parse(entradaNota2);
    }

    return nota2;
  }

  int entradaNota2() {
    print('Segunda nota: ');
    var entradaNota1 = stdin.readLineSync()!;
    var nota2 = int.parse(entradaNota1);

    verificarNota2(nota2);

    return nota2;
  }

  double mediaFunc(int nota1, int nota2) {
    var media = (nota1 + nota2) / 2;

    print('sua media foi $media');

    return media;
  }

  void aprovadoReprovado(double media) {
    if (media > 6.0) {
      print('Aprovado');
    } else {
      print('Reprovado');
    }
  }

  var nota1 = entradaNota1();

  var nota2 = entradaNota2();

  var media = mediaFunc(nota1, nota2);

  aprovadoReprovado(media);
}
