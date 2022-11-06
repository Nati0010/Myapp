import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(        
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Image.asset("assets/images/logoapp.png"),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo electronico',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: (){}, 
                child: const Text("Iniciar sesión")
                ),
                const SizedBox(
                height: 12,
              ),
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
              const Text("Aún no tienes cuenta?"),
              const SizedBox(
                height: 12,
              ),
              TextButton(
                onPressed: (){}, 
                child: const Text("Registrate ahora")
                ),
              const SizedBox(
                height: 12,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}