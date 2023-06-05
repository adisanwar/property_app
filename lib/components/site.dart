import 'package:flutter/material.dart';

class Site extends StatefulWidget {
  static const RouteName = '/site';

  const Site({Key? key}) : super(key: key);

  @override
  _SiteState createState() => _SiteState();
}

class _SiteState extends State<Site> {
  String? selectedItem;
  List<String> cibodas = ['Bumi Cibodas Indah'];
  List<String> padjadjaran = ['Graha Padjadjaran'];
  List<String> hayaty = ['Hayaty Residence'];
  List<String> mulqi = ['Mulqi Mansion 4'];
  List<String> Perumahan = [
    'Bumi Cibodas Indah',
    'Graha Padjadjaran',
    'Grand Haikal',
    'Hayaty Residence',
    'Mulqi Mansion 4'
  ];
  List<String> GrandHaikalDropdownItems = [
    'Grand Haikal 1',
    'Grand Haikal 2',
    'Grand Haikal 3',
    'Grand Haikal 4'
  ];
  String? selectedSecondItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Site Plan'),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Pilih Perumahan',
                  ),
                  items: [
                    const DropdownMenuItem(
                      value: 'Bumi Cibodas Indah',
                      child: Text('Bumi Cibodas Indah'),
                    ),
                    const DropdownMenuItem(
                      value: 'Graha Padjadjaran',
                      child: Text('Graha Padjadjaran'),
                    ),
                    const DropdownMenuItem(
                      value: 'Grand Haikal',
                      child: Text('Grand Haikal'),
                    ),
                    const DropdownMenuItem(
                      value: 'Hayaty Residence',
                      child: Text('Hayati Residence'),
                    ),
                    const DropdownMenuItem(
                      value: 'Mulqi Mansion 4',
                      child: Text('Mulqi Mansion 4'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedItem = value;
                      // Conditionally update the items of the second dropdown
                      if (selectedItem == 'Grand Haikal') {
                        Perumahan = GrandHaikalDropdownItems;
                      }
                      if (selectedItem == 'Bumi Cibodas Indah') {
                        Perumahan = cibodas;
                      }
                      if (selectedItem == 'Graha Padjadjaran') {
                        Perumahan = padjadjaran;
                      }
                      if (selectedItem == 'Hayaty Residence') {
                        Perumahan = hayaty;
                      }
                      if (selectedItem == 'Mulqi Mansion 4') {
                        Perumahan = mulqi;
                      }
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Pilih Gambar Site Plan',
                  ),
                  value: selectedSecondItem,
                  items: Perumahan.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedSecondItem = value;
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // if (selectedItem == 'Grand Haikal' &&
                    //     GrandHaikalDropdownItems == 'Grand Haikal 1') {
                    //   print('grand haikal ditekan');
                    // } else if (selectedItem == 'Bumi Cibodas Indah') {
                    //   // Handle logic specific to 'Bumi Cibodas Indah'
                    // } else if (selectedItem == 'Graha Padjadjaran') {
                    //   // Handle logic specific to 'Graha Padjadjaran'
                    // } else if (selectedItem == 'Hayaty Residence') {
                    //   // Handle logic specific to 'Hayaty Residence'
                    // } else if (selectedItem == 'Mulqi Mansion 4') {
                    //   // Handle logic specific to 'Mulqi Mansion 4'
                    // }
                    Navigator.of(context).pushNamed('/grandhaikal1');
                  },
                  child: const Text('Tampilkan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
