import 'package:flutter/material.dart';
import 'package:userpreferences_app/src/pages/settings_page.dart';
import 'package:userpreferences_app/src/pages/shared_prefs/preferencias.dart';
import 'package:userpreferences_app/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();


  @override
  Widget build(BuildContext context) {

    prefs.ultimaPagina = HomePage.routeName;


    return Scaffold(
        appBar: AppBar(
          title: Text('Prefencias de usuario'),
          backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
        ) ,
        drawer: MenuDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Color secundario:${prefs.colorSecundario}'),
            Divider(),
            Text('Genero: ${prefs.genero}'),
            Divider(),
            Text('Nombre usuario:${prefs.nombreUsuario}'),
            Divider(),
          ],
        )
    );
  }

}
