import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:the_investors_app/Products_page.dart';
import 'package:the_investors_app/analytics_page.dart';
import 'package:the_investors_app/company_profile_page.dart';
import 'package:the_investors_app/drawer_bottom.dart';
import 'package:the_investors_app/drawer_header.dart';
import 'package:the_investors_app/marketing_page.dart';
import 'package:the_investors_app/staff_page.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 30),
          child: Column(
            children: [
              const MyDrawerHeader(),
              const SizedBox(
                height: 50,
              ),
              Material(
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 45,
                  color: const Color.fromARGB(255, 215, 235, 252),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CompanyProfilePage(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/drawer/Home.svg'),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Home',
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 9, 121, 249),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 45,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ProductsPage(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/drawer/Products.svg'),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Products',
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 45,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AnalysticsPage(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/drawer/Group 1786.svg'),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Analytics',
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 45,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const StaffPage(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/drawer/Staff.svg'),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Staff',
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 45,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MarketingPage(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/drawer/Group 1792.svg'),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Marketing',
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              const DrawerBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
