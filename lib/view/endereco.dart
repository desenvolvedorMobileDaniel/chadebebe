import 'package:convitedobebe/view/boders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/contagem.dart';

class Endereco extends StatelessWidget {
  Endereco({super.key});

  Widget build(BuildContext context) {
    final bordes = Provider.of<Bordes>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Endereco"),
      ),
      body: Stack(
        children: [
      Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        decoration: bordes.bordes(
            colorContainer: Colors.lightBlueAccent,
            color: Colors.white,
            circular: 5,
            bottom: 2,
            left: 2,
            rigth: 2,
            top: 2),
        child: SafeArea(
          child: Text(
            "Rua rdo-5 Quadra-7 lote-4 Residencial Dona Ondina",
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
        ),
      ),
    ),

    ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(color: Colors.red, Icons.location_pin),
      ),
    );
  }
}
