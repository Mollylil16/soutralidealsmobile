import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Mont12Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text('Mont12'),
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
          SizedBox(height: 20),
          Neumorphic(
            style: NeumorphicStyle(depth: -8),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/profile_picture.png'),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Mont12',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          _buildListTile(context, 'Trouver l’inspiration', Icons.search),
          _buildListTile(context, 'Listes enregistrées', Icons.bookmark),
          _buildListTile(context, 'Mes intérêts', Icons.favorite),
          _buildListTile(context, 'Inviter des amis', Icons.person_add),
          Divider(),
          _buildListTile(context, 'Préférences', Icons.settings),
          _buildListTile(context, 'Compte', Icons.account_circle),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  ListTile _buildListTile(BuildContext context, String title, IconData icon) {
    return ListTile(
      leading: NeumorphicIcon(
        icon,
        size: 30,
      ),
      title: Text(title),
      onTap: () {
        // Add navigation functionality here
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
