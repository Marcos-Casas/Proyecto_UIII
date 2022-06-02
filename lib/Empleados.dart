import 'package:flutter/material.dart';
import 'package:casas/styles.dart';
import 'package:casas/components/navBar.dart';

class Empleados extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coppel',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Coppel',
            style: TextStyle(
              color: azul,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: amarillo,
          leading: IconButton(
            icon: Icon(Icons.menu, color: azul),
            onPressed: () {},
          ),
          centerTitle: true,
          elevation: 10,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                    child: Text(
                      'Empleados del mes',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSizeTitles,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: SizedBox(
                      height: 350,
                      width: double.infinity,
                      child: ListView(
                        children: ListTile.divideTiles(
                          context: context,
                          tiles: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/empleado1.png?raw=true'),
                              ),
                              title: Text('Rocío Vidal'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/empleado2.jpg?raw=true'),
                              ),
                              title: Text('Javier Santaolalla'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/empleado3.png?raw=true'),
                              ),
                              title: Text('José Luis Crespo'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/empleado4.webp'),
                              ),
                              title: Text('Neil deGrasse Tyson'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/empleado5.jpg?raw=true'),
                              ),
                              title: Text('Mikephy'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/empleado6.jpg?raw=true'),
                              ),
                              title: Text('Derek Alexander Muller'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/empleado7.webp'),
                              ),
                              title: Text('Marques Brownlee'),
                            ),
                          ],
                        ).toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                    child: Text(
                      'Registro de empleados',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSizeTitles,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Ingresa tu ID de empleado',
                        filled: true,
                        fillColor: Color(0xFFEBEBEB),
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
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Ingresa tu sucursal',
                        filled: true,
                        fillColor: Color(0xFFEBEBEB),
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
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120.0,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Edad',
                              filled: true,
                              fillColor: Color(0xFFEBEBEB),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Sexo',
                                filled: true,
                                fillColor: Color(0xFFEBEBEB),
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Ingresa tu correo',
                        filled: true,
                        fillColor: Color(0xFFEBEBEB),
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
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Ingresa tu contraseña',
                        filled: true,
                        fillColor: Color(0xFFEBEBEB),
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
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Registro Empleados'),
                              content: const Text('¡Se han guardado sus datos correctamente!'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancelar'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                          child: Text('GUARDAR DATOS'),
                          style: ElevatedButton.styleFrom(
                            primary: azul,
                            minimumSize: Size(
                              160,
                              60,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Registro Empleados'),
                              content: const Text('Esta acción es definitiva, ¿Deseas continuar?'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancelar'),
                                  child: const Text('Cancelar', style: TextStyle(color: Colors.red)),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('Continuar'),
                                ),
                              ],
                            ),
                          ),
                          child: Text('ELIMINAR DATOS'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            minimumSize: Size(
                              160,
                              60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  )
                ],
              ),
            ),
            navBar(
              contexto: context,
              active: 'empleados',
            ),
          ],
        ),
      ),
    );
  }
}
