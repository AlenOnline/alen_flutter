import 'dart:io';

import 'package:alen/features/qr/view/bloc/qr_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrViewScreeen extends StatefulWidget {
  const QrViewScreeen({Key? key}) : super(key: key);

  @override
  State<QrViewScreeen> createState() => _QrViewScreeenState();
}

class _QrViewScreeenState extends State<QrViewScreeen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: (result != null)
                  ? Text(
                      'Barcode Type: ${describeEnum(result!.format)} \nData: ${result!.code}')
                  : Text('Scan a code'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _reloadPage();
        },
        tooltip: 'Reload',
        child: Icon(Icons.refresh),
      ),
    );
  }

  void _reloadPage() {
    setState(() {
      result = null;
    });
    if (controller != null) {
      if (Platform.isAndroid) {
        controller!.resumeCamera();
      } else if (Platform.isIOS) {
        controller!.resumeCamera();
      }
    }
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        if (result != null) {
          BlocProvider.of<QrBloc>(context).add(SetQr(qr: result!.code ?? "---"));
        }
        // Removed the line below because it seems like an undefined method.
        // If you meant to navigate back, consider using Navigator instead of context.
        // context.pop();
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
