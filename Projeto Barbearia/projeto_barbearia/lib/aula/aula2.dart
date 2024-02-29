import 'dart:io';

void main() {
  print('aula funções');

  print('Nome: ');
  var nome = stdin.readLineSync();
  print('Idade: ');
  var entradaIdade = stdin.readLineSync()!;
  var idade = entradaIdade as int;

  print('meu nome é $nome, a minha idade é $idade');
}