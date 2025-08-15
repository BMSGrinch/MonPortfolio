import 'package:flutter/widgets.dart';

class Responsive {
  //pour vérifier si l'écran est <= à 600 px
  //s'applique si on est sur mobile
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }

  //s'applique sur pc ou web prend toute la largeur de l'écran
  static double withOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //Méthode statique pour renvoyer la hauteur de l'écran
  static double heightOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
