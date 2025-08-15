import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Utils/colors.dart';
import 'package:responsive_portfolio/View/Components/topbar.dart';

class Mydrawer extends StatelessWidget {
  final ScrollController scrollController;
  const Mydrawer({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close, color: textColor),
        ),
      ),
      body: Center(child: TopBar(scrollController: scrollController)),
    );
  }
}
