import 'package:flutter/material.dart';
import 'package:flutter_application_2/rota.dart';
import 'package:flutter_application_2/widget/formulario_aluno.dart';
import 'package:flutter_application_2/widget/lista_aluno.dart';
import 'package:flutter_application_2/widget/principal.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        Rota.home: (context) => Principal(),
        Rota.formularioAluno: (context) => FormularioAluno(),
        Rota.listaAluno: (context) => ListaAluno()
      },
    );
  }
}
