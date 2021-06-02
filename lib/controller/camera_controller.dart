import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Camera {
  final picker = ImagePicker();

  Future captureImage() async {
    final file = await picker.getImage(
      source: ImageSource.camera,
      maxHeight: 300,
      maxWidth: 400,
      imageQuality: 100,
    );
    return File(file!.path);
  }

  Future getImage() async {
    final file = await picker.getImage(
      source: ImageSource.gallery,
    );
    return File(file!.path);
  }
}
