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
                aspectRatio: 9 / 16,
                child: CardWidget(
                  title: 'Card 1',
                  description: 'This is the first card.',
                  additionalText: 'Additional text below description.',
                  rightTexts: [
                    'Right Text 1',
                    'Right Text 2',
                    'Right Text 3',
                  ],
                  leftTexts: [' '],
                  backgroundColor: Colors.blue,
                  textColor: Colors.white, // Mengatur warna teks menjadi putih
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
  final String additionalText;
  final List<String> rightTexts;
  final List<String> leftTexts;
  final Color backgroundColor; // Warna latar belakang
  final Color textColor; // Warna teks

  CardWidget({
    required this.title,
    required this.description,
    required this.additionalText,
    required this.rightTexts,
    required this.leftTexts,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        color: backgroundColor,
        // Menggunakan warna latar belakang yang diberikan
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: textColor, // Mengatur warna teks
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: leftTexts
                      .map(
                        (text) => Text(
                          text,
                          style: TextStyle(
                            fontSize: 14,
                            color: textColor, // Mengatur warna teks
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            SizedBox(height: 10), // Spacer
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: textColor, // Mengatur warna teks
              ),
            ),
            SizedBox(height: 10), // Spacer
            Text(
              additionalText,
              style: TextStyle(
                fontSize: 14,
                color: textColor, // Mengatur warna teks
              ),
            ),
            SizedBox(height: 10), // Spacer
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: rightTexts
                  .map(
                    (text) => Text(
                      text,
                      style: TextStyle(
                        fontSize: 14,
                        color: textColor, // Mengatur warna teks
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
