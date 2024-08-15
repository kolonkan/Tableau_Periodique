import 'package:flutter/material.dart';

Color getColorForGroup(String groupe) {
  switch (groupe) {
    case 'Métaux alcalins':
      return Colors.red;
    case 'Métaux alcalino-terreux':
      return Colors.orange;
    case 'Métaux de transition':
      return Colors.yellow;
    case 'Métalloïdes':
      return Colors.green;
    case 'Halogènes':
      return Colors.blue;
    case 'Gaz nobles':
      return Colors.purple;
    case 'Lanthanides':
      return const Color.fromARGB(255, 176, 39, 121);
    case 'Actinides':
      return const Color.fromARGB(255, 102, 37, 68);
    case 'Métaux pauvres':
      return const Color.fromARGB(255, 39, 176, 153);
    case 'Non-métaux':
      return const Color.fromARGB(255, 149, 176, 39);
    default:
      return Colors.transparent;
  }
}
