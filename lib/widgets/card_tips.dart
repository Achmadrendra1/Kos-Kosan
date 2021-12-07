import 'package:flutter/material.dart';
import 'package:kos_kosan/theme.dart';
import 'package:kos_kosan/Models/tips.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.iconURL,
          width: 80,
          height: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackText.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Update ${tips.update}',
              style: greyText.copyWith(fontSize: 14),
            )
          ],
        ),
        Spacer(),
        IconButton(
            icon: Icon(Icons.chevron_right),
            iconSize: 24,
            color: greyColor,
            onPressed: () {})
      ],
    );
  }
}
