//Hacer un card class recomendando los libros segun los generos que le gustan al cliente

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class MainPage extends StatelessWidget {
  final String email;
  final String name;
  const MainPage({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ("Según mis gustos"),
      ),
      drawer:  DrawerWidget(email: email,name:name),
    );
  }
}

