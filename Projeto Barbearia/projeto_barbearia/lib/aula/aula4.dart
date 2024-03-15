import 'dart:ffi';
import 'dart:isolate';

import 'minha_classe.dart';

void main(List<String> args) {
  var estado = Estado(id: 1, nome: 'Paraná', sigla: 'PR');

  var cidade = Cidade(id: 1, nome: 'Paranavaí', estado: estado);

  var cidade2 = Cidade(
      id: 2,
      nome: 'Maringa',
      estado: Estado(id: 2, nome: 'Mato Grosso', sigla: 'MG'));

  var venda = Venda(
    id: 1, 
    cliente: Cliente(
      id: 3, 
      nome: 'Maria', 
      cidadeMoradia: Cidade(
        id: 3, 
        nome: 'Maringa', 
        estado: Estado(
          id: 1, 
          nome: 'Paraná', 
          sigla: 'PR')),
      cidadeTrabalha: Cidade(
        id: 5, 
        nome: 'Pindamonhangaba', 
        estado: Estado(
          id: 5, 
          nome: 'Alguma ai', 
          sigla: 'AA'))),
    fornecedor: Fornecedor(
      id: 1, 
      nome: 'Cleiton', 
      cidadeTrabalha: Cidade(
        id: 4, 
        nome: 'São Paulo', 
        estado: Estado(
          id: 3, 
          nome: 'São Paulo', 
          sigla: 'SP')), 
        cidadeMora: Cidade(
          id: 4, 
          nome: 'Jundiai', 
          estado: Estado(
            id: 3, 
            nome: 'São Paulo', 
            sigla: 'SP'))), 
    calculoComissao: ()=> 1000 * (5 / 100));

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
  Function calculoComissao;

  Venda({required this.id, required this.cliente, required this.fornecedor, required this.calculoComissao});
}
