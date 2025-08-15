import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

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

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                launchUrl(Uri.parse("https://wa.me/2250102530519"));
              },
              icon: Icon(Iconsax.whatsapp, color: Colors.green, size: 40),
            ),
            SizedBox(width: 10),

            IconButton(
              onPressed: () {
                launchUrl(Uri.parse("mailto:julienouattara225@gmail.com"));
              },
              icon: Image.asset(
                "asset/utils_img/gmail-new-2020-logo-png_seeklogo-389043.png",
                height: 40,
                width: 40,
              ),
            ),
            SizedBox(width: 10),

            IconButton(
              onPressed: () {
                launchUrl(Uri.parse("https://github.com/BMSGrinch"));
              },
              icon: Image.asset(
                "asset/utils_img/github-logo-png_seeklogo-273183.png",
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
