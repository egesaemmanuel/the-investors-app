import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_investors_app/company_profile_page.dart';

import 'log_in_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.shade600,
              Colors.green.shade300,
              Color.fromARGB(204, 252, 252, 252),
              Colors.white70,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 200,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'WELCOME!\nTO THE INVESTORS CLUB',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.kaushanScript(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LogInPage(),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      'assets/button.png',
                    ),
                  ),
                ),
                Text(
                  'Tap to begin',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 200,
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
