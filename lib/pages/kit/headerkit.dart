import 'package:flutter/material.dart';

class HeaderKit extends StatelessWidget {
  final bool showText;

  const HeaderKit({super.key, this.showText=true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context); // Regresa a la pantalla anterior
            },
            child: Row(
              children: [
                Icon(Icons.arrow_back, color: Theme.of(context).primaryColor), // Icono de retroceso
                const SizedBox(width: 4), // Espacio entre el icono y el texto
                if (showText)
                Text(
                  'Tips',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/home/6H-Icon-teleconsulta.png', // Ruta de la imagen
            width: 50,
            height: 50,
          ),
        ),
      ],
    );
  }
}