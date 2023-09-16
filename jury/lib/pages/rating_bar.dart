import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarScreen extends StatefulWidget {
  const RatingBarScreen({super.key});

  @override
  State<RatingBarScreen> createState() => _RatingBarScreenState();
}

class _RatingBarScreenState extends State<RatingBarScreen> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          RatingBar.builder(
            unratedColor: Colors.grey,
            minRating: 1,
            allowHalfRating: true,
            maxRating: 5,
            updateOnDrag: true,
            itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
            onRatingUpdate: (
              rating,
            ) =>
                setState(
              () {
                this.rating = rating;
              },
            ),
          ),
          Text(
            " $rating",
            style: TextStyle(
                color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
