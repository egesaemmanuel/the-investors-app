import 'package:flutter/material.dart';

import 'package:the_investors_app/project_card.dart';
import 'package:the_investors_app/projects.dart';
import 'package:the_investors_app/responsive.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  Widget mobileTabletBuilder(double height) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: projects.length,
          itemBuilder: ((context, index) {
            return ProjectCard(
              project: projects[index],
            );
          })),
    );
  }

  Widget desktopBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: projects.length,
      itemBuilder: ((context, index) {
        return ProjectCard(project: projects[index]);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25.0,
                  ),
                  Responsive(
                    mobile: mobileTabletBuilder(350),
                    tablet: mobileTabletBuilder(450),
                    desktop: desktopBuilder(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    '''Comfort Homes is a one-stop shop offering investment solutions to you.We offer a robust investment experience that you will apprecite.''',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
