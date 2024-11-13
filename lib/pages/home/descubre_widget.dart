import 'package:flutter/material.dart';
import 'carrusel_widget.dart';  // Importamos el CarruselWidget

class DescubreWidget extends StatelessWidget {
  const DescubreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      width: double.infinity,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Descubre:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          CarruselWidget(  // Carrusel de la sección "Descubre"
            images: [
              
              {
                'image':'assets/images/home/6H-Carrusel Servicios DMQ banner.png',
              'route': '/tips',
              },
              {
                'image':'assets/images/home/6H-CarruselServDMQbanner-CasaSomos.png',
              'route': '/tips',
              },
              {
                'image':'assets/images/home/6H-CarruselServDMQbanner-EventCult.png',
              'route': '/tips',
              }
            ],
          ),
        ],
      ),
    );
  }
}
