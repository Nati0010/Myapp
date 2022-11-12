import 'package:flutter/material.dart';
import '../../controller/login.dart';
import '../../controller/request/login.dart';
import '/view/pages/createaccount.dart';
import 'mainpage.dart';

class LoginPage extends StatelessWidget {
  final _imageUrl ="assets/images/logoapp.png";
  late LoginRequest _request;
  late LoginController _controller;
  
  
  LoginPage({super.key}){
    _controller = LoginController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(        
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _logo(),
              _formulario(context),
              _inicioalternativo(),
              _crearCuenta(context),
            ],
          ),
        ),
      )
      );
  }

  Widget _logo (){
    return Column (
      children: [
        const SizedBox(
                height: 50,
              ),
              Image.asset(_imageUrl),
              const SizedBox(
                height: 16,
              ),
      ],
    );
  }

  Widget _formulario (BuildContext context){
    final formKey= GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column (
        children: [
          _campoCorreoElectronico(),
          const SizedBox(height: 16,),
          _campoClave(),
          const SizedBox(height: 12,),
          ElevatedButton(
            onPressed: (){
              if (formKey.currentState!.validate()){
                formKey.currentState!.save();
              //aqui ya estoy asegurando que el valor no es nulo
              //TODO: validar usuario y contra en BD
                try {
                  _controller.validateEmailPassword(_request);
                  //si currentState es null va a devolver un false 
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=> const MainPage(),
                  ),
                );
              } catch (e){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(e.toString()))
                );
              }
              }
              }
            }, 
            child: const Text(
              "Iniciar sesión", 
              style: TextStyle(fontSize: 20),)
              ),
         const SizedBox(
            height: 12,
                ),
        ],
      ),
    );
  }

  Widget _campoCorreoElectronico (){
    return TextFormField(
      maxLength: 50,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Correo electrónico',
      ),
      validator: (value){
        if (value ==null || value.isEmpty){
          return "Por favor ingrese su correo electrónico";
        }
        if (!value.contains("@") || !value.contains(".")){
          return "El correo es inválido";
        }
        return null;
      },
      //currentState! aseguramos que no es nuli
      onSaved: (value){
        _request.email=value!;
      }
    );
  }

  Widget _campoClave (){ 
    return TextFormField(
      maxLength: 30,
      obscureText: true,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Contraseña',
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
      onSaved: (value){
        _request.password=value!;
      }
    );
  }

  Widget _inicioalternativo (){
    return Column(children: [
      const Text("O iniciar sesión con:"),
              const SizedBox(
                height: 12,
              ),
              Row ( 
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text("Facebook")
                  ),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text("Google")
                  ),
              
                ],
              ),
              const SizedBox(
                height: 12,
              ), 
    ],
    );
  }

  Widget _crearCuenta (BuildContext context){
    final formKey= GlobalKey<FormState>();
    return Column(
      key: formKey,
      children: [
        TextButton(
          onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> const CreateAccount(),
              ),
            );
          }, 
          child: const Text("Si aún no tienes usuario registrate ahora"),
          ),
      ],
    );
  }

}
