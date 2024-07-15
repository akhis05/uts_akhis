import 'package:flutter/material.dart';
import 'package:fodee_mobile_app/controller/menu_controller.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final MenuProductController _menuController = MenuProductController();

  @override
  void initState() {
    super.initState();
    _fetchMenus();
  }

  Future<void> _fetchMenus() async {
    await _menuController.getMenus();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Pages'),
      ),
      body: _menuController.menus == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _menuController.menus!.length,
              itemBuilder: (context, index) {
                final menu = _menuController.menus![index];
                return Card(
                  child: ListTile(
                    leading: Image.asset(menu.imageUrl,
                        width: 50, height: 50, fit: BoxFit.cover),
                    title: Text(menu.title),
                    subtitle: Text('Price: ${menu.price}'),
                  ),
                );
              },
            ),
    );
  }
}
