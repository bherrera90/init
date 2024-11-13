import 'package:flutter/material.dart';

class Modmeter extends StatefulWidget {
  @override
  _MeterState createState() => _MeterState();
}

class _MeterState extends State<Modmeter> {
  double _sliderValue = 2.0; // Valor inicial del slider
  String? _titulo; // Título inicialmente nulo

  // Lista de colores para cada estado
  final List<Color> moodColors = [
    Colors.red, // Molesto
    Colors.orange, // Triste
    Colors.yellow, // Neutral
    Colors.lightGreen, // Feliz
    Colors.green, // Muy feliz
  ];

  // Lista de títulos para cada estado
  final List<String> moodTitles = [
    "¡Qué mal!",
    "Mejorando...",
    "Neutral",
    "Bien",
    "¡Excelente!",
  ];

  // Lista de imágenes
  final List<MoodItem> moodItems = [
    MoodItem(image: AssetImage('assets/icons/home_termometro/6H- S2 1Nada satisfecho icono.png')),
    MoodItem(image: AssetImage('assets/icons/home_termometro/6H- S2 2Poco satisfecho icono.png')),
    MoodItem(image: AssetImage('assets/icons/home_termometro/6H- S2 3Neutral icono.png')),
    MoodItem(image: AssetImage('assets/icons/home_termometro/6H- S2 4Satisfecho icono.png')),
    MoodItem(image: AssetImage('assets/icons/home_termometro/6H- S2 5Muy satisfecho icono.png')),
  ];

  void _onChanged(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Fondo blanco
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '¿Cómo va tu día?',
            style: TextStyle(fontSize: 20),
          ),
          //SizedBox(height: 20),

          // Mostrar las emociones en fila con el título encima solo para la imagen seleccionada
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(moodItems.length, (index) {
              double imageSize = index == _sliderValue.toInt() ? 60 : 40;
              return Column(
                children: [
                  // Mostrar el título solo para la imagen seleccionada
                  if (index == _sliderValue.toInt())
                    Text(
                      moodTitles[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  SizedBox(height: 10),
                  Image(
                    image: moodItems[index].image!,
                    height: imageSize,
                    width: imageSize,
                  ),
                ],
              );
            }),
          ),

          const SizedBox(height: 20),

          // Barra de colores personalizada
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 20,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: moodColors,
                    stops: [
                      0.0,
                      0.25,
                      0.5,
                      0.75,
                      1.0,
                    ], // Definir el rango de cada color
                  ),
                ),
              ),
              // Slider transparente encima de la barra de colores
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 15), // Cambiar tamaño del "thumb"
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  trackHeight: 20, // Alineación con el contenedor de colores
                  activeTrackColor: Colors.transparent, // Ocultar el track
                  inactiveTrackColor: Colors.transparent, // Ocultar track inactivo
                  thumbColor: Colors.white, // Color del "thumb"
                ),
                child: Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 4,
                  divisions: 4,
                  onChanged: _onChanged, // Aquí se llama a la función _onChanged
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MoodItem {
  final AssetImage? image;
  MoodItem({this.image});
}
