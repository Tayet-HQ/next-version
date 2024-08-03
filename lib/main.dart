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
  const MaterialKitPROFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tayet Aleeh App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/onboarding",
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => const Onboarding(),
          "/pro": (BuildContext context) => const Pro(),
          "/home": (BuildContext context) => const Home(),
          "/components": (BuildContext context) => const Components(),
          "/profile": (BuildContext context) => const Profile(),
          "/settings": (BuildContext context) => const Settings(),
        });
  }
}
