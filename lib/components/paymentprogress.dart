import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PaymentProgress extends StatelessWidget {
  static const RouteName = '/paymentprogress';
  const PaymentProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Prospek Penjualan'),
        ),
        body: SingleChildScrollView(
            child: 
            Column(children: [
              ElevatedButton(onPressed: (){}, 
              child: child)
            ],
          
            Column(children: [
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
        ])));
  }
}
