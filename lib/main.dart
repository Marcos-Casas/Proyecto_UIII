import 'package:flutter/material.dart';
import 'package:casas/Login.dart';
import 'package:casas/HomePage.dart';
import 'package:casas/Clientes.dart';
import 'package:casas/Articulos.dart';
import 'package:casas/Empleados.dart';
import 'package:casas/Conclusion.dart';
import 'package:casas/Desarrollador.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/inicio': (context) => HomePage(),
        '/clientes': (context) => Clientes(),
        '/articulos': (context) => Articulos(),
        '/empleados': (context) => Empleados(),
        '/conclusion': (context) => Conclusion(),
        '/desarrollador': (context) => Desarrollador(),
      },
    );
  }
}
