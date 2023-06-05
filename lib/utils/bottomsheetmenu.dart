import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BottomSheetMenu extends StatefulWidget {
  const BottomSheetMenu({super.key});

  @override
  State<BottomSheetMenu> createState() => _BottomSheetMenuState();
}

class _BottomSheetMenuState extends State<BottomSheetMenu> {
  bool isConditionMet = false; // Variabel kondisi
  bool _submenu1Checked = false;
  bool _submenu2Checked = false;
  bool _getCheckboxValue(int index) {
    if (index % 2 == 0) {
      return _submenu1Checked;
    } else {
      return _submenu2Checked;
    }
  }

  void _setCheckboxValue(int index, bool value) {
    if (index % 2 == 0) {
      setState(() {
        _submenu1Checked = value;
      });
    } else {
      setState(() {
        _submenu2Checked = value;
      });
    }
  }

  // List<String> _checkboxTitles = [
  //   'Mengisi Form Aplikasi Bermaterai',
  //   'Pas Foto 3x4',
  //   'Fotokopi Suami dan Istri (Bila Menikah)',
  //   'Fotokopi Kartu Keluarga',
  //   'Fotokopi NPWP Pribadi',
  //   'Fotokopi NPWP dan SIUP Perusahaan Tempat Bekerja',
  //   'Fotokopi Surat Nikah/Buku Nikah',
  //   'Surat Keterangan Aktif Bekerja (Asli)',
  //   'Surat Keterangan Tidak Memiliki Rumah Kelurahan (Sesuai KTP)',
  //   'Surat Keterangan Domisili (Jika Alamat Sekarang Tidak Sesuai KTP)',
  //   'SPT PPH 21',
  //   'Slip Gaji 3 Bulan Terakhir (Asli)',
  //   'Fotokopi SK Pengangkatan (Legalisir)',
  //   'Rekening Koran (Tabungan) 3 Bulan Terakhir',
  //   'Fotokopi ID Card Jamsostek',
  // ];
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.75,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tombol Kiri Atas',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Aksi ketika tombol kanan atas ditekan
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        27.0), // Atur radius sesuai keinginan
                                  ),
                                ),
                                child: Text('AJB'),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tombol Kiri Atas',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Tombol Kiri Atas',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              ExpansionTile(
                title: Text('Unit'),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            1), // Mengatur jarak horizontal antara ListTile
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text('Proyek :'),
                        ),
                        SizedBox(height: 4), // Jarak vertikal antara ListTile
                        ListTile(
                          title: Text('Kategori :'),
                        ),
                        SizedBox(height: 4), // Jarak vertikal antara ListTile
                        ListTile(
                          title: Text('LT/SG :'),
                        ),
                        SizedBox(height: 4), // Jarak vertikal antara ListTile
                        ListTile(
                          title: Text('LB/NET :'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Konsumen'),
                children: [
                  ListTile(
                    title: Text('Nama :'),
                  ),
                  ListTile(
                    title: Text('Nomor SPU :'),
                  ),
                  ListTile(
                    title: Text('Tanggal SPU :'),
                  ),
                ],
              ),
              // bool isConditionMet = true; // Variabel kondisi

              ExpansionTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Legalitas Unit'),
                    SizedBox(), // Untuk memberikan jarak antara title dan tombol pada sebelah kanan
                  ],
                ),
                children: [
                  ListTile(
                    title: Text('SLF'),
                    trailing: Container(
                      width: 100, // Ukuran tombol
                      child: ElevatedButton(
                        onPressed: () {
                          // Logika ketika tombol Submenu 1 ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isConditionMet
                              ? Colors.green
                              : Colors.red, // Warna tombol berdasarkan kondisi
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                        ),
                        child: Text(
                          'Belum',
                          style: TextStyle(
                            color: Colors.white, // Warna teks putih
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('PPJB'),
                    trailing: Container(
                      width: 100, // Ukuran tombol
                      child: ElevatedButton(
                        onPressed: () {
                          // Logika ketika tombol Submenu 2 ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isConditionMet
                              ? Colors.green
                              : Colors.red, // Warna tombol berdasarkan kondisi
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                        ),
                        child: Text(
                          'Belum',
                          style: TextStyle(
                            color: Colors.white, // Warna teks putih
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('PBB'),
                    trailing: Container(
                      width: 100, // Ukuran tombol
                      child: ElevatedButton(
                        onPressed: () {
                          // Logika ketika tombol Submenu 2 ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isConditionMet
                              ? Colors.green
                              : Colors.red, // Warna tombol berdasarkan kondisi
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                        ),
                        child: Text(
                          'Belum',
                          style: TextStyle(
                            color: Colors.white, // Warna teks putih
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('AJB'),
                    trailing: Container(
                      width: 100, // Ukuran tombol
                      child: ElevatedButton(
                        onPressed: () {
                          // Logika ketika tombol Submenu 2 ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isConditionMet
                              ? Colors.green
                              : Colors.red, // Warna tombol berdasarkan kondisi
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                        ),
                        child: Text(
                          'Belum',
                          style: TextStyle(
                            color: Colors.white, // Warna teks putih
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Sertifikat'),
                    trailing: Container(
                      width: 100, // Ukuran tombol
                      child: ElevatedButton(
                        onPressed: () {
                          // Logika ketika tombol Submenu 2 ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isConditionMet
                              ? Colors.green
                              : Colors.red, // Warna tombol berdasarkan kondisi
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                        ),
                        child: Text(
                          'Belum',
                          style: TextStyle(
                            color: Colors.white, // Warna teks putih
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('PBG'),
                    trailing: Container(
                      width: 100, // Ukuran tombol
                      child: ElevatedButton(
                        onPressed: () {
                          // Logika ketika tombol Submenu 2 ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isConditionMet
                              ? Colors.green
                              : Colors.red, // Warna tombol berdasarkan kondisi
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                        ),
                        child: Text(
                          'Belum',
                          style: TextStyle(
                            color: Colors.white, // Warna teks putih
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ExpansionTile(
                title: Text('Progress Bangunan'),
                children: [
                  // Progress Chart / Circular Indicator
                  Card(
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: new CircularPercentIndicator(
                            radius: 80.0,
                            lineWidth: 15.0,
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
                  // Padding(
                  //   padding: EdgeInsets.all(15.0),
                  //   child: new LinearPercentIndicator(
                  //     width: 140.0,
                  //     lineHeight: 14.0,
                  //     percent: 0.5,
                  //     center: Text(
                  //       "50.0%",
                  //       style: new TextStyle(fontSize: 12.0),
                  //     ),
                  //     trailing: Icon(Icons.mood),
                  //     linearStrokeCap: LinearStrokeCap.roundAll,
                  //     backgroundColor: Colors.grey,
                  //     progressColor: Colors.blue,
                  //   ),
                  // ),
                  SizedBox(height: 10),
                  // Text and Percentage for Each Step
                  StepProgress(
                    stepText: 'Pondasi',
                    stepPercentage: 20,
                  ),
                  StepProgress(
                    stepText: 'Dinding',
                    stepPercentage: 40,
                  ),
                  StepProgress(
                    stepText: 'Plester dan Aci',
                    stepPercentage: 60,
                  ),
                  StepProgress(
                    stepText: 'Atap Baja Ringan',
                    stepPercentage: 80,
                  ),
                  StepProgress(
                    stepText: 'Genteng',
                    stepPercentage: 90,
                  ),
                  StepProgress(
                    stepText: 'Pasang Keramik',
                    stepPercentage: 95,
                  ),
                  StepProgress(
                    stepText: 'Pasang Kusen',
                    stepPercentage: 100,
                  ),
                  StepProgress(
                    stepText: 'Finishing',
                    stepPercentage: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              ExpansionTile(
                title: Text('Berkas Konsumen'),
                children: [
                  //   ListView.builder(
                  //     itemCount: _checkboxTitles.length,
                  //     itemBuilder: (BuildContext context, int index) {
                  //       return Card(
                  //         child: CheckboxListTile(
                  //           title: Text(_checkboxTitles[index]),
                  //           value: _getCheckboxValue(index),
                  //           onChanged: (bool? value) {
                  //             setState(() {
                  //               _setCheckboxValue(index, value!);
                  //             });
                  //           },
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ]),
                  CheckboxListTile(
                    title: Text('Mengisi Form Aplikasi Bermaterai'),
                    value: _submenu1Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu1Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Pas Foto 3x4'),
                    value: _submenu2Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu2Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Fotokopi Suami dan Istri (Bila Menikah)'),
                    value: _submenu1Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu1Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Fotokopi Kartu Keluarga'),
                    value: _submenu2Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu2Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Fotokopi NPWP Pribadi'),
                    value: _submenu1Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu1Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                        'Fotokopi NPWP dan SIUP Perusahaan Tempat Bekerja'),
                    value: _submenu2Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu2Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Fotokopi Surat Nikah/Buku Nikah'),
                    value: _submenu1Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu1Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Surat Keterangan Aktif Bekerja (Asli)'),
                    value: _submenu2Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu2Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                        'Surat Keterangan Tidak Memiliki Rumah Kelurahan (Sesuai KTP)'),
                    value: _submenu1Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu1Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                        'Surat Keterangan Domisili (Jika Alamat Sekarang Tidak Sesuai KTP)'),
                    value: _submenu2Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu2Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('SPT PPH 21 '),
                    value: _submenu1Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu1Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Slip Gaji 3 Bulan Terakhir (Asli)'),
                    value: _submenu2Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu2Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Fotokopi SK Pengangkatan (Legalisir)'),
                    value: _submenu2Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu2Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Rekening Koran (Tabungan) 3 Bulan Terakhir'),
                    value: _submenu2Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu2Checked = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Fotokopi ID Card Jamsostek'),
                    value: _submenu2Checked, // Status checkbox
                    onChanged: (bool? value) {
                      setState(() {
                        _submenu2Checked = value!;
                      });
                    },
                  ),
                ],
              ),

              ExpansionTile(
                title: Text('Kartu Pembayaran'),
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/paymentcard');
                      },
                      child: Text('Lihat Kartu Pembayaran'))
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StepProgress extends StatelessWidget {
  final String stepText;
  final int stepPercentage;

  const StepProgress({
    required this.stepText,
    required this.stepPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              stepText,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              '$stepPercentage%',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 15,
                // fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}
