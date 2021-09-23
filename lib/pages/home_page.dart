import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/Providers/ui_provider.dart';
import 'package:qr_scanner/pages/direcciones_page.dart';
import 'package:qr_scanner/pages/mapas_page.dart';
import 'package:qr_scanner/widgets/custom_navigatorbar.dart';
import 'package:qr_scanner/widgets/scan_buttonfloating.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        centerTitle: true,
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.delete_forever),
          )
        ],
      ),
      body: _HomePageBody(),


      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

    //obtener el selected menu opt

    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex){
      case 0:
      return MapasPage();

      case 1:
      return DireccionesPage();

      default:
        return MapasPage();
    }

  }
}