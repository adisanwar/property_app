import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_app/components/bookingunit.dart';
import 'package:property_app/components/chart_resume_penjualan.dart';
import 'package:property_app/components/chartdemo.dart';
import 'package:property_app/components/costumerprospek.dart';
import 'package:property_app/components/failedreport.dart';

import 'package:property_app/components/homepage.dart';
import 'package:property_app/components/payment_card.dart';
import 'package:property_app/components/reserve_unit.dart';
import 'package:property_app/components/grandhaikal1.dart';
import 'package:property_app/form/form_prospek_costumer.dart';
import 'package:property_app/form/form_reserv.dart';

import 'components/infocard_projek.dart';
import 'components/paymentprogress.dart';
import 'components/profile.dart';
import 'components/site.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      initialRoute: HomePage.RouteName,
      routes: {
        HomePage.RouteName: (context) => HomePage(),
        Site.RouteName: (context) => Site(),
        GradnHaikal1.RouteName: (context) => GradnHaikal1(),
        InfoCard.RouteName: (context) => InfoCard(),
        CostumerProspek.RouteName: (context) => CostumerProspek(),
        ReserveUnit.RouteName: (context) => ReserveUnit(),
        FormReserv.RouteName: (context) => FormReserv(),
        BookingUnit.RouteName: (context) => BookingUnit(),
        FailedReport.RouteName: (context) => FailedReport(),
        formProspekCostumer.RouteName: (context) => formProspekCostumer(),
        // StatusReport.RouteName: (context) => StatusReport(),
        // PaymentProgress.RouteName: (context) => PaymentProgress(),
        // CancelReport.RouteName: (context) => CancelReport(),
        PaymentProgress.RouteName: (context) => PaymentProgress(),
        // Arrears.RouteName: (context) => Arrears(),
        Profile.RouteName: (context) => Profile(),
        // Login.RouteName: (context) => Login(),
        // logout.RouteName: (context) => logout(),
      },
    );
  }
}
