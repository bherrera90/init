import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';  // Para llamadas

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hola Pao",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              //color: Colors.blue[900],
            ),
          ),
          GestureDetector(
            onTap: () {
              //_makePhoneCall('tel:+123456789');
            },
            child: Image.asset('assets/images/home/6H-Icon-teleconsulta.png',
            width: 35, // Optional: Set the width of the image
            height: 35,)
            //child: Icon(Icons.call, color: Colors.blue[900]),  // Ícono de llamada
          ),
        ],
      ),
    );
  }
/*
  // Función para realizar una llamada
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo realizar la llamada $url';
    }
  }
  */
}
