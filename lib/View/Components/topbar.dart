import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Responsive/responsive.dart';
import 'package:responsive_portfolio/Utils/colors.dart';

class TopBar extends StatelessWidget {
  final ScrollController scrollController;
  const TopBar({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return isMobile
        ? Column(
            children: topBarData(scrollController, context, isMobile: true),
          )
        : Row(children: topBarData(scrollController, context));
  }

  List<Widget> topBarData(
    ScrollController scrollController,
    BuildContext context, {
    bool isMobile = false,
  }) {
    int scrollDuration = isMobile ? 800 : 500;
    return [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: isMobile ? 20 : 0,
        ),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              200,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.bounceIn,
            );
          },
          child: Text(
            "A Propos",
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: isMobile ? 20 : 0,
        ),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 850 : 850,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.bounceIn,
            );
          },
          child: Text(
            "Skills",
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: isMobile ? 20 : 0,
        ),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 1300 : 2300,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.bounceIn,
            );
          },
          child: Text(
            "Projet",
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: isMobile ? 20 : 0,
        ),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 3630 : 3300,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.bounceIn,
            );
          },
          child: Text(
            "Contact",
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    ];
  }
}
