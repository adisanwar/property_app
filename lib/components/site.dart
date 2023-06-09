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
                      switch (selectedItem) {
                        case 'Grand Haikal':
                          Perumahan = GrandHaikalDropdownItems;
                          break;
                        case 'Bumi Cibodas Indah':
                          Perumahan = cibodas;
                          break;
                        case 'Graha Padjadjaran':
                          Perumahan = padjadjaran;
                          break;
                        case 'Hayaty Residence':
                          Perumahan = hayaty;
                          break;
                        case 'Mulqi Mansion 4':
                          Perumahan = mulqi;
                          break;
                        default:
                          Perumahan = [];
                      }

                      print('Perumahan yang dipilih: $Perumahan');
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
//                   There should be exactly one item with [DropdownButton]'s value: Graha Padjadjaran.
// Either zero or 2 or more [DropdownMenuItem]s were detected with the same value
// 'package:flutter/src/material/dropdown.dart':

                  decoration: const InputDecoration(
                    labelText: 'Pilih Gambar Site Plan',
                  ),
                  value: selectedSecondItem,
                  items: Perumahan.map((item) {
                    return DropdownMenuItem<String>(
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
                    switch (selectedSecondItem) {
                      case 'Grand Haikal 1':
                        print('$selectedSecondItem ditekan');
                        Navigator.of(context).pushNamed('/grandhaikal1');
                        break;
                      case 'Grand Haikal 2':
                        print('$selectedSecondItem ditekan');
                        // Navigator.of(context).pushNamed('/grandhaikal1');
                        break;
                      case 'Grand Haikal 3':
                        print('$selectedSecondItem ditekan');
                        // Navigator.of(context).pushNamed('/grandhaikal1');
                        break;
                      case 'Grand Haikal 4':
                        print('$selectedSecondItem ditekan');
                        // Navigator.of(context).pushNamed('/grandhaikal1');
                        break;
                      case 'Bumi Cibodas Indah':
                        print('$selectedSecondItem ditekan');
                        // Navigator.of(context).pushNamed('/grandhaikal1');
                        break;
                      case 'Graha Padjadjaran':
                        print('$selectedSecondItem ditekan');
                        // Navigator.of(context).pushNamed('/grandhaikal1');
                        break;
                      case 'Grand Haikal':
                        print('$selectedSecondItem ditekan');
                        // Navigator.of(context).pushNamed('/grandhaikal1');
                        break;
                      case 'Hayaty Residence':
                        print('$selectedSecondItem ditekan');
                        // Navigator.of(context).pushNamed('/grandhaikal1');
                        break;
                      case 'Mulqi Mansion 4':
                        print('$selectedSecondItem ditekan');
                        // Navigator.of(context).pushNamed('/grandhaikal1');
                        break;
                      default:
                    }
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
