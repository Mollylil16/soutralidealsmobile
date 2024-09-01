import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ServiceProvidersScreen extends StatelessWidget {
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
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
          SizedBox(height: 20),
          Text('Métiers', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          _buildJobListTile('Maçonnerie'),
          _buildJobListTile('Menuisier'),
          _buildJobListTile('Mécanique'),
          _buildJobListTile('Plomberie'),
          SizedBox(height: 20),
          Text('Prestataires', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          _buildProviderListTile('Marc', '1000 FCFA'),
          _buildProviderListTile('Elie', '1000 FCFA'),
          _buildProviderListTile('Traoré', '1000 FCFA'),
          _buildProviderListTile('Oli', '1000 FCFA'),
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

  ListTile _buildJobListTile(String job) {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.build)),
      title: Text(job),
      onTap: () {
        // Handle job tap
      },
    );
  }

  ListTile _buildProviderListTile(String name, String price) {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.person)),
      title: Text(name),
      subtitle: Text(price),
      onTap: () {
        // Handle provider tap
      },
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
