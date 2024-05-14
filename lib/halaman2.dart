import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HalamanSatu(),
    );
  }
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Satu'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HalamanDua()),
            );
          },
          child: Container(
            child:
                _buildMenuItemCard('assets/icons/burger.png', 'Burger', '\$10'),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItemCard(String iconPath, String title, String price) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(iconPath),
          Text(title),
          Text(price),
        ],
      ),
    );
  }
}

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Dua'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildPinkCard(),
                  SizedBox(width: 20),
                  _buildClassioTasteCard(),
                  SizedBox(width: 20),
                  _buildFlavorCards(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPinkCard() {
    return SizedBox(
      width: 250, // Sesuaikan lebar card sesuai kebutuhan
      child: Card(
        elevation: 5,
        color: Color.fromARGB(255, 255, 93, 93),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Mr. Cheezy',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Image.asset(
                'assets/icons/burgergedi.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClassioTasteCard() {
    return SizedBox(
      width: 250, // Sesuaikan lebar card sesuai kebutuhan
      child: Card(
        elevation: 5,
        color: Color.fromARGB(255, 255, 185, 93),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Add More Flavor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFlavorCards() {
    // Ini contoh dummy list, ganti dengan data sesuai kebutuhan Anda
    List<String> flavors = [
      'assets/icons/keju.png',
      'assets/icons/bacon.png',
      'assets/icons/onion.png',
    ];

    return SizedBox(
      width: 250, // Sesuaikan lebar card sesuai kebutuhan
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: flavors.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  flavors[index],
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Flavor ${index + 1}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
