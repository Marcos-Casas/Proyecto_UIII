import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:casas/styles.dart';
import 'package:casas/components/navBar.dart';
import 'package:casas/components/ArticleColumn.dart';

class Articulos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: amarillo,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: azul,
          onPressed: () {},
        ),
        title: Text(
          'Coppel',
          style: TextStyle(color: azul, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Text(
                      'Articulos en descuento',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSizeTitles,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 600,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        // childAspectRatio: 1,
                      ),
                      // scrollDirection: Axis.vertical,
                      children: [
                        ArticleColumn(
                          imagen: "https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/laptop_huawei.jpg?raw=true",
                          titulo: 'Laptop Huawei Matebook D16',
                        ),
                        ArticleColumn(
                          imagen: "https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/articulo_iphone.webp",
                          titulo: "iPhone 8 64GB Negro",
                        ),
                        ArticleColumn(
                          imagen: "https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/articulo_lavadora.webp",
                          titulo: "Lavadora LG Digital 22K Negro ",
                        ),
                        ArticleColumn(
                          imagen: "https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/articulo_moto.jpg?raw=true",
                          titulo: "Motocicleta Veloci Razzer 197 cc 2022",
                        ),
                        ArticleColumn(
                          imagen: "https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/galaxy_s8.webp",
                          titulo: 'Samsung Galaxy S8 64GB Negro',
                        ),
                        ArticleColumn(
                          imagen: "https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/sneakers.png?raw=true",
                          titulo: "Nike Air Force One Blancos/Rojos Low",
                        ),
                        ArticleColumn(
                          imagen: "https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/laptop_hp.jpg?raw=true",
                          titulo: 'Laptop HP-AX111LA 14" Intel Celeron 4GB 64GB',
                        ),
                        ArticleColumn(
                          imagen: "https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/galaxy_buds_pro.jpg?raw=true",
                          titulo: 'Samsung Galaxy Buds Pro',
                        ),
                        ArticleColumn(
                          imagen: "https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/balon.jpg?raw=true",
                          titulo: "Adidas AZ5204 5 Euro 2016 Glider",
                        ),
                        ArticleColumn(
                          imagen: "https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/camisa.jpg?raw=true",
                          titulo: "Camisa para hombre rayada",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
          navBar(
            contexto: context,
            active: 'articulos',
          )
        ],
      ),
    );
  }
}
