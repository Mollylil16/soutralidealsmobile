import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:soutraliapp_mobile/account_creation/AccountTypeSelectionScreen.dart';
import 'package:soutraliapp_mobile/account_creation/HomeScreen.dart';
import 'package:soutraliapp_mobile/account_creation/RegistrationScreen.dart';
 // Importez votre fichier d'interface 3

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Colors.green[100]!,
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AccountTypeSelectionScreen(),
        '/home': (context) => HomeScreen(),
        '/registration': (context) => RegistrationScreen(),
      },
    );
  }
}
