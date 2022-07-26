//stl = cria um estrutura nova básica stateless.

import 'package:flutter/material.dart';

class NexterPage extends StatelessWidget {
  const NexterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical (top: Radius.circular(12))),
        backgroundColor: const Color.fromARGB(192, 99, 167, 196),
        title: const Text("Clouds"),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text(
          "Oi, sou a outra outra tela",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ),
    );
  }
}
