import 'package:flutter/material.dart';
import 'package:kos_kosan/theme.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  RatingItem({this.index, this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating ? 'assets/images/star.png' : 'assets/images/star_die.png',
      width: 20,
    );
  }
}
