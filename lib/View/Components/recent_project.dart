import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Models/project_model.dart';
import 'package:responsive_portfolio/Responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class RecentProject extends StatelessWidget {
  const RecentProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Mes Derniers Projets",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Wrap(
          children: [
            ProjectCard(
              projectModel: projects[0],
              url: "https://github.com/BMSGrinch/animal_memory",
            ),
            ProjectCard(
              projectModel: projects[1],
              url: "https://github.com/BMSGrinch/ecomtest.github.io",
            ),
            ProjectCard(
              projectModel: projects[2],
              url: "https://github.com/BMSGrinch/Appvitrineflutter",
            ),
          ],
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final ProjectModel projectModel;
  final String url;
  const ProjectCard({super.key, required this.projectModel, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 4),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          width: Responsive.isMobile(context)
              ? Responsive.withOfScreen(context) * 0.9
              : Responsive.withOfScreen(context) / 4,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(projectModel.imgURL),
              ),
              Text(
                projectModel.projectName,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  projectModel.description!,
                  style: TextStyle(
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 6),
                child: TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse(url));
                  },
                  child: Text(
                    "Appuyez pour voir les détails",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
