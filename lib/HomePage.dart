import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:casas/components/slider_home.dart';
import 'package:casas/components/CircleWidget.dart';
import 'package:casas/components/ArticleCard.dart';
import 'package:casas/styles.dart';
import 'package:casas/components/navBar.dart';

class HomePage extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        debugShowCheckedModeBanner: false,
        title: 'Coppel',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: amarillo,
            elevation: 10,
            title: Text('Coppel', style: TextStyle(color: azul, fontWeight: FontWeight.bold)),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu, color: azul),
              onPressed: () {},
            ),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Texto de Bienvenida
                    Padding(padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0), child: Text("Bienvenido", textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: fontSizeTitles))),
                    //Contenedor del Swiper
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: swiperHome(),
                    ),
                    //Imagen abajo del swiper
                    Padding(padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10), child: Image.network('https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/ImageW_infinity.webp')),
                    //Contenedor de Servicios Coppel
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text('Servicios Coppel',
                                style: TextStyle(
                                  color: azul,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizeSubtitles,
                                )),
                          ),
                          //Fila de Servicios de Coppel
                          SingleChildScrollView(
                              child: Row(
                            children: [
                              CircleWidget(
                                texto: 'Estado de cuenta',
                                color: azul,
                                icono: (FontAwesomeIcons.fileLines),
                              ),
                              CircleWidget(
                                texto: 'Abonos',
                                color: azul,
                                icono: (Icons.attach_money),
                              ),
                              CircleWidget(
                                texto: 'Préstamos',
                                color: azul,
                                icono: Icons.money,
                              ),
                              CircleWidget(
                                texto: 'CoppelMax',
                                color: Colors.purple,
                                icono: Icons.auto_graph,
                              )
                            ],
                          ))
                        ],
                      ),
                    ),
                    //Contenedor de Departamentos de Coppel
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Text('Departamentos Coppel',
                                style: TextStyle(
                                  color: azul,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizeSubtitles,
                                )),
                          ),
                          //Fila de Servicios de Coppel
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  CircleWidget(
                                    icono: (Icons.local_offer_rounded),
                                    texto: 'Hot Sales',
                                    color: Colors.red,
                                  ),
                                  CircleWidget(
                                    icono: (FontAwesomeIcons.shoePrints),
                                    texto: 'Zapatos',
                                    color: azul,
                                  ),
                                  CircleWidget(
                                    icono: (Icons.chair_rounded),
                                    texto: 'Muebles',
                                    color: azul,
                                  ),
                                  CircleWidget(
                                    icono: Icons.monitor,
                                    texto: "Electronica",
                                    color: azul,
                                  ),
                                  CircleWidget(
                                    icono: (FontAwesomeIcons.glasses),
                                    texto: "Accesorios",
                                    color: azul,
                                  ),
                                  CircleWidget(
                                    icono: Icons.smartphone_outlined,
                                    texto: "Celulares",
                                    color: azul,
                                  ),
                                  CircleWidget(
                                    icono: (Icons.soap_rounded),
                                    texto: "Higiene",
                                    color: azul,
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text("Ofertas",
                            style: TextStyle(
                              color: azul,
                              fontSize: fontSizeSubtitles,
                              fontWeight: FontWeight.bold,
                            ))),
                    ArticleCard(
                      titulo: 'Motocicleta Veloci Razzer 197 cc 2022',
                      precio: '33,999',
                      imagen: 'https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/articulo_moto.jpg?raw=true',
                    ),
                    ArticleCard(
                      titulo: 'Lavadora LG Digital WT22BSS6H 22 kg Negro',
                      precio: '17,200',
                      imagen: 'https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/articulo_lavadora.webp',
                    ),
                    ArticleCard(
                      titulo: 'Apple iPhone 13, 8GB RAM, 128GB.',
                      precio: '16,000',
                      imagen: 'https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/articulo_iphone.webp',
                    ),
                    SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
              navBar(contexto: context, active: 'inicio'),
            ],
          ),
          // bottomNavigationBar: navBar(),
        ));
  }
}
