import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/Providers/ui_provider.dart';
import 'package:qr_scanner/pages/home_page.dart';
import 'package:qr_scanner/pages/mapa_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider())
      ],
      
      child: MaterialApp(
        title: 'QR Reader',
       initialRoute: 'home',
       routes: {
         'home' : (_) => HomePage(),
         'mapa' : (_) => MapaPage()
       },
       theme: ThemeData(
         floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.teal[400]),
         primaryColor: Colors.teal[400]
       ),
      ),
    );
  }
}