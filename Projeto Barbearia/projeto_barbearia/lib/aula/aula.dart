void main() {
  print('Hello word');

  String nomeAluno = 'José';
  String sobrenomeAluno = "Silva";

  print(nomeAluno);
  int idadeAluno = 23;

  double peso = 70.5;

  bool eAprovado = true;

  print(nomeAluno + ' ' + sobrenomeAluno);
  print('${nomeAluno} ${sobrenomeAluno}');
  print('$nomeAluno $sobrenomeAluno');
  print('$nomeAluno ${idadeAluno >= 19 ? 'não precisa' : 'precisa'}');

  print('variáveis de inferência');
  //sintaxe - motivação
  var nome = 'João';
  var sobrenome;
  sobrenome = 'Silva';

  String nomeAluno2;
  var sobrenomeAluno2 = 'Sergio';

  //regras - erros - padrão
  print('variaveis dinâmicas');
  dynamic nomeAluna = 'Maria';
  nomeAluna = 10;

  dynamic registroAcademico = 20241555;
  registroAcademico = '2024ES88';

  //exemplo google
  dynamic id = 55;
  id = '49-4646as.32sa';

  //const final
  print('const final');
  const int codigo = 55; //execultado em tempo de compilação
  final int codigoJogo = 100; //execultado em tempo de execução
  final int soma = codigo + codigoJogo;
}
