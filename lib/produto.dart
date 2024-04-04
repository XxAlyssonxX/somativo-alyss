import 'dart:math';

import 'package:flutter/material.dart';

class Produto extends StatelessWidget {
  const Produto({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  TextEditingController produtoController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TextEditingController precoController = TextEditingController();

  String _textoInfo = "Informe os dados";

  void _limpa() {
    produtoController.text = "";
    descricaoController.text = "";
    precoController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }
  void _cadastra() {
    produtoController.text = "";
    descricaoController.text = "";
    precoController.text = "";
    setState(() {
      _textoInfo = "produto cadastrado com sucesso";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produto'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(
            onPressed: _limpa,
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.amberAccent,
            ),
            TextField(
              controller:  produtoController,
              decoration: InputDecoration(
                labelText: "Codigo",
                labelStyle: TextStyle(color: Colors.black),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
            ),

            TextField(
              controller:  descricaoController,
              decoration: InputDecoration(
                labelText: "Descrição",
                labelStyle: TextStyle(color: Colors.black),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
            ),

            TextField(
              controller: precoController,
              decoration: InputDecoration(
                labelText: "Preço",
                labelStyle: TextStyle(color: Colors.black),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: _cadastra,
                  // handle register logic here,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent),
                  child: const Text("Produto"),
                ),
              ),
            ),
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}