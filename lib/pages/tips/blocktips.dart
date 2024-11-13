import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/tips/headertip.dart';
import 'package:flutter_application_1/pages/tips/tipcard.dart';
//import 'package:flutter_application_1/pages/tips/tips.dart';


class Blocktips extends StatelessWidget {
  const Blocktips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Espacio alrededor del contenedor
          child: Column(
            children: [
              HeaderTip(), // Asegúrate de que HeaderTip sea un widget válido
              
              Container(
                padding: const EdgeInsets.all(16.0), // Espacio dentro del contenedor
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 1.0,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Center(
                      //child: 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/tip/7T- Tip 1 icono.png', // Verifica la ruta
                            width: 86,
                            height: 86,
                          ),
                          const SizedBox(height: 12), // Espacio entre imagen y texto
                          Text(
                            'Bloquea y reporta',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900],
                            ),
                          ),
                          Text(
                            'Uso responsable de redes sociales',
                            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    //),
                    const SizedBox(height: 20),
                    // Título para la sección de consejos
                    const SectionTitle(title: 'Consejos Importantes'),
                    const SizedBox(height: 10), // Espacio después del título
                    TipItem(
                      imagenPath: 'assets/icons/tip/7T-Tip 1 icono 1.png',
                      width: 47,
                      height: 60,
                      //icon: Icons.lock_outline,
                      //color: Colors.amber,
                      text:
                          '- Si alguien te molesta o te envía mensajes inapropiados, bloquea y reporta su cuenta.',
                    ),
                    TipItem(
                      imagenPath: 'assets/icons/tip/7T-Tip 1 icono 2.png',
                      width: 45,
                      height: 57,
                      //icon: Icons.person_outline,
                      //color: Colors.purple,
                      text:
                          '- No compartas tu información personal; evita publicar datos como tu dirección, teléfono o ubicación.',
                    ),
                    TipItem(
                      imagenPath: 'assets/icons/tip/7T-Tip 1 icono 3.png',
                      width: 53,
                      height: 56,
                      //icon: Icons.warning_amber_outlined,
                      //color: Colors.red,
                      text:
                          '- Cuida lo que publicas; todo lo que subes a internet puede quedarse allí para siempre.',
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            //const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blue[900],
      ),
    );
  }
}

/*
class TipItem extends StatelessWidget {
  
  final String imagenPath;
  final double width;
  final double height;
  final String text;

  const TipItem({super.key, 
    
    required this.imagenPath,
    required this.width,
    required this.height,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagenPath, width: width, height: height,),
          //Icon(icon, color: color, size: 40),
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
*/
