import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: QRCodeScannerApp(),
  ));
}

class QRCodeScannerApp extends StatefulWidget {
  @override
  _QRCodeScannerAppState createState() => _QRCodeScannerAppState();
}

class _QRCodeScannerAppState extends State<QRCodeScannerApp> {
  final GlobalKey qrKey = GlobalKey();
  Barcode? result;
  QRViewController? controller;
  String scannedData = '';

  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leitor de QR Code'),
      ),
      body: Center(
        child: SizedBox(
          width: 300, // Largura do quadrado
          height: 300, // Altura do quadrado
          child: QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        scannedData = result!.code!;
      });
    });
  }

  Future<void> _checkPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.microphone,
    ].request();
    if (statuses[Permission.camera]!.isDenied) {
      print('A permissão da câmera foi negada.');
    }
  }

  Future<void> _launchURL(String number) async {
    final url = 'tel:$number';
    if (await canLaunch(url)) {
      final launcherResult = await launch(url);
      if (launcherResult == false) {
        print('Não foi possível iniciar a chamada.');
      }
    } else {
      print('URL inválida: $url');
    }
  }
}
