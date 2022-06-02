import 'package:flutter/material.dart';
import "package:casas/styles.dart";

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Ink(
          color: amarillo,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 20),
                child: Image.network("https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/logo_coppel.webp", width: 150, height: 150),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("¡Hola!",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: fontSizeTitles,
                          )),
                      Text("Inicia sesion con tu correo electronico",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: fontSizeText,
                          )),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Ingresa tu correo',
                            filled: true,
                            fillColor: Color(0xFFF5F5F5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Ingresa tu contraseña',
                            filled: true,
                            fillColor: Color(0xFFF5F5F5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/inicio');
                          },
                          child: Text('INGRESAR'),
                          style: ElevatedButton.styleFrom(
                            primary: azul,
                            minimumSize: Size(
                              double.infinity,
                              60,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('REGISTRARSE',
                              style: TextStyle(
                                color: azul,
                              )),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: Size(double.infinity, 60),
                            side: BorderSide(
                              width: 3.0,
                              color: azul,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
