import 'package:flutter/material.dart';

import 'package:tayet_app_v3/constants/Theme.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/t3-splash01.jpg"),
                  fit: BoxFit.cover))),
      Padding(
        padding:
            const EdgeInsets.only(top: 73, left: 32, right: 32, bottom: 16),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 48.0),
                    child: Text.rich(TextSpan(
                      text: "Material Kit",
                      style: TextStyle(color: Colors.white, fontSize: 58),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0),
                    child: Text("Fully coded Flutter widgets and screens.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w200)),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    autofocus: const bool.fromEnvironment("true"),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: MaterialColors.primary,
                        backgroundColor: MaterialColors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0))),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Padding(
                        padding: EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 12, bottom: 12),
                        child: Text("GET STARTED",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600, fontSize: 16.0))),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ]));
  }
}
