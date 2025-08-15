import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Responsive/responsive.dart';
import 'package:responsive_portfolio/Utils/colors.dart';
import 'package:responsive_portfolio/View/Components/about_me.dart';
import 'package:responsive_portfolio/View/Components/contact_form.dart';
import 'package:responsive_portfolio/View/Components/footer.dart';
import 'package:responsive_portfolio/View/Components/mydrawer.dart';
import 'package:responsive_portfolio/View/Components/profile_and_intro.dart';
import 'package:responsive_portfolio/View/Components/recent_project.dart';
import 'package:responsive_portfolio/View/Components/top_skill.dart';
import 'package:responsive_portfolio/View/Components/topbar.dart';

class DevelopperPorfolio extends StatelessWidget {
  DevelopperPorfolio({super.key});
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ouattara Jonathan",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        toolbarHeight: 70,
        actions: [
          Responsive.isMobile(context)
              ? Padding(
                  padding: EdgeInsets.only(right: 13),
                  child: IconButton(
                    onPressed: () {
                      _globalKey.currentState!.openEndDrawer();
                    },
                    icon: Icon(Icons.menu, color: textColor, size: 35),
                  ),
                )
              : TopBar(scrollController: _scrollController),
        ],
      ),
      endDrawer: Responsive.isMobile(context)
          ? Mydrawer(scrollController: _scrollController)
          : null,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  ProfileAndIntro(),
                  SizedBox(height: Responsive.isMobile(context) ? 40 : 0),
                  AboutMe(),
                  SizedBox(height: 55),
                  TopSkills(),
                  SizedBox(height: 55),
                  RecentProject(),
                  SizedBox(height: 55),
                  ContactForm(),
                  SizedBox(height: 55),
                  Footer(),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
