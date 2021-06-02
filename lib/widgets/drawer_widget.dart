import 'package:base_app/auth/auth.dart';
import 'package:base_app/core/app_text_styles.dart';
import 'package:base_app/screen/camera/camera_screen.dart';
import 'package:base_app/screen/home/home_screen.dart';
import 'package:base_app/screen/login/login_screen.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text('Topo'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CameraScreen(),
                ),
              );
            },
            child: Row(
              children: [
                Icon(Icons.camera),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Câmera",
                  style: AppTextStyles.bodyBold,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => {
                if (Auth().Logout())
                  {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    ),
                  }
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
