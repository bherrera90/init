import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/tips/blocktips.dart';
import 'package:flutter_application_1/pages/tips/concentrationtips.dart';
import 'package:flutter_application_1/pages/tips/headertip.dart';

import 'sleeptips.dart';
import 'tipcard.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
        //title: Text("Detalle del Kit"),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              HeaderTip(showText: false),
              Image.asset('assets/images/home/6H-Sec1 Banner 2 Tips.png'),
              const SizedBox(height: 10),
              TipCard(
                imagenPath: 'assets/icons/tip/7T- Tip 1 icono.png',
                //avatarImagenPath: 'assets/icons/tip/7T- info icono.png',
                width: 60,
                height: 60,
                //imagenPath: ,
                title: 'Bloquea y reporta',
                subtitle: 'Uso responsable de redes sociales',
                avatarImagenPath: 'assets/icons/tip/7T- info icono.png',
                //icon: Icons.error,
                onTap: () {
                  // Aquí puedes agregar otra navegación si deseas
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Blocktips(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              TipCard(
                imagenPath: 'assets/icons/tip/7T- Tip 2 icono.png',
                width: 60,
                height: 60,
                title: 'Duerme mejor',
                subtitle: 'Hábitos del sueño',
                //icon: Icons.error,
                avatarImagenPath: 'assets/icons/tip/7T- info icono.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SleepTipsWidget(),
                    ),
                  );
                }, 
              ),
              const SizedBox(height: 10),
              TipCard(
                imagenPath: 'assets/icons/tip/7T- Tip 3 icono.png',
                width: 60,
                height: 60,
                title: 'Concéntrate',
                subtitle: 'Estudia mejor',
                //icon: Icons.error,
                avatarImagenPath: 'assets/icons/tip/7T- info icono.png',
                onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Concentrationtips(),
                    ),
                  );
                  // Aquí puedes agregar otra navegación si deseas
                },
              ),
              // Agrega más TipCards aquí si es necesario
            ],
          ),
        ),
      ),
    );
  }
}

