import 'package:flutter/material.dart';
import '/view/pages/createaccount.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"Wander Books",
      home: CreateAccount (),
    );
  }
}