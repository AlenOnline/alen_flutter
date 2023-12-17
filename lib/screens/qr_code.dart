import 'package:exal/screens/qr_image.dart';
import 'package:exal/screens/qr_scaner.dart';
import 'package:flutter/material.dart';

class QRCode extends StatefulWidget {
  const QRCode ({super.key});
  @override
  State<QRCode> createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + QR'),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter URL',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => QRImage(controller: controller),
            ),
            );
          },
          child: const Text('Generate QR code')
          ),
              ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => QRScaner()),
            );
          },
          child: const Text('Scan QR code')
          ),
      ]),
    );
  }
}