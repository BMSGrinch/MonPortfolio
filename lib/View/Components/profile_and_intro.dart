import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Responsive/responsive.dart';

class ProfileAndIntro extends StatelessWidget {
  const ProfileAndIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: Responsive.isMobile(context)
                  ? Responsive.withOfScreen(context)
                  : Responsive.withOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Image.asset("asset/utils_img/Bms_grinch.png"),
            ),

            SizedBox(
              width: Responsive.isMobile(context)
                  ? Responsive.withOfScreen(context)
                  : Responsive.withOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Center(
                child: SizedBox(
                  height: 270,
                  width: Responsive.isMobile(context)
                      ? Responsive.withOfScreen(context) * 0.85
                      : 450,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          spreadRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Bonjour !",
                            style: TextStyle(
                              fontSize: Responsive.isMobile(context) ? 36 : 40,
                              color: Colors.red,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            "Ouattara Kindouli Jonathan,\nDéveloppeur web/mobile fullstack\nSpécialisé dans le développement d'applications Flutter.\nAidez-moi à trouver du taf (promis je code bien 😄)",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
