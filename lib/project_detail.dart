import 'package:flutter/material.dart';
import 'package:the_investors_app/horizotaltechview.dart';

import 'package:the_investors_app/project_class.dart';
import 'package:the_investors_app/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final Project project;
  const ProjectDetail({required this.project, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    BackButton(
                      onPressed: (() => Navigator.pop(context)),
                    ),
                    Text(
                      project.name,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        project.year.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  // add space using sizedbox of height 25
                  height: 15.0,
                ),
                Hero(
                  tag: project.name,
                  child: ClipRRect(
                    // add default image
                    borderRadius: BorderRadius.circular(15.0),
                    child: Responsive(
                      mobile: Image.network(
                        project.imgUrl,
                        fit: BoxFit.cover,
                      ),
                      tablet: Image.network(
                        project.imgUrl,
                        fit: BoxFit.cover,
                      ),
                      desktop: SizedBox(
                        height: 350,
                        child: Image.network(
                          project.imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  //add space using sized box
                  height: 15.0,
                ),
                const Text(
                  'About the Project',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                HorizontalTechView(
                    techList:
                        project.technologiesUsed ?? ['Technologies used ']),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  //add project description
                  project.description,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
