import 'package:flutter/material.dart';
import 'package:userpreferences_app/src/pages/home_page.dart';
import 'package:userpreferences_app/src/pages/settings_page.dart';
import 'package:userpreferences_app/src/pages/shared_prefs/preferencias.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Preferencias de usuario',
        initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName : (BuildContext context)  => HomePage(),
        SettingsPage.routeName : (BuildContext context)  => SettingsPage(),

      },
        );
  }
}
