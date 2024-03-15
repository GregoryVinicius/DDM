import 'dart:ffi';

import 'minha_classe.dart';

void main(List<String> args) {
  MinhaClasse mc = new MinhaClasse(x: 1, y: 10);

  var mc2 = MinhaClasse(x: 2, y: 20);

  MinhaClasse(x: 3, y: 30);
}

// Criar as seguintes classes:
//   >> Todos com parâmetros nomeados no construtor
//   Estado{id,nome,sigla}
//   Cidade{id,nome,Estado}
//   Cliente{id,nome,Cidade -trabalho, Cidade -moradia}
//   Fornecedor{id,nome,Cidade -trabalho, Cidade -moradia}
//   Venda{id, Cliente, Fornecedor, Função - cálculo comissão}

class Estado {
  int id;
  String nome;
  String sigla;

  Estado({required this.id, required this.nome, required this.sigla});
}

class Cidade {
  int id;
  String nome;
  Estado estado;

  Cidade({required this.id, required this.nome, required this.estado});
}

class Cliente {
  int id;
  String nome;
  Cidade cidadeTrabalha;
  Cidade cidadeMoradia;

  Cliente(
      {required this.id,
      required this.nome,
      required this.cidadeTrabalha,
      required this.cidadeMoradia});
}
//   Fornecedor{id,nome,Cidade -trabalho, Cidade -moradia}
//   Venda{id, Cliente, Fornecedor, Função - cálculo comissão}

class Fornecedor {
  int id;
  String nome;
  Cidade cidadeTrabalha;
  Cidade cidadeMora;

  Fornecedor(
      {required this.id,
      required this.nome,
      required this.cidadeTrabalha,
      required this.cidadeMora});
}

class Venda {
  int id;
  Cliente cliente;
  Fornecedor fornecedor;

  Venda({required this.id, required this.cliente, required this.fornecedor});

  double comissao({required double valor, required double porcentagem}) {
    var comissao = valor * (porcentagem / 100);
    return comissao;
  }
}
