import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Responsive/responsive.dart';
import 'package:responsive_portfolio/Utils/colors.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Mes compétences",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context)
                ? 10
                : Responsive.withOfScreen(context) / 4,
          ),
          child: Wrap(
            children: [
              SkillCard(
                img: "asset/utils_img/github-logo-png_seeklogo-273183.png",
              ),
              SkillCard(
                img: "asset/utils_img/laravel-logo-png_seeklogo-363134.png",
              ),
              SkillCard(
                img: "asset/utils_img/sql-logo-png_seeklogo-505247.png",
              ),
              SkillCard(
                img: "asset/utils_img/php-logo-png_seeklogo-265704.png",
              ),
              SkillCard(
                img: "asset/utils_img/flutter-logo-png_seeklogo-354671.png",
              ),
              SkillCard(
                img: "asset/utils_img/dart-logo-png_seeklogo-273023.png",
              ),
              SkillCard(
                img: "asset/utils_img/supabase-logo-png_seeklogo-435677.png",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String img;
  const SkillCard({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: boxColor, blurRadius: 6, spreadRadius: 4),
          ],
        ),
        child: SizedBox(
          height: !Responsive.isMobile(context)
              ? Responsive.withOfScreen(context) * 0.2
              : 80,
          width: !Responsive.isMobile(context)
              ? Responsive.withOfScreen(context) * 0.2
              : 80,
          child: Padding(
            padding: Responsive.isMobile(context)
                ? EdgeInsets.all(10)
                : EdgeInsets.all(30),
            child: Image.asset(img),
          ),
        ),
      ),
    );
  }
}
