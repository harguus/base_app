import 'package:base_app/controller/camera_controller.dart';
import 'package:base_app/core/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CameraController(),
          ),
        ],
        child: App(),
      ),
    );
