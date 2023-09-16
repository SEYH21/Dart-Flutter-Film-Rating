import 'package:flutter/material.dart';
import 'package:rater/pages/login_page.dart';
import 'package:rater/theme/themes.dart';

void main() {
  runApp(JuryApp());
}

class JuryApp extends StatefulWidget {
  const JuryApp({super.key});

  @override
  State<JuryApp> createState() => _JuryAppState();
}

class _JuryAppState extends State<JuryApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPageScreen(
            darkT: ThemeManager.darkTheme, lightT: ThemeManager.lightTheme),
      ),
    );
  }
}
