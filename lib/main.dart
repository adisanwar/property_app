import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_app/components/chart_resume_penjualan.dart';
import 'package:property_app/components/form_prospek_costumer.dart';
import 'package:property_app/components/form_reserv.dart';
import 'package:property_app/components/homepage.dart';

import 'components/dashboard.dart';
import 'components/infocard_projek.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardPage(),
    );
  }
}
