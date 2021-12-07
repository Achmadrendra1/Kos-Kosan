import 'package:flutter/material.dart';
import 'package:kos_kosan/Models/spaces.dart';
import 'package:kos_kosan/pages/detail_page.dart';
import 'package:kos_kosan/theme.dart';

class SpacesCard extends StatelessWidget {
  final Space space;

  SpacesCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsPage(space)));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.network(
                    space.imageUrl,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/star.png',
                            width: 15,
                            height: 15,
                          ),
                          Text(
                            ' ${space.rating}/5',
                            style: whiteText.copyWith(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              space.name,
              style: blackText.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 2,
            ),
            Text.rich(TextSpan(
                text: '\$ ${space.price}',
                style: purpleText.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                      text: ' / month', style: greyText.copyWith(fontSize: 16))
                ])),
            SizedBox(
              height: 16,
            ),
            Text(
              '${space.city}, ${space.country}',
              style: greyText.copyWith(fontSize: 14),
            )
          ])
        ],
      ),
    );
  }
}
