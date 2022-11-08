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
      children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 179, 139, 139)
          ),
          child: _header(),
        ),
        const  ListTile(
          leading: Icon(Icons.home),
          title: Text('Perfil'),
        ),
        const ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Lista de deseos'),
        ),
        const  ListTile(
          leading: Icon(Icons.star_rounded),
          title: Text('Géneros favoritos'),
        ),
        const ListTile(
          leading: Icon(Icons.shopping_basket),
          title: Text('Productos'),
        ),
        const  ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configuración'),
        ),
      ],
    ),
  ),
);
  }

  Widget _header(){
    //Consultar los datos de la cabecera
    final image = Icon (Icons.manage_accounts);
    final name = "Natalia Rojas";
    final email = "nrl@gmail.com";

    return Row ( children: [
      CircleAvatar(child: image,
      ),
      const SizedBox(
        width: 16,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children:[
        Text (name),
        Text (email),
      ],)
    ],
    );
  }
}

//hacer arribita la foto del cliente y su correo