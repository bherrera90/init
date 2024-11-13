import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/kit/kit.dart';
//import 'package:flutter_application_1/pages/tips/tips.dart';


class KitWidget extends StatelessWidget {
  const KitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kit Te Acompaño:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
           GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Kit()),
              );
            },
          //Image.asset('assets/images/home/6H-S5 BannerTeAcompano.png'),  // Imagen del Kit
            child:Image.asset('assets/images/home/6H-S5 BannerTeAcompano.png'),
             )  // Imagen del Kit
        ],
      ),
    );
  }
}