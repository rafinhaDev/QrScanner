import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final currentIndex = 0;

    return BottomNavigationBar(
      
      currentIndex: currentIndex,
      elevation:  0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map,color: Colors.teal[400]),
          label: 'Mapa'),

        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration,color: Colors.teal[400]),
          label: 'Direcciones',),
                
      ]);
  }
}