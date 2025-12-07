import 'package:flutter/material.dart';

class PageProfil extends StatelessWidget {
  const PageProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ===========================================
      // Scaffold.endDrawer : Menu latéral qui s'ouvre
      // depuis le côté droit de l'écran
      // (contrairement à drawer qui s'ouvre de gauche)
      // ===========================================
      endDrawer: Drawer(
        child: ListView(
          // ===========================================
          // ListView : Optimise l'affichage de plusieurs
          // éléments avec défilement, n'affiche que les
          // éléments visibles à l'écran pour économiser
          // la mémoire et améliorer les performances
          // ===========================================
          children: [
            // ===========================================
            // DrawerHeader : En-tête décoratif du menu
            // latéral avec différentes propriétés de
            // personnalisation (couleur, image, etc.)
            // ===========================================
            const DrawerHeader(
              // BoxDecoration : Permet de styliser l'arrière-plan
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),

            // ===========================================
            // ListTile : Élément de menu avec titre et
            // action au clic (onTap)
            // ===========================================
            ListTile(
              title: const Text("Profil"),
              // trailing : Widget affiché à droite du titre
              trailing: const Icon(Icons.chevron_right),
              // onTap : Fonction appelée quand on clique sur l'élément
              onTap: () {
                // Navigator.pushNamed : Navigation vers une route nommée
                // avec possibilité de retour à la page précédente
                Navigator.pushNamed(context, "/profil");
              },
            ),

            ListTile(
              title: const Text(
                "Accueil",
                style: TextStyle(color: Colors.blue),
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // Navigation vers la page d'accueil
                Navigator.pushNamed(context, "/acceuil");
              },
            ),

            ListTile(
              title: const Text("Paramètres"),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, "/parametres");
              },
            ),
          ],
        ),
      ),

      // ===========================================
      // AppBar : Barre d'application en haut de l'écran
      // ===========================================
      appBar: AppBar(title: const Text("Profil")),

      // ===========================================
      // Scaffold.body : Contenu principal de la page
      // ===========================================
      body: const Center(
        // const : Utilisé car aucun élément ne change ici
        // (optimisation des performances)
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Page Profil")],
        ),
      ),
    );
  }
}
// TODO Implement this library.
