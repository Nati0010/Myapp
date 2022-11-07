import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Text('Drawer Demo'),
  ),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 61, 240, 204),
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Perfil'),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Lista de deseos'),
        ),
        ListTile(
          leading: Icon(Icons.star_rounded),
          title: Text('Géneros favoritos'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configuración'),
        ),
      ],
    ),
  ),
);
  }
}