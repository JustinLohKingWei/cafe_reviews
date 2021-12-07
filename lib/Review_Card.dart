import 'package:cafe_reviews/Review.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {

  final Review review;
  final Function delete;
  ReviewCard({this.review ,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text(review.text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: 'IndieFlower',
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(review.user,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
              fontFamily: 'IndieFlower',
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text('${review.stars} Stars given',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: 'IndieFlower',
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: delete,
          ),
        ],
      ),
    );
  }
}