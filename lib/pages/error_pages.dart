import 'package:flutter/material.dart';
import 'package:kos_kosan/pages/home_page.dart';
import 'package:kos_kosan/theme.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/404.png',
            width: 300,
            height: 85.95,
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            'Where are you going?',
            style: blackText.copyWith(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Seems like the page that you were\nrequested is already gone',
            style: greyText.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            height: 50,
            width: MediaQuery.of(context).size.width - (2 * 24),
            child: RaisedButton(
              color: purpleColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (route) => false);
              },
              child: Text(
                'Back To Home',
                style: whiteText.copyWith(fontSize: 18),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
