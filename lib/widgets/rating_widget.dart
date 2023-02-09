import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
    required this.ratingScore,
    this.totalReviews = 0,
    this.showReviews = false,
  }) : super(key: key);

  final double ratingScore;
  final int totalReviews;
  final bool showReviews;

  @override
  Widget build(BuildContext context) {
    const size = 15.0;
    return Row(
      children: [
        for (int i = 1; i <= 5; i++)
          Container(
            margin: const EdgeInsets.all(1),
            height: size,
            width: size,
            decoration: BoxDecoration(
                color: i <= ratingScore ? Colors.yellow : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.yellow,
                  width: 2,
                )),
          ),
        const SizedBox(height: 10),
        Text(
          ' $ratingScore',
          style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
