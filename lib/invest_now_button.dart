import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:the_investors_app/Products_page.dart';
import 'package:the_investors_app/profile_page.dart';

class InvestNowButton extends StatelessWidget {
  const InvestNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ProfilePage(),
          ),
        );
      },
      child: Material(
        borderRadius: BorderRadius.circular(15),
        color: Colors.green.shade900,
        child: Container(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, right: 100, left: 100),
          child: Text(
            'Invest Now',
            textAlign: TextAlign.center,
            style: GoogleFonts.kaushanScript(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
