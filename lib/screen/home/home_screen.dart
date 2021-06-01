import 'package:base_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
