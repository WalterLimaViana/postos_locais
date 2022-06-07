import 'package:flutter/material.dart';
import 'package:postos_local/repositories/postos_repository.dart';

class PostosLista extends StatefulWidget {
  PostosLista({Key? key}) : super(key: key);

  @override
  State<PostosLista> createState() => _PostosListaState();
}

class _PostosListaState extends State<PostosLista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Lista de postos')),
      ),
    );
  }
}
