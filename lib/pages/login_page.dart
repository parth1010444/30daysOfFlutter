import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "This is Login Page",
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
    );
  }
}
