import 'package:base_app/controller/camera_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    // listen true atualiza toda a widget, false permanece o ultimo estado.
    final image =
        Provider.of<CameraController>(context, listen: true).getFileImage;
    return Scaffold(
      appBar: AppBar(
        title: Text("Câmera"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: Consumer<CameraController>(
            builder: (context, value, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 0),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                        border: Border.all(color: Colors.white, width: 5),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: image.path == ''
                                ? AssetImage("lib/src/images/person.png")
                                    as ImageProvider
                                : FileImage(
                                    image,
                                  ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  image.path == ''
                      ? Text("Imagem não capturada")
                      : Image.file(image),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CameraController>(context, listen: false).captureImage();
        },
        tooltip: "Capturar",
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
