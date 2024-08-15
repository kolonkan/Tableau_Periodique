import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_5/color.dart';
import 'package:flutter_application_5/Elements/element.dart';
import 'package:flutter_application_5/my_element.dart';
class Tableau extends StatefulWidget {
  const Tableau({Key? key}) : super(key: key);

  @override
  State<Tableau> createState() => _TableauState();
}

class _TableauState extends State<Tableau> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              "PERIODIC TABLE OF ELEMENTS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Chemical Group Block",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Obtenez la largeur de l'écran
          double screenWidth = constraints.maxWidth;

          // Définir le nombre de colonnes en fonction de la taille de l'écran
          int crossAxisCount;
          if (screenWidth < 600) {
            crossAxisCount = 9; // Pour les petits écrans comme les téléphones
          } else if (screenWidth < 900) {
            crossAxisCount = 12; // Pour les tablettes
          } else {
            crossAxisCount = 15; // Pour les grands écrans
          }

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount, // Nombre de colonnes dynamique
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: elementsChimiques.length,
            itemBuilder: (context, index) {
              var currentelement = elementsChimiques[index];
              return createelement(
                symbole: currentelement.symbole,
                numeroAtomique: currentelement.numeroAtomique,
                groupe: currentelement.groupe,
                nom: currentelement.nom,
                masseAtomique: currentelement.masseAtomique,
                periode: currentelement.periode,
                pointDeFusion: currentelement.pointDeFusion,
                pointDebullition: currentelement.pointDebullition,
                decouverte: currentelement.decouverte,
                histoire: currentelement.histoire,
                configurationElectronique: currentelement.configurationElectronique,
              );
            },
          );
        },
      ),
    );
  }

  Widget createelement({
    required String symbole,
    required String numeroAtomique,
    required String groupe,
    required String nom,
    required String masseAtomique,
    required String periode,
    required String pointDeFusion,
    required String pointDebullition,
    required String decouverte,
    required String histoire,
    required String configurationElectronique,
  }) {
    var elevation = 6.0;
    Color border = Colors.black;
    Color couleur = Colors.black;

   

    return GestureDetector(
      onTap: () {
        Get.to(MyElement(
          symbole: symbole,
          numeroAtomique: numeroAtomique,
          groupe: groupe,
          nom: nom,
          masseAtomique: masseAtomique,
          periode: periode,
          pointDeFusion: pointDeFusion,
          pointDebullition: pointDebullition,
          decouverte: decouverte,
          histoire: histoire,
          configurationElectronique: configurationElectronique,
        ));
      },
      child: Card(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(
            color: border,
            width: 2,
          ),
        ),
        color: getColorForGroup(groupe),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                numeroAtomique,
                style: TextStyle(color: couleur),
              ),
            ),
            Expanded(
              child: Text(
                symbole,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
