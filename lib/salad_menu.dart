import 'package:flutter/material.dart';
import 'package:fodee_mobile_app/controller/menu_controller.dart';

class SaladPage extends StatefulWidget {
  const SaladPage({super.key});

  @override
  State<SaladPage> createState() => _SaladPageState();
}

class _SaladPageState extends State<SaladPage> {
  final MenuProductController _menuController = MenuProductController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salad Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildPinkCard(),
              const SizedBox(height: 20),
              _buildAddMoreFlavorCard(),
              const SizedBox(height: 20),
              _buildFlavorOptions(),
              const SizedBox(height: 20),
              _buildNutritionCard(),
              const SizedBox(height: 20),
              _buildNutrientOptions(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _buildCounterCard(),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: _buildAddToCartCard(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPinkCard() {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 255, 93, 93),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Salad',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildCloseButton(),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            child: Image.asset(
              'assets/icons/burger.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddMoreFlavorCard() {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 255, 185, 93),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              'Add More Flavor',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.add, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _buildFlavorOptions() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildFlavorCard('assets/icons/keju.png', 'Cheddar', '\$2'),
          _buildFlavorCard('assets/icons/bacon.png', 'Bacon', '\$3'),
          _buildFlavorCard('assets/icons/bawang.png', 'Onion', '\$1.5'),
        ],
      ),
    );
  }

  Widget _buildFlavorCard(String iconPath, String flavorName, String price) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(iconPath, height: 100, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                flavorName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                price,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNutritionCard() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nutrition facts',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '60 cal',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNutrientCard('35g', '', 'Total Fat 45% DV'),
                _buildNutrientCard('43g', '', 'Total Carbs 16% DV'),
                _buildNutrientCard('36g', '', 'Protein'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNutrientCard(String amount, String nutrient, String dv) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 120,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              amount,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              nutrient,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (dv.isNotEmpty)
              Text(
                dv,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildCounterCard() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    // Decrease counter logic here
                  },
                  icon: const Icon(Icons.remove),
                ),
                const Text(
                  '1',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Increase counter logic here
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              '\$13',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddToCartCard() {
    return Card(
      color: Colors.redAccent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          final newMenuData = {
            'title': 'Salad',
            'price': 13,
            'image_url': 'assets/icons/burger.png'
          };
          _menuController.addMenu(context, newMenuData);
        },
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '\$13',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCloseButton() {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        icon: const Icon(
          Icons.close,
          color: Colors.black,
        ),
        onPressed: () {
          // Tambahkan fungsi untuk menutup card atau kembali ke halaman sebelumnya di sini
        },
      ),
    );
  }

    Widget _buildNutrientOptions() {
    // Ini adalah widget _buildNutrientOptions yang sebelumnya hilang
    // Anda dapat menambahkan konten sesuai kebutuhan
    return Container();
  }
}