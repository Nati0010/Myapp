import 'package:flutter/material.dart';
import 'package:myapp/view/pages/mainpage.dart';
import 'package:myapp/view/pages/wishlist.dart';

class DrawerWidget extends StatelessWidget {
  final String name;
  final String email;
  const DrawerWidget({super.key, required this.name, required this.email});

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
            color: Color.fromARGB(255, 121, 208, 183)
          ),
          child: _header(),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Perfil'),
          onTap: (){},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Lista de deseos'),
          onTap: (){
            Navigator.pushReplacement(
              context, 
              MaterialPageRoute(builder: (context) => MainPage(
                email:email,
                name:name,
              ),
              ));
          }
        ),
        ListTile(
          leading: const Icon(Icons.star_rounded),
          title: const Text('Géneros favoritos'),
          onTap: (){}
        ),
      ],
    ),
  ),
);
  }

  Widget _header(){
    //Consultar los datos de la cabecera
    const  image = Icon (Icons.manage_accounts);
    

    return Row ( 
      children: [
        const CircleAvatar(
          child: image,
          radius: 40,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text (
                name, 
                style: const TextStyle
                (fontSize: 20,
                color: Colors.black)),
                const SizedBox (height: 8,),
              Text (
                email, 
                style:  const TextStyle
                (fontSize: 16,
                color: Colors.black)),
            ],  
          ),
        )
      ],
    );
  }
}

//pagina 