import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_5/color.dart';


class MyElement extends StatefulWidget {
  final String symbole;
  final String numeroAtomique;
  final String groupe;
  final String nom;
  final String masseAtomique;
  final String periode;
  final String pointDeFusion;
  final String pointDebullition;
  final String decouverte;
  final String histoire;
  final String configurationElectronique;

  const MyElement({
    required this.symbole,
    required this.numeroAtomique,
    required this.groupe,
    required this.nom,
    required this.masseAtomique,
    required this.periode,
    required this.pointDeFusion,
    required this.pointDebullition,
    required this.decouverte,
    required this.histoire,
    required this.configurationElectronique,
  });

  @override
  State<MyElement> createState() => _MyElementState();
}

class _MyElementState extends State<MyElement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.nom,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  children: [
                    Text("Numero Atomique",
                     style: TextStyle(fontSize: 8),),
                    SizedBox(height: 40),
                    Text("Nom",
                     style: TextStyle(fontSize: 8),),
                  ],
                ),
                Container(
                  width: 140, // Largeur fixe
                  height: 130, // Hauteur fixe
                  child: Card(
                    elevation: 35,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    color: getColorForGroup(widget.groupe),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(widget.numeroAtomique),
                            ),
                            const SizedBox(width: 30),
                            Text(widget.masseAtomique),
                          ],
                        ),
                        Center(
                          child: Text(
                            widget.symbole,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 1),
                        Center(child: Text(widget.nom,
                        style: TextStyle(fontSize: 8),)),
                        Center(child: Text(widget.groupe,
                         style: TextStyle(fontSize: 8),)),
                      ],
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Text("Masse Atomique",
                    style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(height: 30),
                     Text("Symbole",
                     style: TextStyle(fontSize: 10),),
                    SizedBox(height: 28),
                     Text("Groupe",
                     style: TextStyle(fontSize: 10),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "PERIODE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.periode,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const Text(
                                    "POINT DE FUSION",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      widget.pointDeFusion,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const Text(
                                    "DECOUVERTE",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        widget.decouverte,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "HISTOIRE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                         
                                
                                child: Text(
                                  widget.histoire,
                                    
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 10,
                                  ),
                                ),
                              
                            ),
                          ],
                        ),
                      ),
                     
                    
                    ],
                  ),
                ],
              ),
            ),
             Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              "POINT D'EBULLITION",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.pointDebullition,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 10
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            
                            const Text(
                              "CONFIGURATION ELECTRONIQUE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.configurationElectronique,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 10
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}
