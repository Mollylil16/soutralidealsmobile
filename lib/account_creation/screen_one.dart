import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountTypeSelectionScreen(),
    );
  }
}

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
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {},
              ),
              SizedBox(height: 20),
              Text(
                "Créez un compte",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Pour bénéficier d’une expérience personnalisée sur notre service, il est important de fournir des informations sur votre activité et vos centres d’intérêts.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 30),
              Text(
                "Sélectionnez :",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RadioListTile(
                title: Text("Particulier"),
                value: "Particulier",
                groupValue: accountType,
                onChanged: (value) {
                  setState(() {
                    accountType = value!;
                  });
                },
              ),
              RadioListTile(
                title: Text("Prestataire"),
                value: "Prestataire",
                groupValue: accountType,
                onChanged: (value) {
                  setState(() {
                    accountType = value!;
                  });
                },
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Implement navigation to registration screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text("Je crée un compte !"),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Implement navigation to professional account screen
                },
                child: Text(
                  "Voulez-vous créez plutôt un compte professionnel ? clique ici !",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
