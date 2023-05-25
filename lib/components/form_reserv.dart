import 'package:flutter/material.dart';

class FormReserv extends StatefulWidget {
  const FormReserv({super.key});

  @override
  State<FormReserv> createState() => _FormReservState();
}

class _FormReservState extends State<FormReserv> {
  final _formState = GlobalKey<FormState>();
  final textController = TextEditingController();
  angka? selectedValue;
  List<angka> angkas = [
    angka(id: 1, name: "SATU"),
    angka(id: 2, name: "DUA"),
    angka(id: 3, name: "TIGA"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            key: _formState,
            child: Column(children: [
              Row(
                children: [
                  Text(
                    'Pilih Angka', // Label di atas kotak dropdown
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' *',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              DropdownButton<angka?>(
                  hint: Text("pilih angka"),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },

                  // underline: SizedBox(),
                  isExpanded: true,
                  items: angkas
                      .map<DropdownMenuItem<angka?>>((e) => DropdownMenuItem(
                            child: Text((e?.name ?? '').toString()),
                            value: e,
                          ))
                      .toList()),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Proyek')),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Name')),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Name')),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Name')),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Name')),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Name')),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Name')),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Name')),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Name')),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Name')),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Name')),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Buat Reservasi")),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class angka {
  int? id;
  String? name;

  angka({this.id, this.name});
}
