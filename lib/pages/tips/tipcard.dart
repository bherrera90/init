import 'package:flutter/material.dart';
//import 'dart:math' as math; 

class TipCard extends StatelessWidget {
  final String imagenPath;
  final String avatarImagenPath;
  final double? width;
  final double? height;
  final String title;
  final String subtitle;
  //final IconData icon;
  final VoidCallback? onTap;

  const TipCard({super.key, 
    this.imagenPath = '',
    this.avatarImagenPath='',
    this.width,
    this.height,
    required this.title,
    required this.subtitle,
    //required this.icon,
    this.onTap,
  });

@override
Widget build(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
    child: GestureDetector(
      onTap: onTap, // Ejecuta la función cuando se toca la tarjeta
      child: Row(
        children: [
          // Columna para la imagen
          Container(
            width: width,
            height: height,
            child: Image.asset(imagenPath, fit: BoxFit.cover),
          ),
          const SizedBox(width: 16), // Espaciado entre imagen y texto
          // Columna para el texto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)), // Título
                const SizedBox(height: 4), // Espaciado entre título y subtítulo
                Text(subtitle), // Subtítulo
              ],
            ),
          ),
          //const SizedBox(width: 8), // Espaciado entre texto e ícono
          // Columna para el ícono
          CircleAvatar(
              radius: 13,
              backgroundColor: const Color.fromARGB(255, 243, 241, 243),
              backgroundImage: AssetImage(avatarImagenPath), // Imagen para el avatar
            ),
            const SizedBox(width: 16),
         /* CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 243, 241, 243),
            
            child: Transform.rotate(
              angle: -math.pi / 1,
              child: Icon(
              icon,
              color: const Color.fromRGBO(202,208,216,100),//, g, b, opacity)
              //fromARGB(202, 208, 216, 100),
              ),
            ),
          ),
        */
        ],
      ),
    ),
  );
}


/*
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: GestureDetector(
        onTap: onTap,  // Ejecuta la función cuando se toca la tarjeta
        child: Row(
          children: [ 
            Container(
              width: width,
              height: height,
              child: Image.asset(imagenPath)
              )
              ],
              const SizedBox(width: 16),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title)
                  const const SizedBox(height:4),
                  Text(subtitle)
                ],
              ),
            ),
            const SizedBox(width: 16),
            CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 243, 241, 243),
                child: Icon(
                  icon,
                  color: Colors.purple[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  */      
        
        /*
        (
           Image.asset(imagenPath, width: width, height: height),
          title: Text(title),
          subtitle: Text(subtitle),
          leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 243, 241, 243),
            
            child: Icon(
              icon,
              color: Colors.purple[700],
            ),
          ),
          
          
        ),
      ),
    );
  }
}
*/
}

class TipItem extends StatelessWidget {
  final String imagenPath;
  final double? width;
  final double? height;
  final String text;

  const TipItem({
    super.key,
    this.imagenPath = '',
    this.width,
    this.height,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Image.asset(imagenPath, width: width, height: height),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

