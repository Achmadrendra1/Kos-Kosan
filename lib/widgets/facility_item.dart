import 'package:flutter/material.dart';
import 'package:kos_kosan/theme.dart';

class FacilityItem extends StatelessWidget {
  final String nama;
  final String iconURL;
  final int jumlah;

  FacilityItem({this.iconURL, this.jumlah, this.nama});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          iconURL,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(TextSpan(
            text: '$jumlah',
            style: purpleText.copyWith(fontSize: 16),
            children: [
              TextSpan(text: ' $nama', style: greyText.copyWith(fontSize: 16))
            ])),
      ],
    );
  }
}
