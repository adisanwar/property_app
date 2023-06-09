import 'package:flutter/material.dart';

class ReserveUnit extends StatefulWidget {
  static const RouteName = '/reserveunit';
  @override
  _ReserveUnitState createState() => _ReserveUnitState();
}

class _ReserveUnitState extends State<ReserveUnit> {
  TextEditingController _searchController = TextEditingController();
  // String _selectedOption1 = '';
  // String _selectedOption2 = '';
  // String _selectedOption1 = '';
  // String _selectedOption2 = '';

  DateTime? _startDate;
  DateTime? _endDate;

  String? _selectedOption1;
  String? _selectedOption2;
  String? _selectedRange;

  List<String> _dropdownOptions1 = [
    'Option 1',
    'Option 2',
    'Option 3',
  ];

  List<String> _dropdownOptions2 = [
    'Choice 1',
    'Choice 2',
    'Choice 3',
  ];
  List<String> _dropdownRangeOptions = [
    '7 Hari',
    '20 Hari',
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      appBar: AppBar(
        title: const Text("Reserve Unit"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: 'Cari Marketing',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Aksi yang dijalankan ketika tombol pencarian ditekan
                        String searchKeyword = _searchController.text;
                        // Lakukan sesuatu dengan keyword pencarian
                        print('Search keyword: $searchKeyword');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _selectedOption1,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedOption1 = newValue;
                      });
                    },
                    items: _dropdownOptions1.map((String option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      labelText: 'Proyek',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _selectedOption2,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedOption2 = newValue;
                      });
                    },
                    items: _dropdownOptions2.map((String option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      labelText: 'Status',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _selectedRange,
                onChanged: (newValue) {
                  setState(() {
                    _selectedRange = newValue;
                    _setDateRange(newValue!);
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                    value: 'Range 30 Hari',
                    child: Text('Range 30 Hari'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Range 60 Hari',
                    child: Text('Range 60 Hari'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Range 90 Hari',
                    child: Text('Range 90 Hari'),
                  ),
                ],
                decoration: InputDecoration(
                  labelText: 'Pilih Rentang Waktu',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  border: OutlineInputBorder(),
                ),
              ),
              // SizedBox(height: 10),
              if (_startDate != null && _endDate != null)
                Text('Range Tanggal: $_startDate - $_endDate'),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Deskripsi Konsumen',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod leo non nunc convallis, vel tincidunt lectus malesuada. Sed ut posuere nibh. Duis ultricies ipsum eget erat consectetur tincidunt. Nam a nunc et metus feugiat porttitor.',
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
            bottom: 40.0, right: 10.0), // Jarak di bagian bawah dan kanan
        child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/formreserv');
              // Aksi yang dijalankan ketika Floating Action Button ditekan
              print('Floating Action Button pressed');
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  void _setDateRange(String range) {
    DateTime now = DateTime.now();

    if (range == 'Range 30 Hari') {
      setState(() {
        _startDate = now;
        _endDate = now.add(Duration(days: 30));
      });
    } else if (range == 'Range 60 Hari') {
      setState(() {
        _startDate = now;
        _endDate = now.add(Duration(days: 60));
      });
    } else if (range == 'Range 90 Hari') {
      setState(() {
        _startDate = now;
        _endDate = now.add(Duration(days: 90));
      });
    }
  }
}
