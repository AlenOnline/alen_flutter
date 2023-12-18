import 'dart:io';
import 'package:flutter/material.dart';

import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScanner extends StatefulWidget{
  const QRScanner({super.key});

  @override

  State<QRScanner> createState() => _QRScanerState();
  
}

class _QRScanerState extends State<QRScanner>{
    @override

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble(){
    super.reassemble();
    if (Platform.isAndroid){
      controller!.pauseCamera();
    } else if (Platform.isIOS){
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 5,
          child: QRView(key: qrKey, onQRViewCreated: onQRViewCamera,
          ),
          ),

          Expanded(
            child: Center(child: 
            (result != null) ? Text('Data: ${result!.code}') : const Text('Scan a code'),
            )
            ),

      ]),
    );

  }

  void onQRViewCamera(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
    setState(() {
      result = scanData;
    });
     });
  }

  
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }


}