import 'package:flutter/material.dart';
import 'package:app_ingc2/pages/page_acceuil.dart';
import 'package:app_ingc2/pages/page_profile.dart';
import 'package:app_ingc2/pages/page_parametres.dart';

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Titre de l'application qui s'affiche dans le gestionnaire d'applications
      title: "Première Application",

      // Page affichée au démarrage de l'application
      home: const PageAccueil(),

      // =========================================================
      // MaterialApp.routes : Définit toutes les pages disponibles
      // dans l'application avec des noms uniques
      // =========================================================
      routes: {
        "/acceuil": (context) =>
            const PageAccueil(), // Route vers la page d'accueil
        "/profil": (context) =>
            const PageProfil(), // Route vers la page de profil
        "/parametres": (context) =>
            const PageParametres(), // Route vers la page des paramètres
      },

      // =====================================================
      // MaterialApp.onUnknownRoute : S'exécute automatiquement
      // lorsque l'utilisateur tente d'accéder à une route qui
      // n'existe pas dans la déclaration des routes ci-dessus
      // Redirige vers la page d'accueil par défaut
      // =====================================================
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const PageAccueil());
      },
    );
  }
}
