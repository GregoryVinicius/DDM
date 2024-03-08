main() {
  print("aula");
  funcao(5, 'dart');

  print(
      'O aluno foi ${ehAprovado(nota1: 10, nota2: 6, faltas: 5, calcularMedia: calcularMediaPercentual)}');
  print(
      'O aluno foi ${ehAprovado(nota1: 10, nota2: 6, faltas: 5, calcularMedia: calcularMedia)}');
  print(
      'O aluno foi ${ehAprovado(nota1: 10, nota2: 6, calcularMedia: (double n1, double n2) => (n1 + n2) / 2, 
      faltas: 5)}');
}

void funcao(int x, String y) {
  print("variavel x é $x e y é $y");
  //print('o aluno esta ${ehAprovado(6, 7)}');
  funcaoParamNomeado(idade: 5, nome: 'Maria');
  funcaoParamNomeado(nome: 'João', idade: 55);
  // funcaoParamNomeado(idade: 55);  esta dando erro pois falta parametro
}

bool ehAprovado(
    {required double nota1,
    required double nota2,
    required int faltas,
    required Function(double, double) calcularMedia,
    double mediaAprovacao = 6,
    int flatasMax = 10}) {
  //  [] = usados para caso de parametros opicionais
  var media = calcularMedia(nota1, nota2);
  var ehAprovadaNota = (media >= mediaAprovacao);
  var ehAprovadaFaltas = faltas <= flatasMax;
  return ehAprovadaFaltas && ehAprovadaNota;
}

double calcularMediaPercentual(double nota1, double nota2) {
  double media = (nota1 * 0.6) + (nota2 * 0.4);
  return media;
}

double calcularMedia(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return media;
}

void funcaoParamNomeado({required int idade, required String nome}) {
  print('nome: $nome, idade: $idade');
}

/* 
- atividade 03

parâmetro do tipo função
sintaxe; exemplo contextualizado; execução;

 */

int sintaxeParamFuncao(int x, int y, Function(int, int) f) {
  if (x > 10) {
    x = 0;
  }
  if (y > 5) {
    y = 10;
  }

  return f(x, y);
}

/*
- atividade 04

funções anônimas
sintaxe; exemplo contextualizado; execução;
quando usar ";" e ","
*/

