import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 206, 21),
        foregroundColor: Colors.white,

        title: const Text("App INGC ESMT"),
        centerTitle: true,

        // ===========================================
        // AppBar.leading : Widget affiché au début
        // de l'AppBar (généralement à gauche)
        // ===========================================
        leading: IconButton(
          // IconButton : Icône interactive qui répond aux clics
          // (contrairement à Icon qui est statique)
          icon: const Icon(Icons.person),
          tooltip: 'Profil', // Texte d'information au survol
          // onPressed : Définit l'action à exécuter quand
          // le bouton est pressé
          onPressed: () {
            // Navigation vers la page de profil
            Navigator.pushNamed(context, "/profil");
          },
        ),

        // ===========================================
        // AppBar.actions : Widgets affichés à la fin
        // de l'AppBar (généralement à droite)
        // ===========================================
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Rechercher',
            onPressed: () {
              print("Page Recherche");
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Paramètres',
            onPressed: () {
              // Navigation vers la page des paramètres
              // Note : Correction nécessaire : "/parametres" au lieu de "/parametre"
              Navigator.pushNamed(context, "/parametre");
            },
          ),
        ],
      ),

      body: const Center(
        // const : Optimisation car le contenu ne change pas
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Bienvenue !!"), Text("Ceci est la page d'accueil")],
        ),
      ),
    );
  }
}
