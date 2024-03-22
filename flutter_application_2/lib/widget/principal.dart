import 'package:flutter/material.dart';
import 'package:flutter_application_2/rota.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tela Principal'),
        ),
        body: Column(children: [
          criarBotao(
              nome: 'Formulario Aluno',
              rota: Rota.formularioAluno,
              context: context),
          criarBotao(
              nome: 'Lista Aluno', rota: Rota.listaAluno, context: context),
          criarBotao(
              nome: 'Detalhe Aluno', rota: Rota.detalheAluno, context: context)
        ]));
  }
}

Widget criarBotao(
    {required String nome,
    required String rota,
    required BuildContext context}) {
  return ElevatedButton(
    child: Text(nome),
    onPressed: () {
      Navigator.pushNamed(context, rota);
    },
  );
}
