import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:my_app/features/auth/data/models/user/user_model.dart';
import 'package:my_app/features/auth/presentation/pages/Admin/allusers_page.dart'; // Thêm thư viện fl_chart

class StatisticsPage extends StatelessWidget {
  final int totaluser;
  final int totalphoto;
  final int totalproduct;
  final int totalvisit;
  final List users; // Danh sách người dùng mẫu
  const StatisticsPage({
    super.key,
    required this.totaluser,
    required this.totalphoto,
    required this.totalproduct,
    required this.totalvisit,
    required this.users,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),
      drawer: Drawer(
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
                // MaterialPageRoute(builder: (_) => StatisticsPage(totaluser: totaluser, totalphoto: totalphoto, totalproduct: totalproduct, totalvisit: totalvisit));
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào item
                Navigator.pop(context); // Đóng thanh công cụ
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào item
                Navigator.pop(context); // Đóng thanh công cụ
              },
            ),
            ListTile(
              title: Text('Notifications'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào item
                Navigator.pop(context); // Đóng thanh công cụ
              },
            ),
            ListTile(
              title: Text('All Users'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào item
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllUserPage()),
                );
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào item
                Navigator.pop(context); // Đóng thanh công cụ
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Bar Chart for total user, total photo, total product, total visit
            Container(
              height: 300,
              child: BarChart(
                BarChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(show: true),
                  borderData: FlBorderData(show: true),
                  barGroups: [
                    _buildBarChartGroup('Users', totaluser, Colors.blue),
                    _buildBarChartGroup('Photos', totalphoto, Colors.red),
                    _buildBarChartGroup('Products', totalproduct, Colors.green),
                    _buildBarChartGroup('Visits', totalvisit, Colors.orange),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  BarChartGroupData _buildBarChartGroup(String label, int value, Color color) {
    return BarChartGroupData(
      x: label == 'Users'
          ? 0
          : label == 'Photos'
          ? 1
          : label == 'Products'
          ? 2
          : 3, // Đặt vị trí x cho từng nhóm
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: value.toDouble(),
          color: color,
          width: 30,
          borderRadius: BorderRadius.circular(5),
        ),
      ],
    );
  }
}
