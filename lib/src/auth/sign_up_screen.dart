import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  "Cadastro",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
            Container()
          ],
        ));
  }
}
