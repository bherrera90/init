import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/kit/sabias_que_card.dart';
import 'package:flutter_application_1/pages/sabias/headersabiasque.dart';
//import 'package:flutter_application_1/pages/sabias/sabias_que_card.dart';
//import 'package:flutter_application_1/pages/tips/headertip.dart';

class KitItem {
  final String title;
  final String description;
  final String imagePath;

  KitItem({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class KitQue extends StatefulWidget {
  const KitQue({super.key});

  @override
  _KitQuePageState createState() => _KitQuePageState();
}

class _KitQuePageState extends State<KitQue> {
  final PageController _pageController = PageController();

  final List<KitItem> items = [
    KitItem(
      title: "Presta atención a cambios bruscos en el comportamiento",
      description: "Si alguien pasa de estar tranquilo a estar irritable, muy ansioso o deprimido, puede ser una señal de que está en crisis.",
      imagePath: 'assets/images/sabiasque/Frame.png',
    ),
    KitItem(
      title: "¿Sabías que...?",
      description: "Cada vez que dormimos, ayudamos a que la información del día se grabe en nuestra memoria.",
      imagePath: 'assets/images/sabiasque/g8733.png',
    ),
    KitItem(
      title: "¿Sabías que...?",
      description: "El tiempo por el cual podemos mantener la atención es de aproximadamente 20 minutos.",
      imagePath: 'assets/images/sabiasque/FILLED OUTLINE.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.grey[200],
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          HeaderSabiasQue(showText: false),
          Image.asset('assets/images/home/6H-Sec1 Banner 2 SabiasQ.png'),
          const SizedBox(height: 10),
          SizedBox(
            height: 300, // Define una altura para el PageView
            child: PageView.builder(
              controller: _pageController,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return KitCard(
                  item: items[index],
                  pageController: _pageController,
                  currentIndex: index,
                  totalItems: items.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
