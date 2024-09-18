import "package:flutter/material.dart";

import 'Perfil.dart';
import 'Tarefas.dart';
import 'Calendario.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Inicio(),
  ));
}

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    Home("Início"),
    Tarefas(),
    Calendario("Calendário"),
    Perfil("Meu perfil")
  ];

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo!"),
      ),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.pinkAccent,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Tarefas",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Calendário", backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil",backgroundColor: Colors.black),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  final String texto;

  Home(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(texto),
      ),
    );
  }
}
