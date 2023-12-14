enum Flavors {
  vanilla,
  pistachio,
  chocolate,
  berries;

  static Flavors getFlavorFromPackage(String packageName) {
    switch (packageName) {
      case "pistachio":
        return Flavors.pistachio;
      case "chocolate":
        return Flavors.chocolate;
      case "berries":
        return Flavors.berries;
      default:
        return Flavors.vanilla;
    }
  }
}
