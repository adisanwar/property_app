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
        // appBar: AppBar(
        //   title: Text('Flutter'),
        // ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            // Atur warna latar belakang header sesuai kebutuhan Anda

            padding: EdgeInsets.all(15),
            key: _formState,
            child: Column(children: [
              AppBar(
                title: Text(
                  'Formulir',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Colors.blue,
                centerTitle: true,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  'Data Unit', // Label di atas kotak dropdown
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 2.0,
                color: Colors.blue,
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Proyek', // Label di atas kotak dropdown
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
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
                hint: Text("Pilih Proyek"),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                isExpanded: true,
                items: angkas
                    .map<DropdownMenuItem<angka?>>((e) => DropdownMenuItem(
                          child: Text((e?.name ?? '').toString()),
                          value: e,
                        ))
                    .toList(),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Cluster', // Label di atas kotak dropdown
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
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
                hint: Text("Pilih Cluster"),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                isExpanded: true,
                items: angkas
                    .map<DropdownMenuItem<angka?>>((e) => DropdownMenuItem(
                          child: Text((e?.name ?? '').toString()),
                          value: e,
                        ))
                    .toList(),
              ),
              SizedBox(height: 5),
              // Rest of your code...

              Row(
                children: [
                  Text(
                    'Cluster', // Label di atas kotak dropdown
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
                  hint: Text("Pilih Cluster"),
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
              Row(
                children: [
                  Text(
                    'Type ', // Label di atas kotak dropdown
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
                  hint: Text("Piilih tipe"),
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
              Row(
                children: [
                  Text(
                    'Unit ', // Label di atas kotak dropdown
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
                  hint: Text("Pilih Uniit"),
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

              // label before label of label form field
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'Data Konsumen', // Label di atas kotak dropdown
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 2.0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.0),
                            Text(
                              'Nama Lengkap',
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
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: textController,
                    validator: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Masukan Nama Lengkap',
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.0),
                            Text(
                              'No Identitas',
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
                      ),
                    ],
                  ),
                  TextFormField(
                    // controller: textController,
                    validator: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Masukan No Identitas',
                    ),
                  ),
                  // Rest of your code...
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          'No Handphone', // Label di atas kotak dropdown
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
                  ),
                ],
              ),
              TextFormField(
                // controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Masukan No Handphone')),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          'Email', // Label di atas kotak dropdown
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
                  ),
                ],
              ),
              TextFormField(
                // controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Masukan Email')),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          'Alamat', // Label di atas kotak dropdown
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
                  ),
                ],
              ),
              TextFormField(
                // controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Masukan Alamat')),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          'Nominal Reservasi', // Label di atas kotak dropdown
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
                  ),
                ],
              ),
              TextFormField(
                // controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Masukan Nominal Reservasi')),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          'Nominal Reservasi', // Label di atas kotak dropdown
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
                  ),
                ],
              ),
              TextFormField(
                // controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Masukan Nominal Reservasi')),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          'Keterangan', // Label di atas kotak dropdown
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
                  ),
                ],
              ),
              TextFormField(
                controller: textController,
                validator: (value) {
                  // if (value!.isEmpty) {
                  //   return 'Teks tidak boleh kosong';
                  // }
                  // return null;
                },
                decoration: InputDecoration(
                    // counterText: '${10 - (textController.text.length)}',
                    counterStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder(),
                    label: Text(
                      'Masukan Keterangan',
                    )),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          'Marketing', // Label di atas kotak dropdown
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
                  ),
                ],
              ),
              TextFormField(
                // controller: textController,
                validator: (value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('')),
              ),
              SizedBox(
                height: 12,
              ),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Buat Reservasi")),
                ),
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
