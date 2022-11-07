import 'package:flutter/material.dart';

class ShippingInformation extends StatelessWidget {
  const ShippingInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text ("Información de envio"),
      ),
      body: 
      SingleChildScrollView (
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column (children:  [
             const Text ("Nueva compra"),
             const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre',
                ),
                ),
             const SizedBox(
              height: 10,
              ),
             const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Apellido',
                ),
                ),
              const SizedBox(
              height: 10,
              ),
             const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ciudad',
                ),
                ),
              const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Dirección',
                ),
                ),
              const SizedBox(
              height: 10,
              ),
              const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Número de contacto',
                ),
                ),
              const SizedBox(
              height: 10,
              ),
              ElevatedButton(
                child: const Text("Guardar"),
                onPressed: (){}, 
                ),          
          ],),
        ),
      )
    );
  }
}