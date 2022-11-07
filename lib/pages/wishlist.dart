import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text ("Lista de deseos")
        ),
        
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text ("Mis libros"),
            Expanded(
              child: ListView(
                children:  [
                  ListTile(
                  leading: const CircleAvatar (),
                  title: const Text ("El sicoanalista"),
                  subtitle: const Text ("puntuacion.."),
                  onTap: (){},
                  ),
                  ListTile(
                  leading: const CircleAvatar (),
                  title: const Text ("La chica del tren"),
                  subtitle: const Text ("puntuacion.."),
                  onTap: (){},
                  )
              ],
              ))
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton (
        onPressed: (){},
        child: const Icon (Icons.shopping_cart_checkout),
      ),
    );
  }
}

//hacer el row despues del title del libro para que se pueda ver la puntuacion, que tan lejos esta y el genero del libro 