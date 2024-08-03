import 'package:flutter/material.dart';

import 'package:tayet_app_v3/constants/Theme.dart';

//widgets
import 'package:tayet_app_v3/widgets/navbar.dart';
import 'package:tayet_app_v3/widgets/table_cell.dart';

import 'package:tayet_app_v3/widgets/drawer.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  _SettingsState createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<Settings> {
  late bool switchValueOne;
  late bool switchValueTwo;

  @override
  void initState() {
    super.initState();
    switchValueOne = true;
    switchValueTwo = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "Settings",
          searchBar: false,
          categoryOne: "",
          categoryTwo: "",
          tags: const [],
          getCurrentPage: Function.apply,
          searchController: TextEditingController(),
          searchOnChanged: Function.apply,
        ),
        drawer: const MaterialDrawer(currentPage: "Settings"),
        backgroundColor: MaterialColors.bgColorScreen,
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
            child: Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text("Recommended Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text("These are the most important settings",
                        style: TextStyle(
                            color: MaterialColors.caption, fontSize: 14)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Use FaceID to signin",
                        style: TextStyle(color: Colors.black)),
                    Switch.adaptive(
                      value: switchValueOne,
                      onChanged: (bool newValue) =>
                          setState(() => switchValueOne = newValue),
                      activeColor: MaterialColors.primary,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Auto-Lock security",
                        style: TextStyle(color: Colors.black)),
                    Switch.adaptive(
                      value: switchValueTwo,
                      onChanged: (bool newValue) =>
                          setState(() => switchValueTwo = newValue),
                      activeColor: MaterialColors.primary,
                    )
                  ],
                ),
                TableCellSettings(
                    title: "Notifications",
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/pro');
                    }),
                const SizedBox(height: 36.0),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text("Payment Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text("These are also important settings",
                        style: TextStyle(color: MaterialColors.caption)),
                  ),
                ),
                TableCellSettings(
                  title: "Manage Payment Options",
                  onTap: () {},
                ),
                TableCellSettings(
                  title: "Manage Gift Cards",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 36.0,
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text("Privacy Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text("Third most important settings",
                        style: TextStyle(color: MaterialColors.caption)),
                  ),
                ),
                TableCellSettings(
                    title: "User Agreement",
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/pro');
                    }),
                TableCellSettings(
                    title: "Privacy",
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/pro');
                    }),
                TableCellSettings(
                    title: "About",
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/pro');
                    }),
              ],
            ),
          ),
        ));
  }
}
