import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Responsive/responsive.dart';
import 'package:responsive_portfolio/Utils/colors.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Contactez-moi",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: Responsive.isMobile(context)
              ? Responsive.withOfScreen(context) * 0.9
              : Responsive.withOfScreen(context) * 0.7,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: shadowColor, spreadRadius: 2, blurRadius: 4),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  contactFormField("Nom*", 1, "Votre Nom"),
                  contactFormField("email*", 1, "Votre Email"),
                  contactFormField("Numéro de Téléphone", 1, "Votre Numéro"),
                  contactFormField("message", 10, "Votre Message"),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Valider",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  contactFormField(name, maxLine, hintText) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: TextField(
              maxLines: maxLine,
              decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
