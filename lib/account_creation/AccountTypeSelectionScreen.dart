import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:soutraliapp_mobile/account_creation/RegistrationScreen.dart';


class AccountTypeSelectionScreen extends StatefulWidget {
  @override
  _AccountTypeSelectionScreenState createState() =>
      _AccountTypeSelectionScreenState();
}

class _AccountTypeSelectionScreenState
    extends State<AccountTypeSelectionScreen> {
  String accountType = "Particulier";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NeumorphicButton(
                style: NeumorphicStyle(
                  color: Colors.green[100],
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.circle(),
                  depth: 5,
                ),
                padding: const EdgeInsets.all(12.0),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20),
              NeumorphicText(
                "Créez un compte",
                style: NeumorphicStyle(
                  color: Colors.green,
                  depth: 5,
                ),
                textStyle: NeumorphicTextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              NeumorphicText(
                "Pour bénéficier d’une expérience personnalisée sur notre service, il est important de fournir des informations sur votre activité et vos centres d’intérêts.",
                style: NeumorphicStyle(
                  color: Colors.black54,
                  depth: 2,
                ),
              ),
              SizedBox(height: 30),
              NeumorphicText(
                "Sélectionnez :",
                style: NeumorphicStyle(
                  color: Colors.black,
                  depth: 4,
                ),
                textStyle: NeumorphicTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              NeumorphicRadio(
                value: "Particulier",
                groupValue: accountType,
                onChanged: (value) {
                  setState(() {
                    accountType = value as String;
                  });
                },
                style: NeumorphicRadioStyle(
                  unselectedColor: Colors.green[100],
                  selectedColor: Colors.green,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                ),
                child: Text("Particulier"),
              ),
              SizedBox(height: 10),
              NeumorphicRadio(
                value: "Prestataire",
                groupValue: accountType,
                onChanged: (value) {
                  setState(() {
                    accountType = value as String;
                  });
                },
                style: NeumorphicRadioStyle(
                  unselectedColor: Colors.green[100],
                  selectedColor: Colors.green,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                ),
                child: Text("Prestataire"),
              ),
              Spacer(),
              NeumorphicButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationScreen()),
                  );
                },
                style: NeumorphicStyle(
                  color: Colors.green[100],
                  shape: NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  depth: 5,
                ),
                child: Center(
                  child: Text(
                    "Je crée un compte !",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(height: 10),
              NeumorphicButton(
                onPressed: () {
                  // Implémenter la navigation vers l'écran de compte professionnel
                },
                style: NeumorphicStyle(
                  color: Colors.green[100],
                  shape: NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  depth: 5,
                ),
                child: Center(
                  child: Text(
                    "Voulez-vous créer plutôt un compte professionnel ? Cliquez ici !",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
