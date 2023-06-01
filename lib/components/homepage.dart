import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:property_app/components/costumerprospek.dart';
import 'package:property_app/components/profile.dart';
import 'package:property_app/components/site.dart';

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
            // Divider(
            //     // color: Colors.blue,
            //     thickness: 2),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.of(context).pushNamed(HomePage.RouteName);
                // Tindakan saat menu Dashboard diklik
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Site Plan'),
              onTap: () {
                Navigator.of(context).pushNamed(Site.RouteName);
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
                    Navigator.of(context).pushNamed('/costumerprospek');
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
                    Navigator.of(context).pushNamed('/bookingunit');
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
                title: Text(
                  'Progress Bangunan',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Column(
              children: [
                Card(
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 20.0,
                          animation: true,
                          percent: 0.1,
                          center: new Text(
                            "10.0%",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.blue,
                        ),
                      )),
                ),
              ],
            ),
            Column(
              children: [
                Card(
                  child: ListTile(
                    title: Text(
                      'Resume Penjualan',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
                title: Text(
                  'Prospek Penjualan',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
            Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: DChartBar(
                        data: [
                          {
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
                        axisLineColor: Colors.green,
                        measureLabelPaddingToAxisLine: 16,
                        barColor: (barData, index, id) => Colors.green,
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
