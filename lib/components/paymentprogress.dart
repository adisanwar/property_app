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
          title: Text('Progress Pembayaran'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [],
        )));
  }
}
