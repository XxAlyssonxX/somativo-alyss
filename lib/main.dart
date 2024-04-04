import 'package:flutter/material.dart';
import 'menu.dart';
import 'imc.dart';
import 'produto.dart';
import 'contador.dart';
import 'cadastro.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas nomeadas',
      initialRoute: "/",
      routes: { '/':(context) => Menu(),
        '/segunda':(context) => const Imc(),
        '/terceira':(context) => const Contador(),
        '/quarta':(context) => const Cadastro(),
        '/quinta':(context) => const Produto(),
      },
    );
  }
}
