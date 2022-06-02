import 'package:flutter/material.dart';
import 'package:casas/styles.dart';
import 'package:casas/components/navBar.dart';
import 'package:casas/components/ClientCard.dart';

class Clientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: amarillo,
        elevation: 10,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu, color: azul), onPressed: () {}),
        title: Text("Coppel", style: TextStyle(color: azul, fontWeight: FontWeight.bold)),
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
                    'Registro de clientes',
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
                      labelText: 'Ingresa tu nombre',
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
                      labelText: 'Ingresa tu apellido',
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
                  child: ElevatedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Registro'),
                        content: const Text('¡Se han registrado sus datos correctamente!'),
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
                    child: Text('REGISTARSE'),
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
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    "Clientes Destacados",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeTitles,
                    ),
                  ),
                ),
                ClientCard(
                  imagen: 'https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/elon_musk_pfp.jpg?raw=true',
                  texto: '"The best on the net! Coppel has completely surpassed our expectations. Keep up the excellent work."',
                ),
                ClientCard(
                  imagen: 'https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/cr7_pfp.jpg?raw=true',
                  texto: '"Coppel impressed me on multiple levels. Coppel is the most valuable business resource we have EVER purchased. Its all good."',
                ),
                ClientCard(
                  imagen: 'https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/trump_pfp.jpg?raw=true',
                  texto: '"Coppel has really helped our business. Its really wonderful. Coppel is both attractive and highly adaptable. Thank You!"',
                ),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
          navBar(contexto: context, active: 'clientes')
        ],
      ),
    );
  }
}
