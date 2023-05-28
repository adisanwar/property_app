import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class InfocardProjek extends StatefulWidget {
  const InfocardProjek({super.key});

  @override
  State<InfocardProjek> createState() => _InfocardProjekState();
}

class _InfocardProjekState extends State<InfocardProjek> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          child: Text('Modal Bottom Text'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                      height: 400,
                      child: Center(
                          child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        // underline: Container(
                        //   height: 2,
                        //   color: Colors.deepPurpleAccent,
                        // ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),

                        // child: ElevatedButton(
                        //     child: Text('Close'),
                        //     onPressed: () {
                        //       Navigator.pop(context);
                        //     }),
                      )));
                });
          },
        ),
      ),
    );
  }
}
