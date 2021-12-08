import 'package:flutter/material.dart';
import './page/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String title = "Profile";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
        dividerColor: Colors.black,
        backgroundColor: Color(0xffb003060),
        accentColor: Color(0xffbC78E53),
      ),
      title: title,
      home: ProfilePage(),
    );
  }
}
