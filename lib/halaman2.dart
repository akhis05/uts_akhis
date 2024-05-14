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
          // Card asli
          Center(
            child: Text('Ini adalah halaman dua'),
          ),
          // Card baru di atas
          Positioned(
            top: 20, // Sesuaikan posisi sesuai keinginan Anda
            left: 20, // Sesuaikan posisi sesuai keinginan Anda
            child: Card(
              color: Colors.pink, // Warna latar belakang
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Mr. Cheezy'),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      // Aksi ketika tombol silang ditekan
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
