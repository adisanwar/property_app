import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_app/components/bookingunit.dart';
import 'package:property_app/components/chart_resume_penjualan.dart';
import 'package:property_app/components/chartdemo.dart';
import 'package:property_app/components/costumerprospek.dart';
import 'package:property_app/components/failedreport.dart';

import 'package:property_app/components/homepage.dart';
import 'package:property_app/components/infocard_projek.dart';
import 'package:property_app/components/payment_card.dart';
import 'package:property_app/components/paymentprogress.dart';
import 'package:property_app/components/profile.dart';
import 'package:property_app/components/reserve_unit.dart';
import 'package:property_app/components/grandhaikal1.dart';
import 'package:property_app/components/site.dart';
import 'package:property_app/form/form_prospek_costumer.dart';
import 'package:property_app/form/form_reserv.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        PaymentCard.RouteName: (context) => PaymentCard(),
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
