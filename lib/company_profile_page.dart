import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_investors_app/drawer_menu.dart';
import 'package:the_investors_app/home_body.dart';
import 'package:the_investors_app/invest_now_button.dart';

class CompanyProfilePage extends StatelessWidget {
  const CompanyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset(
              'assets/header/Hamburger menu.png',
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.green.shade900,
        elevation: 1,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Investment App",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.kaushanScript(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 25,
              width: 25,
              child: Image.asset(
                'assets/header/search.png',
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Stack(children: [
              Badge(
                position: BadgePosition.custom(start: 23),
                child: Image.asset(
                  'assets/header/Group 580.png',
                ),
              ),
            ]),
            const SizedBox(
              width: 20,
            ),
            Stack(children: [
              Badge(
                badgeStyle: const BadgeStyle(badgeColor: Colors.green),
                position: BadgePosition.custom(start: 23),
                child: Image.asset(
                  'assets/header/profile.png',
                ),
              ),
            ]),
          ],
        ),
      ),
      body: const HomeBody(),
      floatingActionButton: InvestNowButton(),
    );
  }
}
