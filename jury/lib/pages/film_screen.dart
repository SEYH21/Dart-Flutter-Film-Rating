import 'package:flutter/material.dart';
import '../consts/sabitler.dart';

class FilmScreen extends StatefulWidget {
  final ThemeData currentTh;
  const FilmScreen({required this.currentTh});

  @override
  State<FilmScreen> createState() => _FilmScreenState();
}

class _FilmScreenState extends State<FilmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.currentTh.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: widget.currentTh.appBarTheme.backgroundColor,
        iconTheme: widget.currentTh.appBarTheme.iconTheme,
        title: Text(
          "JURY",
          style: widget.currentTh.appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 36,
          ),
        ),
        actions: [
          Image.asset(
            "assets/images/jury.png",
            color: widget.currentTh.focusColor,
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ContainerView(
                  image: "assets/images/oppie.jpg",
                  movieTitle: "OPPENHEİMER",
                  movieText: Sabitler.oppieText,
                  newTheme: widget.currentTh),
              SizedBox(
                height: 40,
              ),
              ContainerView(
                  image: "assets/images/esaretin_bedeli.jpg",
                  movieTitle: "ESARETİN BEDELİ",
                  movieText: Sabitler.ebText,
                  newTheme: widget.currentTh),
              SizedBox(
                height: 40,
              ),
              ContainerView(
                  image: "assets/images/baba.jpg",
                  movieTitle: "BABA",
                  movieText: Sabitler.babaText,
                  newTheme: widget.currentTh),
              SizedBox(
                height: 40,
              ),
              ContainerView(
                  image: "assets/images/forrestG.jpg",
                  movieTitle: "FORREST GUMP",
                  movieText: Sabitler.fG,
                  newTheme: widget.currentTh),
            ],
          ),
        ),
      ),
    );
  }
}
//height: MediaQuery.of(context).size.height * 0.25,