import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      appBar: AppBar(
        title: Row(
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle(),
                depth: 3,
                intensity: 0.8,
                color: Colors.green[100],
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
            SizedBox(width: 10),
            NeumorphicText(
              "SOUTRALI DEALS",
              style: NeumorphicStyle(
                color: Colors.green,
                depth: 4,
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          NeumorphicButton(
            onPressed: () {},
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.circle(),
              depth: 3,
              intensity: 0.8,
              color: Colors.green[100],
            ),
            child: Icon(Icons.notifications, color: Colors.green),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                depth: -4,
                color: Colors.white,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(30),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Rechercher sur soutralideals",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 10),
            NeumorphicButton(
              onPressed: () {},
              style: NeumorphicStyle(
                color: Colors.green,
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(30),
                ),
                depth: 3,
                intensity: 0.8,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.location_on, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    "Toute la Côte d'Ivoire",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Neumorphic(
                    style: NeumorphicStyle(
                      color: Colors.white,
                      depth: 3,
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset('assets/example.jpg'), // Example image
                        ),
                        NeumorphicText(
                          "Category $index",
                          style: NeumorphicStyle(
                            color: Colors.black,
                            depth: 4,
                          ),
                          textStyle: NeumorphicTextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
