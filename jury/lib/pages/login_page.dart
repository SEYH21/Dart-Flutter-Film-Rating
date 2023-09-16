import 'package:flutter/material.dart';
import 'package:rater/pages/film_screen.dart';

class LoginPageScreen extends StatefulWidget {
  final ThemeData darkT;
  final ThemeData lightT;

  const LoginPageScreen({required this.darkT, required this.lightT});

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

IconData _iconlight = Icons.wb_sunny;
IconData _icondark = Icons.nights_stay;

class _LoginPageScreenState extends State<LoginPageScreen> {
  bool _iconbool = false;
  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = _iconbool ? widget.darkT : widget.lightT;

    return Theme(
      data: currentTheme,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "HOŞ GELDİN",
                style: TextStyle(
                  fontSize: 45,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _iconbool = !_iconbool;
                });
              },
              icon: Icon(
                _iconbool ? _iconlight : _icondark,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FilmScreen(currentTh: currentTheme);
                    },
                  ),
                );
              },
              child: Text("Go"),
            )
          ],
        ),
      ),
    );
  }
}
