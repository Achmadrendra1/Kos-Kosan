import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kos_kosan/Models/city.dart';
import 'package:kos_kosan/Models/spaces.dart';
import 'package:kos_kosan/Models/tips.dart';
import 'package:kos_kosan/providers/space_providers.dart';
import 'package:kos_kosan/theme.dart';
import 'package:kos_kosan/widgets/bottom_navbar.dart';
import 'package:kos_kosan/widgets/card_city.dart';
import 'package:kos_kosan/widgets/card_spaces.dart';
import 'package:kos_kosan/widgets/card_tips.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: ListView(children: [
          SizedBox(
            height: 24,
          ),
          // TITLE
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Explore Now",
              style: blackText.copyWith(fontSize: 24),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Mencari kosan yang cozy",
              style: greyText.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //SLIDER POPULAR CITIES
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Popular Cities",
              style: regulerText.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 24,
                ),
                CardCities(
                  City(
                    id: 1,
                    nama: 'Jakarta',
                    imageURL: 'assets/images/pic.png',
                    isPopular: true,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CardCities(
                  City(
                    id: 1,
                    nama: 'Bandung',
                    imageURL: 'assets/images/pic_1.png',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CardCities(
                  City(
                    id: 1,
                    nama: 'Surabaya',
                    imageURL: 'assets/images/pic_2.png',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CardCities(
                  City(
                    id: 1,
                    nama: 'Palembang',
                    imageURL: 'assets/images/palembang.png',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CardCities(
                  City(
                    id: 1,
                    nama: 'Bogor',
                    imageURL: 'assets/images/bogor.png',
                    isPopular: true,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CardCities(
                  City(
                    id: 1,
                    nama: 'Aceh',
                    imageURL: 'assets/images/aceh.png',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // Recommended Spaces
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Recommended Space",
              style: regulerText.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: FutureBuilder(
                future: spaceProvider.getRecommendedSpaces(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Space> data = snapshot.data;

                    int index = 0;

                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 30,
                          ),
                          child: SpacesCard(item),
                        );
                      }).toList(),
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              )),
          SizedBox(
            height: 30,
          ),
          //Tips And Guides
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Tips & Guidvance",
              style: regulerText.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  TipsCard(Tips(
                      id: 1,
                      title: 'City Guidelines',
                      update: '20 Apr',
                      iconURL: 'assets/images/cg_icon.png')),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(Tips(
                      id: 1,
                      title: 'Jakarta Fairship ',
                      update: '11 Dec',
                      iconURL: 'assets/images/jf_icon.png')),
                ],
              )),
          SizedBox(
            height: 80,
          ),
        ]),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - (2 * 24),
        height: 65,
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbar(
              iconURL: 'assets/images/Icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbar(
              iconURL: 'assets/images/Icon_mail_solid.png',
              isActive: false,
            ),
            BottomNavbar(
              iconURL: 'assets/images/Icon_card_solid.png',
              isActive: false,
            ),
            BottomNavbar(
              iconURL: 'assets/images/Icon_love_solid.png',
              isActive: false,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
