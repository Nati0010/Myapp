import 'package:flutter/material.dart';
import 'package:myapp/view/pages/shipping_information.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"Wander Books",
      home: ShippingInformation (),
    );
  }
}