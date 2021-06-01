import 'package:base_app/auth/auth.dart';
import 'package:base_app/core/app_text_styles.dart';
import 'package:base_app/screen/home/home_screen.dart';
import 'package:base_app/widgets/inputText_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passworldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Login',
                    style: AppTextStyles.heading25,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    InputTextWidget(
                      label: "Email",
                      controller: _emailController,
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InputTextWidget(
                      label: "Senha",
                      controller: _passworldController,
                      obscure: "true",
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Await..."),
                      ),
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
