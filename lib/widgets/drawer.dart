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
            color: Colors.white
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
          leading: Icon(Icons.home),
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
          leading: Icon(Icons.shopping_basket),
          title: Text('Productos'),
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

//hacer arribita la foto del cliente y su correo