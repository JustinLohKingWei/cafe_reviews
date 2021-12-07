import 'package:cafe_reviews/Review.dart';
import 'package:flutter/material.dart';
import 'Review_Card.dart';

void main() => runApp(MaterialApp(
  home: CafeReviews(),
));

class CafeReviews extends StatefulWidget {
  @override
  _CafeReviewsState createState() => _CafeReviewsState();
}

class _CafeReviewsState extends State<CafeReviews> {
  List<Review> reviewList = [
    Review(text:'This is a good place to eat and drink !', user :'Shel SilverSheep',stars:'5'),
    Review(text:'My wool Coffee did not arrive in 5 mins !', user :'Karen Woolson',stars:'1'),
    Review(text:'Why is everyone here a Sheep? I am very confused but the food is good', user :'Not A Sheep',stars:'4'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Recent Reviews',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'IndieFlower',
        ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: reviewList.map((review) => ReviewCard(review:review,
              delete: (){
            setState(() {
              reviewList.remove(review);
            });
          },
          )).toList(),
        ),
      ),
    );
  }
}


