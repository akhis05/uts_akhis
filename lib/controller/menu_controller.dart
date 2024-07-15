import 'package:flutter/material.dart';
import 'package:fodee_mobile_app/models/menu_model.dart';
import 'package:fodee_mobile_app/services/menu_service.dart';

class MenuProductController {
  final MenuService _menuService = MenuService();

  List<MenuModel>? _menus;

  List<MenuModel>? get menus => _menus;

  Future<void> getMenus() async {
    try {
      print('Fetching menus...');
      final response = await _menuService.getMenu();
      if (response.statusCode == 200) {
        print('Menus fetched successfully');
        _menus = (response.data as List<dynamic>)
            .map((e) => MenuModel.fromJson(e))
            .toList();
        print('Menus: $_menus');
      } else {
        print('Failed to fetch menus: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
  }
}
