import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SoutraliDealsHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text('SOUTRALI DEALS'),
        leading: NeumorphicButton(
          onPressed: () {
            // Handle menu button press
          },
          style: NeumorphicStyle(shape: NeumorphicShape.flat),
          child: Icon(Icons.menu),
        ),
        actions: [
          NeumorphicButton(
            onPressed: () {},
            style: NeumorphicStyle(shape: NeumorphicShape.flat),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Neumorphic(
              style: NeumorphicStyle(depth: -4),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Rechercher sur soutralideals',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          _buildCategoryRow(),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/error.png'), // Placeholder for the illustration
                  Text(
                    'Le chargement de la page a échoué',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Nous sommes désolés, une erreur technique est survenue, nous travaillons.'),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Row _buildCategoryRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildCategoryIcon('Prestation de service', Icons.build),
        _buildCategoryIcon('E-commerce', Icons.shopping_cart),
        _buildCategoryIcon('Crypto Store', Icons.account_balance_wallet),
        _buildCategoryIcon('Petite Annonce', Icons.announcement),
      ],
    );
  }

  NeumorphicButton _buildCategoryIcon(String title, IconData icon) {
    return NeumorphicButton(
      onPressed: () {},
      style: NeumorphicStyle(shape: NeumorphicShape.convex),
      child: Column(
        children: [
          Icon(icon, size: 30),
          SizedBox(height: 5),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Neumorphic _buildBottomNavigationBar() {
    return Neumorphic(
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        onTap: (index) {
          // Handle bottom navigation tap
        },
      ),
    );
  }
}
