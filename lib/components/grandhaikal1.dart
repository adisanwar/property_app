import 'package:flutter/material.dart';
import 'package:property_app/utils/bottomsheetmenu.dart';

class GradnHaikal1 extends StatelessWidget {
  static const RouteName = '/grandhaikal1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Site Plan Grand Haikal 1'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(double.infinity),
        minScale: 0.1,
        maxScale: 5.0,
        child: Stack(
          children: [
            Image.asset(
              'assets/grand_haikal1.jpg',
              fit: BoxFit.contain,
            ),
            // sisi kiri
            Positioned(
              top: 150,
              left: 84,
              child: InkWell(
                onTap: () {
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
// kolom kedua
            Positioned(
              top: 210,
              left: 84,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            // kolom ke tiga
            Positioned(
              top: 267,
              left: 84,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            // kolom keempat
            Positioned(
              top: 325,
              left: 80,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
            //
//
//
//
// baris ke 2
            // baris kedua kolom pertama
            Positioned(
              top: 150,
              left: 181,
              child: InkWell(
                onTap: () {
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
// baris kedua kolom kedua
            Positioned(
              top: 216,
              left: 181,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            //baris kedua kolom ke tiga
            Positioned(
              top: 284,
              left: 181,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            //baris kedua kolom keempat
            Positioned(
              top: 330,
              left: 181,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
//
//
//
//
// baris ke 3

            Positioned(
              top: 150,
              left: 240,
              child: InkWell(
                onTap: () {
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
// baris kedua kolom kedua
            Positioned(
              top: 216,
              left: 240,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            //baris kedua kolom ke tiga
            Positioned(
              top: 284,
              left: 240,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            //baris kedua kolom keempat
            Positioned(
              top: 330,
              left: 240,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),

            //
//
//
//
// baris ke 4
            Positioned(
              top: 150,
              left: 320,
              child: InkWell(
                onTap: () {
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
// baris kedua kolom kedua
            Positioned(
              top: 216,
              left: 320,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            //baris kedua kolom ke tiga
            Positioned(
              top: 284,
              left: 320,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            //baris kedua kolom keempat
            Positioned(
              top: 330,
              left: 320,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 390,
              left: 320,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BottomSheetMenu();
                    },
                  );
                  // Tombol ditekan
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
