import 'package:flutter/material.dart';
import 'package:zetgram_app/src/ui/main_screen.dart';
import 'package:zetgram_app/src/ui/menyu/explore/explore_screen.dart';
import 'package:zetgram_app/src/ui/menyu/home/home_screen.dart';

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
      home: const ExploreScreen(),
    );
  }
}
