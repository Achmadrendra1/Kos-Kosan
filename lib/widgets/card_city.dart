import 'package:flutter/material.dart';
import 'package:kos_kosan/Models/city.dart';
import 'package:kos_kosan/theme.dart';

class CardCities extends StatelessWidget {
  final City city;
  CardCities(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageURL,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(36))),
                          child: Center(
                            child: Image.asset(
                              'assets/images/star.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.nama,
              style: blackText.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
