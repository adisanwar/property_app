import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class formProspekCostumer extends StatefulWidget {
  const formProspekCostumer({super.key});

  @override
  State<formProspekCostumer> createState() => _formProspekCostumerState();
}

class _formProspekCostumerState extends State<formProspekCostumer> {
  final _formState = GlobalKey<FormState>();
  final textController = TextEditingController();
  late DateTime selectedDate = DateTime.now();

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
        backgroundColor: Colors.white,
        body:
            // Column(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         padding: EdgeInsets.all(15),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             ElevatedButton(
            //               onPressed: () {
            //                 // Aksi ketika tombol pertama ditekan
            //               },
            //               child: Text('Tombol 1'),
            //             ),
            //             ElevatedButton(
            //               onPressed: () {
            //                 // Aksi ketika tombol kedua ditekan
            //               },
            //               child: Text('Tombol 2'),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            SingleChildScrollView(
          child: Container(
            // Atur warna latar belakang header sesuai kebutuhan Anda

            padding: EdgeInsets.all(15),
            key: _formState,
            child: Column(children: [
              AppBar(
                title: Text(
                  'Data Baru',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Colors.blue,
                centerTitle: true,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 8.0),
                          child: Text(
                            'Tanggal Prospek', // Label di atas kotak dropdown
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Text(
                        //   ' *',
                        //   style: TextStyle(
                        //     color: Colors.red,
                        //   ),
                        // ),

                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                readOnly: true,
                                onTap: () {
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2030),
                                  ).then((pickedDate) {
                                    if (pickedDate != null) {
                                      setState(() {
                                        selectedDate = pickedDate;
                                      });
                                    }
                                  });
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Pilih Tanggal',
                                ),
                                controller: TextEditingController(
                                  text: selectedDate != null
                                      ? DateFormat('yyyy-MM-dd')
                                          .format(selectedDate)
                                      : '',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
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
              // Rest of your code...

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text(
                      'Sumber info ', // Label di atas kotak dropdown
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
                  hint: Text("Piilih Sumber"),
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text(
                      'Kontak Melalui ', // Label di atas kotak dropdown
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
                  hint: Text("Pilih Kontak"),
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text(
                      'Status Prospek ', // Label di atas kotak dropdown
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
                  hint: Text("Pilih Status Prospek"),
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
                              'Catatan',
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
                      labelText: '',
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
                              'Nama Prospek',
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
                      labelText: 'Masukan Nama Prospek',
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
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text(
                      'Pekerjaan', // Label di atas kotak dropdown
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
                hint: Text("Pilih Pekerjaan"),
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
              // SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text(
                          'Deskripsi Pekerjaan', // Label di atas kotak dropdown
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
                    label: Text('Masukan Deskripsi Pekerjaan')),
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
                          'Penghasilan Tetap / Gaji', // Label di atas kotak dropdown
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
                    label: Text('Penghasilan Tetap / Gaji')),
              ),
              SizedBox(
                height: 5,
              ),
            ]),
          ),
        ),
        // ],
      ),
    );
    // );
  }
}

class angka {
  int? id;
  String? name;

  angka({this.id, this.name});
}
