import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      appBar: AppBar(
        title: NeumorphicText(
          "Inscription",
          style: NeumorphicStyle(
            color: Colors.green,
            depth: 4,
          ),
          textStyle: NeumorphicTextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NeumorphicText(
              "Créez un compte",
              style: NeumorphicStyle(
                color: Colors.green,
                depth: 4,
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Neumorphic(
              style: NeumorphicStyle(
                depth: 5,
                color: Colors.white,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Nom complet",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
            SizedBox(height: 10),
            Neumorphic(
              style: NeumorphicStyle(
                depth: 5,
                color: Colors.white,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
            SizedBox(height: 10),
            Neumorphic(
              style: NeumorphicStyle(
                depth: 5,
                color: Colors.white,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Mot de passe",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20),
            NeumorphicButton(
              onPressed: () {
                // Ajouter la logique de soumission du formulaire ici
              },
              style: NeumorphicStyle(
                color: Colors.green[100],
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                depth: 5,
              ),
              child: Center(
                child: Text(
                  "S'inscrire",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
