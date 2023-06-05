import 'package:flutter/material.dart';

class BottomSheetMenu extends StatefulWidget {
  const BottomSheetMenu({super.key});

  @override
  State<BottomSheetMenu> createState() => _BottomSheetMenuState();
}

class _BottomSheetMenuState extends State<BottomSheetMenu> {
  bool isConditionMet = false; // Variabel kondisi

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
                                  fontWeight: FontWeight.bold,
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
                          // SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tombol Kiri Atas',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Tombol Kiri Atas',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
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
                    title: Text('Submenu 1'),
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
                          'Tombol 1',
                          style: TextStyle(
                            color: Colors.white, // Warna teks putih
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Submenu 2'),
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
                          'Tombol 2',
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
                  ListTile(
                    title: Text('Submenu 1'),
                  ),
                  ListTile(
                    title: Text('Submenu 2'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Berkas Konsumen'),
                children: [
                  CheckboxListTile(
                    title: Text('Submenu 1'),
                    value: false, // Status checkbox
                    onChanged: (bool? value) {
                      // Logika ketika checkbox diubah
                    },
                    // controlAffinity: ListTileControlAffinity
                    //     .leading, // Posisi checkbox di sebelah kiri teks
                  ),
                  CheckboxListTile(
                    title: Text('Submenu 2'),
                    value: false, // Status checkbox
                    onChanged: (bool? value) {
                      // Logika ketika checkbox diubah
                    },
                    // controlAffinity: ListTileControlAffinity
                    //     .leading, // Posisi checkbox di sebelah kiri teks
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Kartu Pembayaran'),
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: Text('Lihat Kartu Pembayaran'))
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
