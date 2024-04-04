import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text('Menu: '),
          centerTitle: true,
          backgroundColor: Colors.amber),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.add_business_sharp,
              size: 120.0,
              color: Colors.deepOrangeAccent,
            ),
            const Text(
              'Aplicação Principal',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Imc'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/segunda');
                  },
                ),
                ElevatedButton(
                  child: const Text('Contador'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/terceira');
                  },
                ),
                ElevatedButton(
                  child: const Text('Cadastro'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/quarta');
                  },
                ),
                ElevatedButton(
                  child: const Text('Produto'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/quinta');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
