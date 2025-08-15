import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Responsive/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 40 : 80,
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              "A Propos De Moi",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Bonjour je suis Jonathan Ouattara, un developpeur Flutter passionné par la création d'applications mobiles innovantes.J'ai une solide expérience dans le développement d'applications Flutter et je suis toujours à la recherche de noiveaux défis pour améliorer mes compétences.",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? 18 : 20),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
