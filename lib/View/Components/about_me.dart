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
            "Bonjour, je suis Jonathan Ouattara, un développeur Flutter passionné par la création d'applications mobiles innovantes.J'ai une solide expérience dans le développement d'applications Flutter et je suis toujours à la recherche de nouveaux défis pour améliorer mes compétences.N'hésitez pas à me contacter pour discuter de vos projets ou simplement échanger sur la tech !",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? 18 : 20),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
