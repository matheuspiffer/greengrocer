import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white.withAlpha(190)),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}
