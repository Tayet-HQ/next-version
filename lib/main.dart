import 'package:flutter/material.dart';

// screens
import 'package:tayet_app_v3/screens/home.dart';
import 'package:tayet_app_v3/screens/profile.dart';
import 'package:tayet_app_v3/screens/settings.dart';
import 'package:tayet_app_v3/screens/components.dart';
import 'package:tayet_app_v3/screens/onboarding.dart';
import 'package:tayet_app_v3/screens/pro.dart';

void main() => runApp(const MaterialKitPROFlutter());

class MaterialKitPROFlutter extends StatelessWidget {
  const MaterialKitPROFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Material Kit PRO Flutter",
        debugShowCheckedModeBanner: false,
        initialRoute: "/onboarding",
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => const Onboarding(),
          "/pro": (BuildContext context) => Pro(),
          "/home": (BuildContext context) => const Home(),
          "/components": (BuildContext context) => const Components(),
          "/profile": (BuildContext context) => Profile(),
          "/settings": (BuildContext context) => Settings(),
        });
  }
}
