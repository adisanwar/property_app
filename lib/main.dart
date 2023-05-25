import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_app/components/form_reserv.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormReserv(),
    );
  }
}

// class dropdown extends StatefulWidget {
//   const dropdown({super.key});

//   @override
//   State<dropdown> createState() => _dropdownState();
// }

// class _dropdownState extends State<dropdown> {
//   angka? selectedValue;
//   List<angka> angkas = [
//     angka(id: 1, name: "SATU"),
//     angka(id: 2, name: "DUA"),
//     angka(id: 3, name: "TIGA"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('DROPDOWN'),
//           backgroundColor: Colors.blue,
//         ),
//         body: Container(
//           margin: EdgeInsets.all(15),
//           padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//           decoration: BoxDecoration(
//               color: Colors.grey.shade200,
//               borderRadius: BorderRadius.circular(5)),
//           child: DropdownButton<angka?>(
//               value: selectedValue,
//               onChanged: (value) {
//                 setState(() {
//                   selectedValue = value;
//                 });
//               },
//               underline: SizedBox(),
//               isExpanded: true,
//               items: angkas
//                   .map<DropdownMenuItem<angka?>>((e) => DropdownMenuItem(
//                         child: Text((e?.name ?? '').toString()),
//                         value: e,
//                       ))
//                   .toList()),
//         ),
//       ),
//     );
//   }
// }

// class angka {
//   int? id;
//   String? name;

//   angka({this.id, this.name});
// }
