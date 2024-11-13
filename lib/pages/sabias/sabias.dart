import 'package:flutter/material.dart';
//import 'package:flutter_application_1/pages/sabias/headersabias.dart';
//import 'package:flutter_application_1/pages/sabias/sabias_que_card.dart';

class SabiasWidget extends StatelessWidget {
  const SabiasWidget({super.key});

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
              //HeaderSabias(),
              //HeaderTip(), // Asegúrate de que HeaderTip sea un widget válido
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
                     // child: 
                     Column(
                        children: [
                          //Icon(Icons.report, size: 60, color: Colors.blue),
                          Image.asset(
                            'assets/icons/tip/7T- Tip 2 icono.png', // Verifica la ruta
                            width: 86,
                            height: 86,
                          ),
                          const SizedBox(height: 12), // Espacio entre imagen y texto
                          Text(
                            'Duerme mejor',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900],
                            ),
                          ),
                          Text(
                            'Hábitos del sueño',
                            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    //),
                    const SizedBox(height: 20),
                    // Título para la sección de consejos
                    const SectionTitle(title: 'Consejos Importantes'),
                    const SizedBox(height: 10), // Espacio después del título
                    /*TipItem(
                      imagenPath: 'assets/icons/tip/7T-Tip 2 icono 1.png',
                      width: 53,
                      height: 56,
                      text:
                          '- Evita las pantallas antes de dormir: apaga los dispositivos al menos 30 minutos antes de acostarte.',
                    ),
                    TipItem(
                      imagenPath: 'assets/icons/tip/7T-Tip 2 icono 2.png',
                      width: 53,
                      height: 56,
                      text:
                          '- Prepara el ambiente manteniendo la habitación en oscuridad y sin ruidos.',
                    ),
                    TipItem(
                      imagenPath: 'assets/icons/tip/7T-Tip 2 icono 3.png',
                      width: 53,
                      height: 56,
                      //icon: Icons.warning_amber_outlined,
                      //color: Colors.red,
                      text:
                          '- Usa la cama solo para dormir; evita hacer tareas u otras actividades en ella para que tu cerebro la asocie únicamente con el descanso.',
                    ),
                    TipItem(
                      imagenPath: 'assets/icons/tip/7T-Tip 2 icono 4.png',
                      width: 53,
                      height: 56,
                      //icon: Icons.warning_amber_outlined,
                      //color: Colors.red,
                      text:
                          '- Evita tomar cafeína y consumir comidas pesadas al menos cuatro horas antes de acostarte.',
                    ),
                    TipItem(
                      //icon: Icons.warning_amber_outlined,
                      //color: Colors.red,
                      imagenPath: 'assets/icons/tip/7T-Tip 2 icono 5.png',
                      width: 53,
                      height: 56,
                      text:
                          '- Mantén un horario fijo: acuéstate y despiértate a la misma hora todos los días.',
                    ),
                    */
                  ],
                ),
              ),
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
  final IconData icon;
  final Color color;
  final String text;

  const TipItem({super.key, 
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 40),
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
