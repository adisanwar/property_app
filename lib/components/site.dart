import 'package:flutter/material.dart';

class Site extends StatelessWidget {
  static const RouteName = '/site';
  const Site({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Site Plan',
        ),
        // titleTextStyle: TextStyle(color: Colors.red),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Pilihan 1',
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 'Item 1',
                      child: Text('Item 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Item 2',
                      child: Text('Item 2'),
                    ),
                    DropdownMenuItem(
                      value: 'Item 3',
                      child: Text('Item 3'),
                    ),
                  ],
                  onChanged: (value) {
                    // Aksi yang diinginkan ketika pilihan berubah
                  },
                ),
                SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Pilihan 2',
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 'Item A',
                      child: Text('Item A'),
                    ),
                    DropdownMenuItem(
                      value: 'Item B',
                      child: Text('Item B'),
                    ),
                    DropdownMenuItem(
                      value: 'Item C',
                      child: Text('Item C'),
                    ),
                  ],
                  onChanged: (value) {
                    // Aksi yang diinginkan ketika pilihan berubah
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Aksi yang diinginkan ketika tombol ditekan
                  },
                  child: Text('Tampilkan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
