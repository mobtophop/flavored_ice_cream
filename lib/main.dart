import 'package:flavored_ice_cream/flavored_values/flavors.dart';
import 'package:flavored_ice_cream/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String packageName = (await PackageInfo.fromPlatform()).packageName;

  runApp(MyApp(packageName: packageName));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.packageName});

  final String packageName;

  @override
  Widget build(BuildContext context) {
    String flavor = packageName.split(".").last;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        flavor: Flavors.getFlavorFromPackage(flavor),
      ),
    );
  }
}
