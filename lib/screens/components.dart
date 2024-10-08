// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:tayet_app_v3/constants/Theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//widgets
import 'package:tayet_app_v3/widgets/navbar.dart';
import 'package:tayet_app_v3/widgets/drawer.dart';
import 'package:tayet_app_v3/widgets/input.dart';
import 'package:tayet_app_v3/widgets/card_horizontal.dart';
import 'package:tayet_app_v3/widgets/card_category.dart';
import 'package:tayet_app_v3/widgets/card_small.dart';
import 'package:tayet_app_v3/widgets/card_square.dart';
import 'package:tayet_app_v3/widgets/slider_product.dart';
import 'package:tayet_app_v3/widgets/photo_album.dart';

import 'package:tayet_app_v3/widgets/table_cell.dart';

final Map<String, Map<String, String>> homeCards = {
  "Ice Cream": {
    "title": "Hardly Anything Takes More Coura...",
    "image":
        "https://images.unsplash.com/photo-1539314171919-908b0cd96f03?crop=entropy&w=840&h=840&fit=crop",
    "price": "180"
  },
  "Makeup": {
    "title": "Find the cheapest deals on our range...",
    "image":
        "https://images.unsplash.com/photo-1515709980177-7a7d628c09ba?crop=entropy&w=840&h=840&fit=crop",
    "price": "220"
  },
  "Coffee": {
    "title": "Looking for Men's watches?",
    "image":
        "https://images.unsplash.com/photo-1490367532201-b9bc1dc483f6?crop=entropy&w=840&h=840&fit=crop",
    "price": "40"
  },
  "Fashion": {
    "title": "Curious Blossom Skin Care Kit.",
    "image":
        "https://images.unsplash.com/photo-1536303006682-2ee36ba49592?crop=entropy&w=840&h=840&fit=crop",
    "price": "188"
  },
  "Argon": {
    "title": "Adjust your watch to your outfit.",
    "image":
        "https://images.unsplash.com/photo-1491336477066-31156b5e4f35?crop=entropy&w=840&h=840&fit=crop",
    "price": "180"
  }
};

List<String> albumArray = [
  "https://images.unsplash.com/photo-1508264443919-15a31e1d9c1a?fit=crop&w=240&q=80",
  "https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?fit=crop&w=240&q=80",
  "https://images.unsplash.com/photo-1487376480913-24046456a727?fit=crop&w=240&q=80",
  "https://images.unsplash.com/photo-1494894194458-0174142560c0?fit=crop&w=240&q=80",
  "https://images.unsplash.com/photo-1500462918059-b1a0cb512f1d?fit=crop&w=240&q=80",
  "https://images.unsplash.com/photo-1542068829-1115f7259450?fit=crop&w=240&q=80"
];

List<Map<String, String>> imgArray = [
  {
    "img":
        "https://images.unsplash.com/photo-1501084817091-a4f3d1d19e07?fit=crop&w=2700&q=80",
    "title": "Painting Studio",
    "description":
        "You need a creative space ready for your art? We got that covered.",
    "price": "\$125",
  },
  {
    "img":
        "https://images.unsplash.com/photo-1500628550463-c8881a54d4d4?fit=crop&w=2698&q=80",
    "title": "Art Gallery",
    "description":
        "Don't forget to visit one of the coolest art galleries in town.",
    "price": "\$200",
  },
  {
    "img":
        "https://images.unsplash.com/photo-1496680392913-a0417ec1a0ad?fit=crop&w=2700&q=80",
    "title": "Video Services",
    "description":
        "Some of the best music video services someone could have for the lowest prices.",
    "price": "\$300",
  },
];

class Components extends StatefulWidget {
  const Components({super.key});

  @override
  _ComponentsState createState() => _ComponentsState();
}

class _ComponentsState extends State<Components> {
  late bool switchValueOne;
  late bool switchValueTwo;

