import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:property_app/components/profile.dart';

class HomePage extends StatefulWidget {
  static const RouteName = '/homepage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  SizedBox(height: 30),
                  CircleAvatar(
                    radius: 30,
                    // backgroundImage: AssetImage('assets/avatar.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'John Doe',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Marketing',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Divider(
                // color: Colors.blue,
                thickness: 2),
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
                // Navigator.of(context).pushNamed('/infocard');
                // Tindakan saat menu Siteplan diklik
              },
            ),
            ExpansionTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Marketing'),
              children: [
                ListTile(
                  title: Text('Prospek Konsumen'),
                  onTap: () {
                    // Tindakan saat submenu Campaign diklik
                  },
                ),
                ListTile(
                  title: Text('Reserve Unit'),
                  onTap: () {
                    // Tindakan saat submenu Analytics diklik
                  },
                ),
                ListTile(
                  title: Text('Booking Unit'),
                  onTap: () {
                    // Tindakan saat submenu Analytics diklik
                  },
                ),
                ListTile(
                  title: Text('Laporan Status Unit'),
                  onTap: () {
                    // Tindakan saat submenu Analytics diklik
                  },
                ),
                ListTile(
                  title: Text('Laporan Penjualan'),
                  onTap: () {
                    // Tindakan saat submenu Analytics diklik
                  },
                ),
                ListTile(
                  title: Text('Laporan Pembatalan'),
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
                  title: Text('Progress Pembayaran'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/paymentprogress');
                    // Tindakan saat submenu Pendapatan diklik
                  },
                ),
                ListTile(
                  title: Text('Daftar Tunggakan'),
                  onTap: () {
                    // Tindakan saat submenu Pengeluaran diklik
                  },
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
                // Tindakan saat menu Siteplan diklik
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                // Tindakan saat menu Siteplan diklik
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text('Progress Bangunan'),
              ),
            ),
            Column(
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: DChartPie(
                        data: [
                          {'domain': 'Flutter', 'measure': 28},
                          {'domain': 'React Native', 'measure': 27},
                          {'domain': 'Ionic', 'measure': 20},
                          {'domain': 'Cordova', 'measure': 15},
                        ],
                        fillColor: (pieData, index) {
                          switch (pieData['domain']) {
                            case 'Flutter':
                              return Colors.blue;
                            case 'React Native':
                              return Colors.blueAccent;
                            case 'Ionic':
                              return Colors.lightBlue;
                            default:
                              return Colors.orange;
                          }
                        },
                        pieLabel: (pieData, index) {
                          return "${pieData['domain']}:\n${pieData['measure']}%";
                        },
                        labelPosition: PieLabelPosition.outside,
                        donutWidth: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Card(
                  child: ListTile(
                    title: Text('Resume Penjualan'),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: DChartBar(
                        data: [
                          const {
                            'id': 'Bar',
                            'data': [
                              {'domain': '2020', 'measure': 3},
                              {'domain': '2021', 'measure': 4},
                              {'domain': '2022', 'measure': 6},
                              {'domain': '2023', 'measure': 0.3},
                            ],
                          },
                        ],
                        domainLabelPaddingToAxisLine: 16,
                        axisLineTick: 2,
                        axisLinePointTick: 2,
                        axisLinePointWidth: 10,
                        axisLineColor: Colors.blue,
                        measureLabelPaddingToAxisLine: 16,
                        barColor: (barData, index, id) => Colors.blue,
                        showBarValue: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: ListTile(
                title: Text('Prospek Penjualan'),
              ),
            ),
            Column(
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: DChartBar(
                        data: [
                          const {
                            'id': 'Bar',
                            'data': [
                              {'domain': '2020', 'measure': 3},
                              {'domain': '2021', 'measure': 4},
                              {'domain': '2022', 'measure': 6},
                              {'domain': '2023', 'measure': 0.3},
                            ],
                          },
                        ],
                        domainLabelPaddingToAxisLine: 16,
                        axisLineTick: 2,
                        axisLinePointTick: 2,
                        axisLinePointWidth: 10,
                        axisLineColor: Colors.blue,
                        measureLabelPaddingToAxisLine: 16,
                        barColor: (barData, index, id) => Colors.blue,
                        showBarValue: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
