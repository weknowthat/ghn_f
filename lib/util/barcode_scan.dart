
import 'package:flutter/services.dart';

class BarcodeScanner {
  static const CameraAccessDenied = 'PERMISSION_NOT_GRANTED';
  static const CameraCancel = 'CAMERA CANCEL';
  static const MethodChannel _channel =
      const MethodChannel('com.example.ghn_f/barcode_scan');
  static Future<String> scan() async => await _channel.invokeMethod('scan');
}