  @override
  void initState() {
    setState(() {
      switchValueOne = true;
      switchValueTwo = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "Elements",
          tags: const [],
          getCurrentPage: Function.apply,
          searchController: TextEditingController(),
          searchOnChanged: Function.apply,

        ),
        backgroundColor: MaterialColors.bgColorScreen,
        drawer: const MaterialDrawer(currentPage: "Components"),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(right: 24, left: 24, bottom: 36),
          child: SafeArea(
            bottom: true,
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Buttons",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 34.0, right: 34.0, top: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: MaterialColors.defaultButton,
                    ),
                    onPressed: () {
                      // Respond to button press
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Padding(
                        padding: EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 12, bottom: 12),
                        child: Text("DEFAULT",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: MaterialColors.primary,
                    ),
                    onPressed: () {
                      // Respond to button press
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Padding(
                        padding: EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 12, bottom: 12),
                        child: Text("PRIMARY",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: MaterialColors.info,
                    ),
                    onPressed: () {
                      // Respond to button press
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Padding(
                        padding: EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 12, bottom: 12),
                        child: Text("INFO",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: MaterialColors.success,
                    ),
                    onPressed: () {
                      // Respond to button press
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Padding(
                        padding: EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 12, bottom: 12),
                        child: Text("SUCCESS",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: MaterialColors.warning,
                    ),
                    onPressed: () {
                      // Respond to button press
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Padding(
                        padding: EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 12, bottom: 12),
                        child: Text("WARNING",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 34.0, right: 34.0, top: 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: MaterialColors.error,
                    ),
                    onPressed: () {
                      // Respond to button press
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Padding(
                        padding: EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 12, bottom: 12),
                        child: Text("ERROR",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                color: Colors.white))),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Typography",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Heading 1",
                      style: TextStyle(fontSize: 44, color: Colors.black)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Heading 2",
                      style: TextStyle(fontSize: 38, color: Colors.black)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Heading 3",
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Heading 4",
                      style: TextStyle(fontSize: 24, color: Colors.black)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Heading 5",
                      style: TextStyle(fontSize: 21, color: Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Input(
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  prefixIcon: const Icon(Icons.remove_red_eye),
                  onTap: () {},
                  filled: true,
                  fillColor: Colors.white,
                  onChanged: (value) {},
                  controller: TextEditingController(),
                  placeholder: "Heading 6",
                  hintTextColor: MaterialColors.muted,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("This is a muted paragraph.",
                      style:
                          TextStyle(fontSize: 16, color: MaterialColors.muted)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Inputs",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Input(
                  placeholder: "Regular",
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  prefixIcon: const Icon(Icons.remove_red_eye),
                  onTap: () {},
                  filled: true,
                  fillColor: Colors.white,
                  onChanged: (value) {},
                  controller: TextEditingController(),
                  hintTextColor: MaterialColors.muted,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "theme",
                  focusedBorderColor: MaterialColors.primary,
                  enabledBorderColor: MaterialColors.primary,
                  textColor: MaterialColors.primary,
                  hintTextColor: MaterialColors.primary,
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  controller: TextEditingController(text: "Primary"),
                  fillColor: Colors.white,
                  filled: true,
                  onChanged: (value) => {
                    print(value),
                  },
                  onTap: () => print("Tap"),
                  prefixIcon: const Icon(Icons.remove_red_eye),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "info",
                  focusedBorderColor: MaterialColors.info,
                  enabledBorderColor: MaterialColors.info,
                  textColor: MaterialColors.info,
                  hintTextColor: MaterialColors.info,
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  prefixIcon: const Icon(Icons.remove_red_eye),
                  onTap: () {},
                  controller: TextEditingController(text: "Info"),
                  fillColor: Colors.white,
                  filled: true,
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "success",
                  focusedBorderColor: MaterialColors.success,
                  enabledBorderColor: MaterialColors.success,
                  textColor: MaterialColors.success,
                  hintTextColor: MaterialColors.success,
                  controller: TextEditingController(text: "Success"),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  prefixIcon: const Icon(Icons.remove_red_eye),
                  onTap: () {},
                  filled: true,
                  fillColor: Colors.white,
                  onChanged: (value) {},

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "warning",
                  borderColor: MaterialColors.warning,
                  focusedBorderColor: MaterialColors.warning,
                  enabledBorderColor: MaterialColors.warning,
                  textColor: MaterialColors.warning,
                  hintTextColor: MaterialColors.warning,
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  prefixIcon: const Icon(Icons.remove_red_eye),
                  onTap: () {},
                  filled: true,
                  fillColor: Colors.white,
                  onChanged: (value) {},
                  controller: TextEditingController(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "danger",
                  borderColor: MaterialColors.error,
                  focusedBorderColor: MaterialColors.error,
                  enabledBorderColor: MaterialColors.error,
                  textColor: MaterialColors.error,
                  hintTextColor: MaterialColors.error,
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  prefixIcon: const Icon(Icons.remove_red_eye),
                  onTap: () {},
                  filled: true,
                  fillColor: Colors.white,
                  onChanged: (value) {},
                  controller: TextEditingController(),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "icon left",
                  outlineBorder: true,
                  borderColor: MaterialColors.muted,
                  focusedBorderColor: MaterialColors.muted,
                  enabledBorderColor: MaterialColors.muted,
                  textColor: MaterialColors.muted,
                  hintTextColor: MaterialColors.muted,
                  prefixIcon: const Icon(Icons.camera_enhance),
                  suffixIcon: const Icon(Icons.camera_enhance),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  controller: TextEditingController(),
                  fillColor: Colors.white,
                  filled: true,
                  onChanged: (value) {},

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Input(
                  placeholder: "icon right",
                  outlineBorder: true,
                  borderColor: MaterialColors.muted,
                  focusedBorderColor: MaterialColors.muted,
                  enabledBorderColor: MaterialColors.muted,
                  textColor: MaterialColors.muted,
                  hintTextColor: MaterialColors.muted,
                  suffixIcon: const Icon(Icons.camera_enhance),
                  prefixIcon: const Icon(Icons.camera_enhance),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  controller: TextEditingController(),
                  fillColor: Colors.white,
                  filled: true,
                  onChanged: (value) {},

                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Switches",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Switch is ON",
                      style: TextStyle(color: Colors.black)),
                  Switch.adaptive(
                    value: switchValueOne,
                    onChanged: (bool newValue) =>
                        setState(() => switchValueOne = newValue),
                    activeColor: MaterialColors.primary,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Switch is OFF",
                      style: TextStyle(color: Colors.black)),
                  Switch.adaptive(
                    value: switchValueTwo,
                    onChanged: (bool newValue) =>
                        setState(() => switchValueTwo = newValue),
                    activeColor: MaterialColors.primary,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Navigation",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Navbar(
                  title: "Simple",
                  backButton: true,
                  searchBar: true,
                  getCurrentPage: Function.apply,
                  searchController: TextEditingController(),
                  searchOnChanged: Function.apply,
                  tags: const [],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Navbar(
                  title: "Simple",
                  searchBar: true,
                  getCurrentPage: Function.apply,
                  searchController: TextEditingController(),
                  searchOnChanged: Function.apply,
                  tags: const [],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Navbar(
                  title: "Simple",
                  searchBar: true,
                  backButton: true,
                  getCurrentPage: Function.apply,
                  searchController: TextEditingController(),
                  searchOnChanged: Function.apply,
                  tags: const [],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Navbar(
                  title: "Simple",
                  searchBar: true,
                  getCurrentPage: Function.apply,
                  searchController: TextEditingController(),
                  searchOnChanged: Function.apply,
                  tags: const [],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Table Cell",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              TableCellSettings(
                  title: "Manage Options in Settings",
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/settings');
                  }),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Social",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 4.0,
                      fillColor: MaterialColors.socialFacebook,
                      padding: const EdgeInsets.all(15.0),
                      shape: const CircleBorder(),
                      child: const Icon(FontAwesomeIcons.facebook,
                          size: 24.0, color: Colors.white),
                    ),
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 4.0,
                      fillColor: MaterialColors.socialTwitter,
                      padding: const EdgeInsets.all(15.0),
                      shape: const CircleBorder(),
                      child: const Icon(FontAwesomeIcons.twitter,
                          size: 24.0, color: Colors.white),
                    ),
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 4.0,
                      fillColor: MaterialColors.socialDribbble,
                      padding: const EdgeInsets.all(15.0),
                      shape: const CircleBorder(),
                      child: const Icon(FontAwesomeIcons.dribbble,
                          size: 24.0, color: Colors.white),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Cards",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: CardHorizontal(
                        cta: "View article",
                        title: homeCards["Ice Cream"]!['title']!,
                        img: homeCards["Ice Cream"]!['image']!,
                        tap: () {
                          Navigator.pushReplacementNamed(context, '/pro');
                        }),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardSmall(
                          cta: "View article",
                          title: homeCards["Makeup"]!['title']!,
                          img: homeCards["Makeup"]!['image']!,
                          tap: () {
                            Navigator.pushReplacementNamed(context, '/pro');
                          }),
                      CardSmall(
                          cta: "View article",
                          title: homeCards["Coffee"]!['title']!,
                          img: homeCards["Coffee"]!['image']!,
                          tap: () {
                            Navigator.pushReplacementNamed(context, '/pro');
                          })
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  CardHorizontal(
                      cta: "View article",
                      title: homeCards["Fashion"]!['title']!,
                      img: homeCards["Fashion"]!['image']!,
                      tap: () {
                        Navigator.pushReplacementNamed(context, '/pro');
                      }),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CardSquare(
                        cta: "View article",
                        title: homeCards["Argon"]!['title']!,
                        img: homeCards["Argon"]!['image']!,
                        tap: () {
                          Navigator.pushReplacementNamed(context, '/pro');
                        }),
                  ),
                  CardCategory(
                      tap: () {},
                      title: homeCards["Argon"]!['title']!,
                      img: homeCards["Argon"]!['image']!),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Album",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              PhotoAlbum(imgArray: albumArray),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Slider",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              ProductCarousel(key: UniqueKey(), imgArray: imgArray),
            ]),
          ),
        )));
  }
}
