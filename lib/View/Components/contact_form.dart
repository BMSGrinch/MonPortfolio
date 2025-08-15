import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Responsive/responsive.dart';
import 'package:responsive_portfolio/Utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();

  void _sendMail() async {
    final subject = Uri.encodeComponent("");
    final body = Uri.encodeComponent(
      "Nom: ${_nameController.text}\n"
      "Email: ${_emailController.text}\n"
      "Téléphone: ${_phoneController.text}\n"
      "Message: ${_messageController.text}",
    );
    final mailUrl =
        "mailto:julienouattara225@gmail.com?subject=$subject&body=$body";
    if (await canLaunchUrl(Uri.parse(mailUrl))) {
      await launchUrl(Uri.parse(mailUrl), mode: LaunchMode.externalApplication);
    }
  }

  void _sendWhatsApp() async {
    final text = Uri.encodeComponent(
      "Nom: ${_nameController.text}\n"
      "Email: ${_emailController.text}\n"
      "Téléphone: ${_phoneController.text}\n"
      "Message: ${_messageController.text}",
    );
    final whatsappUrl = "https://wa.me/2250102530519?text=$text";
    if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
      await launchUrl(
        Uri.parse(whatsappUrl),
        mode: LaunchMode.externalApplication,
      );
    }
  }

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
                  _contactFormField("Nom*", 1, "Votre Nom", _nameController),
                  _contactFormField(
                    "Email*",
                    1,
                    "Votre Email",
                    _emailController,
                  ),
                  _contactFormField(
                    "Numéro de Téléphone*",
                    1,
                    "Votre Numéro",
                    _phoneController,
                  ),
                  _contactFormField(
                    "Message*",
                    10,
                    "Votre Message",
                    _messageController,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: _sendMail, // Pour email
                          child: Text(
                            "Envoyer par Email",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          onPressed: _sendWhatsApp, // Pour WhatsApp
                          child: Text(
                            "Envoyer par WhatsApp",
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

  Widget _contactFormField(
    String name,
    int maxLine,
    String hintText,
    TextEditingController controller,
  ) {
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
              controller: controller,
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
