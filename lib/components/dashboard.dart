import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/avatar.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'John Doe',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                // Tindakan saat menu Dashboard diklik
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Siteplan'),
              onTap: () {
                // Tindakan saat menu Siteplan diklik
              },
            ),
            ExpansionTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Marketing'),
              children: [
                ListTile(
                  title: Text('Campaign'),
                  onTap: () {
                    // Tindakan saat submenu Campaign diklik
                  },
                ),
                ListTile(
                  title: Text('Analytics'),
                  onTap: () {
                    // Tindakan saat submenu Analytics diklik
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.attach_money),
              title: Text('Keuangan'),
              children: [
                ListTile(
                  title: Text('Pendapatan'),
                  onTap: () {
                    // Tindakan saat submenu Pendapatan diklik
                  },
                ),
                ListTile(
                  title: Text('Pengeluaran'),
                  onTap: () {
                    // Tindakan saat submenu Pengeluaran diklik
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Welcome to the Dashboard!'),
        ),
      ),
    );
  }
}
