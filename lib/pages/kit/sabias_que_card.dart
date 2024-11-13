
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/kit/sabias_que.dart';
//import 'package:flutter_application_1/pages/sabias/sabias_que.dart';
//import 'package:flutter_application_1/pages/sabias/sabias.dart';


//import 'package:flutter/material.dart';
//import 'package:flutter_application_1/pages/tips/headertip.dart';
//import 'package:flutter_application_1/pages/tips/tipcard.dart';

class KitCard extends StatelessWidget {
  final KitItem item;
  final PageController pageController;
  final int currentIndex;
  final int totalItems;

  const KitCard({
    required this.item,
    required this.pageController,
    required this.currentIndex,
    required this.totalItems,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          item.imagePath,
          fit: BoxFit.cover,
          height: 150, // Ajusta la altura para evitar el desbordamiento
        ),
        const SizedBox(height: 10),
        Text(
          item.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          item.description,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}


/*
class KitCard extends StatelessWidget {
  final KitItem item;
  final PageController pageController;
  final int currentIndex;
  final int totalItems;

  const KitCard({super.key, 
    required this.item,
    required this.pageController,
    required this.currentIndex,
    required this.totalItems,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Color de fondo
          borderRadius: BorderRadius.circular(15), // Borde redondeado
          border: Border.all(
            color: Colors.orangeAccent, // Color del borde (puedes cambiarlo)
            width: 3, // Grosor del borde
          ),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          Text(
            item.title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepOrange),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Image.asset(
            item.imagePath, // Aquí cargamos la imagen desde la ruta del asset
            height: 100, // Tamaño de la imagen
          ),
          SizedBox(height: 20),
          Text(
            item.description,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: currentIndex > 0
                    ? () {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    : null,
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: currentIndex < totalItems - 1
                    ? () {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    : null,
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    )
    );
  }
}
*/