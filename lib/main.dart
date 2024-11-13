import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/carrusel_widget.dart';
import 'package:flutter_application_1/pages/kit/kit.dart';
import 'package:flutter_application_1/pages/sabias/sabias.dart';
import 'package:flutter_application_1/pages/sabias/sabias_que.dart';
//import 'package:flutter_application_1/pages/tips/sleeptips.dart';
import 'package:flutter_application_1/pages/tips/tips.dart';

import 'pages/home/current_plan_card.dart';
import 'pages/home/descubre_widget.dart';
//import 'home/header_widget.dart';
//import 'home/imagecarousel.dart';
import 'pages/home/header.dart';
import 'pages/home/kit_widget.dart';
import 'pages/home/modmeter.dart';
//import 'pages/tips/tips.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/tips':(context)=> const Tips(),
        '/sleep': (context)=> const SabiasWidget(),
        '/sabiasque': (context)=> const SabiasQue(),
        '/kit': (context)=> const Kit(),
      },
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Mi App Modular"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(), // Texto e imagen en los extremos
            const SizedBox(height: 10),

            // Carrusel de imágenes con GestureDetector
            CarruselWidget(
              images: [
                {
                'image':'assets/images/home/6H-Sec1 Banner 1.png',
                'route': '/sleep',
                },
                {
                  'image':'assets/images/home/6H-Sec1 Banner 2 SabiasQ.png',
                  'route': '/sabiasque',
                  },

                {
                  'image':'assets/images/home/6H-Sec1 Banner 2 Tips.png',
                  'route':'/tips'}
              ],
            ),
              
              /*
              images: [
                // Lista de imágenes y sus respectivos GestureDetector
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/tips');
                  },
                  child: Image.asset('assets/images/home/6H-Sec1 Banner 2 SabiasQ.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/tips');
                  },
                  child: Image.asset('assets/images/home/6H-Sec1 Banner 2 Tips.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/tips');
                  },
                  child: Image.asset('assets/images/home/6H-Sec1 Banner 2 Tips.png'),
                ),
              ],
            ),
*/
            const SizedBox(height: 10),
            Modmeter(),
            const SizedBox(height: 10),
            CurrentPlanCard(),
            const SizedBox(height: 10),
            DescubreWidget(),
            const SizedBox(height: 10),
            KitWidget(),
            const SizedBox(height: 10),
            //KitWidget(),
          ],
        ),
      ),
    );
  }
}

  /*
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Mi App Modular"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(), // Texto e imagen en los extremos
            //ImageCarousel(), // Carrusel de imágenes
            const SizedBox(height: 10),
            CarruselWidget(  // Carrusel de "Completa tu nuevo Curioso"
                images: [
                  GestureDetector(
                    onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tips()), // Navega a Tips
                    );
                  },
                  child: Image.asset('assets/images/home/6H-Sec1 Banner 2 SabiasQ.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tips()), // Navega a Tips
                    );
                  },
                  child: Image.asset('assets/images/home/6H-Sec1 Banner 2 Tips.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tips()), // Navega a Tips
                    );
                  },
                  child: Image.asset('assets/images/home/6H-Sec1 Banner 2 Tips.png'),
                ),



                /*
                'assets/images/home/6H-Sec1 Banner 2 SabiasQ.png',
                'assets/images/home/6H-Sec1 Banner 1.png',
                'assets/images/home/6H-Sec1 Banner 2 Tips.png'
                */
                
                ],
              ),
            
            const SizedBox(height: 10),
            Modmeter(),
            const SizedBox(height: 10),
            CurrentPlanCard(),
            const SizedBox(height: 10),
            DescubreWidget(), 
            const SizedBox(height: 10),
            KitWidget(), 
            const SizedBox(height: 10),
            KitWidget(), 
          ],
        ),
      ),
    );
  }

}
*/
/*
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
          //Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //children: [
             KitWidget(),  
            /*Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hola Paola',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            //Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/6H-Icon-teleconsulta.png', // Ruta de la imagen
                width: 50, // Ajusta el tamaño según prefieras
                height: 50,
              ),
            ),*/
            //ImageCarousel(),
            //const SizedBox(height: 10),
           
          ],
          ),
      ),
    );
  }
}
/*
        ],
      
      ),

      
    );
  }
}
*/
*/