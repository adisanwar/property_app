import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  static const RouteName = '/paymentcard';
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kartu Pembayaran'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: CardWidget(
                  title: 'Card 1',
                  description: 'This is the first card.',
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: CardWidget(
                  title: 'Card 1',
                  description: 'This is the first card.',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: CardWidget(
                  title: 'Card 1',
                  description: 'This is the first card.',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final Color? backgroundColor; // Warna latar belakang

  CardWidget({
    required this.title,
    required this.description,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        color:
            backgroundColor, // Menggunakan warna latar belakang yang diberikan
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Spacer
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
