//Aqui el cliente llena su informacion y para señalar el tipo de genero que le gusta 
//hacer un chip class 

import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text ("Registro de usuario"),
      ),
      body: 
      SingleChildScrollView (
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
             const Text ("Información del usuario",
             style: TextStyle (fontSize: 20, 
             fontWeight: FontWeight.bold
             ),
             ),
             const SizedBox(height:30,),
             _formulario(context),
                
          ],
          ),
        ),
      )
    );
  }


  Widget _formulario (BuildContext context){
    final formKey = GlobalKey<FormState>();

    return Form(
      key:formKey,
      child: Column (
        children: [
          _campoNombre(),
          const SizedBox(height: 10,),
          _campoCorreo(),
          const SizedBox(height: 10,),
           _campoClave(),
          const SizedBox(height: 10,),
          _campoPreferencias(),
          const SizedBox(height: 10,),
          ElevatedButton(
            child: const Text("Guardar"),
            onPressed: (){
              if (formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Información guardada con éxito"))
                );

                
              }
            }, 
            ),

      ],
      )
      );
  }


  Widget _campoNombre (){
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

  
  Widget _campoPreferencias (){
    return (TextFormField(
      maxLength: 60,
      keyboardType: TextInputType.streetAddress,
      decoration: const InputDecoration(
        icon:Icon(Icons.map_sharp),
        border: OutlineInputBorder(),
        labelText: 'Preferencias',
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

  Widget _campoCorreo (){
    return (TextFormField(
      maxLength: 30,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        icon:Icon(Icons.email),
        border: OutlineInputBorder(),
        labelText: 'Correo',
      ),
      validator: (value){
        if (value == null || value.isEmpty){
          return "Por favor llene el campo correo";
        }
        if (!value.contains("@") || !value.contains(".")){
          return "El correo es inválido";
        }
        return null;
      },
    )
    );
  }

  Widget _campoClave (){
    return (TextFormField(
      maxLength: 30,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        icon:Icon(Icons.credit_card),
        border: OutlineInputBorder(),
        labelText: 'Telefono',
      ),
      validator: (value){
        if (value ==null || value.isEmpty){
          return "Por favor ingrese su contraseña";
        }
        if (value.length <6){
          return "La contraseña debe tener minimo 6 caracteres";
        }
        return null;
      },
    )
    );
  }

  



  //campo ciudad desplegable lanza error preguntar por eso



}


