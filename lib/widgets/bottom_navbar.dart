import 'package:flutter/material.dart';
import 'package:kos_kosan/theme.dart';

class BottomNavbar extends StatelessWidget {
  final String iconURL;
  final bool isActive;

  BottomNavbar({this.iconURL, this.isActive});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          iconURL,
          width: 26,
          height: 26,
        ),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(1000))),
              )
            : Container()
      ],
    );
  }
}
