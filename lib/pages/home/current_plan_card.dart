import 'package:flutter/material.dart';

class CurrentPlanCard extends StatelessWidget {
  const CurrentPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(10),
      color: Colors.white,
      child: ListTile(
        leading: Icon(Icons.toys),
        title: Text('Plan Cometa'),
        subtitle: Text('Estas actividades te pueden ayudar a sentirte mejor.'),
      ),
    );
  }
}
