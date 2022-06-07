import 'package:flutter/material.dart';
import 'package:postos_local/pages/postos_lista.dart';
import 'package:postos_local/pages/postos_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;
  final List<Widget> _paginas = [PostosPage(), PostosLista()];

  void _onItemTapped(int index) {
    setState(() {
      paginaAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[paginaAtual],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Postos',
          ),
        ],
        currentIndex: paginaAtual,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
