import 'package:flutter/material.dart';

//TODO: poder adicionar tarefa clicando em um botão, escolhendo a data da tarefa e ela aparecendo no calendário

class Tarefas extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<Tarefas> {
  bool _estudarProva = false;
  bool _fazerLista = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suas tarefas: "),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
                title: Text("Estudar para prova"),
                secondary: Icon(Icons.add_box),
                value: _estudarProva,
                onChanged: (bool? valor) {
                  setState(() {
                    _estudarProva = valor!;
                  });
                }
            ),
            CheckboxListTile(
                title: Text("Fazer Lista 01"),
                secondary: Icon(Icons.add_box),
                value: _fazerLista,
                onChanged: (bool? valor) {
                  setState(() {
                    _fazerLista = valor!;
                  });
                }
            ),
            ElevatedButton(
                child: Text("Salvar"),
                onPressed: () {
                  //print(
                      //" Leite: " + _estudarProva.toString() +
                      //    " Pão: " + _fazerLista.toString()
                  //);
                }
            ),
            /* Text("Leite"),
            Checkbox(
              value: _selecionado,
              onChanged: (bool valor){
                print("Valor do checkbox: "+valor.toString());
                setState(() {
                  _selecionado = valor;
                });
              },
            ), */
          ],
        ),
      ),
    );
  }
}