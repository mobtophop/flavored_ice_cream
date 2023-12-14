import 'dart:ui';

import 'package:flavored_ice_cream/flavored_values/flavors.dart';

abstract class FlavoredColors {
  static Color ballColor0(Flavors flavor) {
    switch (flavor) {
      case Flavors.vanilla:
        return const Color.fromARGB(255, 225, 219, 132);
      case Flavors.pistachio:
        return const Color.fromARGB(255, 143, 220, 115);
      case Flavors.chocolate:
        return const Color.fromARGB(255, 121, 82, 36);
      case Flavors.berries:
        return const Color.fromARGB(255, 217, 34, 34);
    }
  }

  static Color ballColor1(Flavors flavor) {
    switch (flavor) {
      case Flavors.vanilla:
        return const Color.fromARGB(255, 255, 249, 202);
      case Flavors.pistachio:
        return const Color.fromARGB(255, 87, 164, 64);
      case Flavors.chocolate:
        return const Color.fromARGB(255, 68, 50, 26);
      case Flavors.berries:
        return const Color.fromARGB(255, 211, 114, 114);
    }
  }

  static Color ballColor2(Flavors flavor) {
    switch (flavor) {
      case Flavors.vanilla:
        return const Color.fromARGB(255, 246, 210, 114);
      case Flavors.pistachio:
        return const Color.fromARGB(255, 189, 239, 175);
      case Flavors.chocolate:
        return const Color.fromARGB(255, 189, 139, 76);
      case Flavors.berries:
        return const Color.fromARGB(255, 134, 53, 194);
    }
  }
}
