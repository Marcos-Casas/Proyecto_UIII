import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

List<String> imagenes = [
  "https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/PageView1.webp",
  "https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/PageView2.webp",
  "https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/PageView3.webp",
  "https://raw.githubusercontent.com/Marcos-Casas/Flutter-mis-imagenes/main/PageView4.webp",
];

Widget swiperHome() {
  return Container(
    width: double.infinity,
    height: 150.0,
    child: Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          imagenes[index],
          fit: BoxFit.cover,
        );
      },
      itemCount: imagenes.length,
      viewportFraction: 0.8,
      scale: 0.9,
      pagination: const SwiperPagination(),
      control: const SwiperControl(),
    ),
  );
}
