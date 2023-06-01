import 'package:flutter/material.dart';

class CostumerProspek extends StatefulWidget {
  static const RouteName = '/costumerprospek';
  @override
  _CostumerProspekState createState() => _CostumerProspekState();
}

class _CostumerProspekState extends State<CostumerProspek> {
  TextEditingController _searchController = TextEditingController();

  String? _selectedOption1;
  String? _selectedOption2;

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
        appBar: AppBar(
          title: const Text("Prospek Konsumen"),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
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
                            hintText: 'Search',
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
              Row(
                children: [
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
                        labelText: 'Dropdown 1',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
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
                        labelText: 'Dropdown 2',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(width: 8.0),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Submit'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ]),
          ),
        ));
    //
  }
}
