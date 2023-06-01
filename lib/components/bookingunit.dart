import 'package:flutter/material.dart';

class BookingUnit extends StatelessWidget {
  static const RouteName = '/bookingunit';
  const BookingUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Do something
                },
                child: Text(
                  'Button 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),

        // SizedBox(height: 20),
        // Card(
        //   child: Container(
        //     padding: EdgeInsets.all(20),
        //     child: Text('Description'),
        //   ),
      ),

      // ),
    );
  }
}
