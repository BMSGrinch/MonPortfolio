import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("© Copyright 2025 - All rights reserved"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Created by: "),
            TextButton(
              onPressed: () {
                launchUrl(Uri.parse("https://wa.me/2250102530519"));
              },
              child: Text("Ouattara Kindouli Jonathan"),
            ),
          ],
        ),
      ],
    );
  }
}
