import 'package:flutter/material.dart';

class DrawerTool extends StatelessWidget {
  final List<String> items;
  const DrawerTool({
    super.key, 
    required this.items,
    });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: Text('Dashboard'),
            onTap: () {
              // Xử lý khi người dùng nhấn vào item
              Navigator.pop(context); // Đóng thanh công cụ
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              // Xử lý khi người dùng nhấn vào item
              Navigator.pop(context); // Đóng thanh công cụ
            },
          ),
        ],
      ),
    );
  }
}
