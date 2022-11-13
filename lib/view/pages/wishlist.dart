import 'package:flutter/material.dart';
import 'shipandpay_information.dart';

import '../widgets/drawer.dart';

class WishList extends StatelessWidget {

  
  const WishList({super.key});


  @override
  Widget build(BuildContext context) {

    final lista= _listadeDeseos();
    return Scaffold(
      appBar: AppBar (
        title: const Text ("Lista de deseos")
        ),
      drawer: const DrawerWidget(email:"",name:""),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text ("Mis libros", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Expanded(
              child: ListView.builder(
              itemCount: lista.length,
              itemBuilder:  (context, index) => ListTile(
                  leading: const CircleAvatar (),
                  title: Text (lista [index]),
                  subtitle: const Text ("genero"),
                  trailing: Column (
                    children: const [
                      Icon(Icons.star_rounded),
                      Text ("4.3"),
                    ],
                  ),
                  onTap: (){},
                  ),
              ),
              ),
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton (
        onPressed: (){
          Navigator.push(context, MaterialPageRoute
          (builder: (context)=> const ShippingInformation(),
            ),
          );
        },
        child: const Icon (Icons.shopping_cart_checkout),
      ),
    );
  }

  List <String> _listadeDeseos(){
    //TODO: traer la lista de deseos que el cliente ya tiene de la BD
    return List<String>.generate (
      10,
      (index)=> "Libro ${index+1}",
    );
  }
}

//hacer el row despues del title del libro para que se pueda ver la puntuacion, que tan lejos esta el libro, el genero de este  y que no se compre toda la 
//lista sino solamente el que yo señale 