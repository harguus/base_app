import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraController extends ChangeNotifier {
  final picker = ImagePicker();
  late File _image = File('');

  File get getFileImage => _image;

  Future captureImage() async {
    final file = await picker.getImage(
      source: ImageSource.camera,
      maxHeight: 300,
      maxWidth: 400,
      imageQuality: 100,
    );
    print(file);
    _image = File(file!.path);
    notifyListeners();
    // return File(file!.path);
  }

  Future getImage() async {
    final file = await picker.getImage(
      source: ImageSource.gallery,
    );
    print(file);
    _image = File(file!.path);
    notifyListeners();
    // return File(file!.path);
  }
}
