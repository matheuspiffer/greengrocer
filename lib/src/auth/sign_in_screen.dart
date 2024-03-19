import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    children: [
                      TextSpan(
                        text: "Green",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 3,
                        ),
                      ),
                      TextSpan(
                        text: "Grocer",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          letterSpacing: 3,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: const TextStyle(fontSize: 25, color: Colors.white),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText("Frutas"),
                        FadeAnimatedText("Verduras"),
                        FadeAnimatedText("Legumes"),
                        FadeAnimatedText("Carnes"),
                        FadeAnimatedText("Cereais"),
                        FadeAnimatedText("Laticíneos"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //Formulário
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Email
                const CustomTextField(label: 'Email', icon: Icons.email),
                //password
                const CustomTextField(
                  label: 'Password',
                  icon: Icons.lock,
                  isSecret: true,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Esqueci minha senha",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey.withAlpha(90),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text("Ou"),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey.withAlpha(90),
                        ),
                      ),
                    ],
                  ),
                ),
                // TextFormField()
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      side: const BorderSide(color: Colors.green, width: 2),
                    ),
                    child: const Text(
                      "Criar conta",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
