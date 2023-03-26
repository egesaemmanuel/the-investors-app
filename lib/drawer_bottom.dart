import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerBottom extends StatelessWidget {
  const DrawerBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.only(left: 20),
        height: 45,
        child: Row(
          children: [
            SvgPicture.asset('assets/drawer/Settings.svg'),
            const SizedBox(
              width: 20,
            ),
            Text(
              'Settings',
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 20),
        height: 45,
        child: Row(
          children: [
            SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('assets/drawer/help.png')),
            const SizedBox(
              width: 20,
            ),
            Text(
              'Help & Support',
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      Text(
        'Powered by',
        style: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 50,
        width: 200,
        child: Image.asset(
          'assets/logo.png',
        ),
      )
    ]);
  }
}
