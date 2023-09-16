import 'package:flutter/material.dart';
import 'package:rater/pages/rating_bar.dart';

class RatingScreen extends StatefulWidget {
  final String? filmName;
  final String filmImage;
  final String filmText;
  final ThemeData currentTheme;
  RatingScreen(
      {required this.filmImage,
      required this.filmName,
      required this.filmText,
      required this.currentTheme});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: widget.currentTheme.scaffoldBackgroundColor,
        appBar: AppBar(
          iconTheme: widget.currentTheme.appBarTheme.iconTheme,
          backgroundColor: widget.currentTheme.appBarTheme.backgroundColor,
          centerTitle: true,
          title: Text(
            "${widget.filmName}",
            style: widget.currentTheme.appBarTheme.titleTextStyle,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 20,
            ),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Image(
                      image: AssetImage(
                        widget.filmImage,
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              widget.filmText,
                              style: widget.currentTheme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 4.0, right: 4.0, top: 10.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "OY VER",
                              style: widget.currentTheme.textTheme.bodyLarge,
                            ),
                            RatingBarScreen(),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
