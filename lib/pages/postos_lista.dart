import 'package:flutter/material.dart';
import 'package:postos_local/models/posto.dart';
import 'package:postos_local/repositories/postos_repository.dart';

class PostosLista extends StatefulWidget {
  PostosLista({Key? key}) : super(key: key);

  @override
  State<PostosLista> createState() => _PostosListaState();
}

class _PostosListaState extends State<PostosLista> {
  final List<Posto> lista = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Lista de postos')),
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text('${lista[index].nome}'),
              Text('${lista[index].endereco}'),
              Text('${lista[index].foto}'),
            ],
          );
        },
      ),
    );
  }
}
