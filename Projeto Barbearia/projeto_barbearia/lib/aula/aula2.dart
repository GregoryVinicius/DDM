import 'dart:io';

void main() {
  print('aula funções');

  print('Nome: ');
  String? nome = stdin.readLineSync()?.toUpperCase();
  print('Idade: ');
  String entradaIdade = stdin.readLineSync()??'0';
  var idade = entradaIdade as int;

  print('meu nome é $nome, a minha idade é $idade');
}