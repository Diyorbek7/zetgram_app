import 'package:flutter/material.dart';
import 'package:zetgram_app/src/ui/auth/auth_screen.dart';
import 'package:zetgram_app/src/ui/auth/verification/verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.blue,
      ),
      home: const VerificationScreen(),
    );
  }
}