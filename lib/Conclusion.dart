import 'package:flutter/material.dart';
import 'package:casas/styles.dart';
import 'package:casas/components/navBar.dart';

class Conclusion extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Coppel",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Coppel',
            style: TextStyle(
              color: azul,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: amarillo,
          leading: IconButton(icon: Icon(Icons.menu, color: azul), onPressed: () {}),
          elevation: 10,
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                  child: Text(
                    'Conclusión',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeTitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: Text('Con esta actividad final, que viene siendo el proyecto final de la unidad de la materia de Android por parte de la unidad 3, puedo decir con seguridad que he aprendido algunos nuevos conceptos de Flutter/Flutlab/Dart, que he podido aplicar para poder realizar el desarollo de las aplicaciones propuestas a alo largo del semestre y de la unidad, muchos de estos conceptos los he podido aplicar al desarollar esta app del negocio que se me asigno desde el semestre pasado, como lo puden ser los widgets reutilizables, la identacion del codigo, la sintaxis de muchos de los elementos disponibles en el lenguaje de dart para el desarrollo de aplicaciones moviles, asi como tambien el uso de los widgets requeridos como pueden ser los ListView, GridView, NavBar, AppBar, Stack, Contianers, etc.'),
                ),
              ],
            ),
            navBar(contexto: context, active: 'conclusion')
          ],
        ),
      ),
    );
  }
}
