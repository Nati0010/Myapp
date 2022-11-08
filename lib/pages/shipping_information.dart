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
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
             const Text ("Especificaciones del envio",
             style: TextStyle (fontSize: 20, 
             fontWeight: FontWeight.bold
             ),
             ),
             const SizedBox(height:30,),
             _formulario(),
                
          ],
          ),
        ),
      )
    );
  }


  Widget _formulario (){
    final formKey = GlobalKey<FormState>();

    return Form(
      key:formKey,
      child: Column (
        children: [
          _campoCliente(),
          const SizedBox(height: 10,),
              const SizedBox(
              height: 10,
              ),
             
              const SizedBox(height: 10,),
              _campoDireccion(),
              const SizedBox(height: 10,),
              _campoTelefono(),
              const SizedBox(height: 10,),
              ElevatedButton(
                child: const Text("Guardar"),
                onPressed: (){}, 
                ),

      ],
      )
      );
  }


  Widget _campoCliente (){
    return (TextFormField(
      maxLength: 60,
      autofocus: true,
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
        icon:Icon(Icons.person),
        border: OutlineInputBorder(),
        labelText: 'Nombre',
      ),
      validator: (value){
        if (value == null || value.isEmpty){
          return "Por favor llene el campo nombre";
        }
        return null;
      },
    )
    );
  }

  
  Widget _campoDireccion (){
    return (TextFormField(
      maxLength: 60,
      keyboardType: TextInputType.streetAddress,
      decoration: const InputDecoration(
        icon:Icon(Icons.map_sharp),
        border: OutlineInputBorder(),
        labelText: 'Dirección',
      ),
      validator: (value){
        if (value == null || value.isEmpty){
          return "Por favor llene el campo dirección";
        }
        return null;
      },
    )
    );
  }

  Widget _campoTelefono (){
    return (TextFormField(
      maxLength: 30,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        icon:Icon(Icons.map_sharp),
        border: OutlineInputBorder(),
        labelText: 'Telefono',
      ),
      validator: (value){
        if (value == null || value.isEmpty){
          return "Por favor llene el campo telefono";
        }
        return null;
      },
    )
    );
  }

  Widget _campoCiudad (){
    return (const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Ciudad',
        ),
        ),
      
    ); 
  }

}