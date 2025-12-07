import 'package:flutter/material.dart';

class PageParametres extends StatelessWidget {
  const PageParametres({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ===========================================
      // Scaffold.body : const Center car aucun changement
      // n'est prévu dans cette partie de l'interface
      // ===========================================
      body: Center(
        child: Text("Page Paramètres"),
      ),
    );
  }
}
