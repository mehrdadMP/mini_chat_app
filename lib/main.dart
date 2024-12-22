import 'package:flutter/material.dart';
import 'package:minimal_chat_application/login_page.dart';
import 'package:minimal_chat_application/themes/light_theme.dart';
import 'package:minimal_chat_application/utils/mobile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      home: XiaomiNote9S(
        debugShowCheckedModeBanner: true,
        home: LoginPage(),
        enableStatusBar: true,
      ),
    );
  }
}
