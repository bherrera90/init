import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarruselWidget extends StatelessWidget {
  final List<Map<String,String>> images;  // Lista de rutas de imágenes

  const CarruselWidget({super.key, required this.images});

@override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0, // Ajusta la altura de las imágenes
        autoPlay: true, // Habilita la reproducción automática
        viewportFraction: 1.0, // Las imágenes ocuparán todo el espacio disponible
      ),
      items: images.map((imagePath) {
        return GestureDetector(
          onTap: () {
            // Navegar a la página '/tips' cuando la imagen sea tocada
            //Navigator.pushNamed(context, '/tips');
            Navigator.pushNamed(context, imagePath['route']!);
          },
          child: Image.asset(
            imagePath['image']!,
            fit: BoxFit.cover, // Ajusta el tamaño de la imagen para cubrir el contenedor
          ),
        );
      }).toList(),
    );
  }
}

/*
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 200, // Ajusta el tamaño del carrusel
      //width: 333,
      //width: double.infinity,
      //height: MediaQuery.of(context).size.height,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,  // Carrusel automático
          enlargeCenterPage: true,  // Aumenta la página central
          aspectRatio: 16 / 9,  // Relación de aspecto de las imágenes
          viewportFraction: 1.0,  // Tamaño de las imágenes al mostrar
        ),
        items: imagePaths.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  // Navegar a Tips cuando la imagen es tocada
                  Navigator.pushNamed(context, '/tips');
                },
                child: Image.asset(
                  imagePath, 
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}




/*
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';  // Para carruseles

class CarruselWidget extends StatelessWidget {
  final List<String> imagePaths;  // Lista de rutas de imágenes

  const CarruselWidget({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Ajusta el tamaño del carrusel
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,  // Carrusel automático
          enlargeCenterPage: true,  // Aumenta la página central
          aspectRatio: 16 / 9,  // Relación de aspecto de las imágenes
          viewportFraction: 0.8,  // Tamaño de las imágenes al mostrar
        ),
        items: imagePaths.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Image.asset(imagePath, fit: BoxFit.cover);  // Ajusta el modo de ajuste
            },
          );
        }).toList(),
      ),
    );
  }
}

/*
class CarruselWidget extends StatelessWidget {
  final List<Widget> images;

  const CarruselWidget({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Ajusta el tamaño del carrusel
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: images.map((image) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: image,
          );
        }).toList(), // Lista de widgets con padding
      ),
    );
  }
}
*/

*/
*/