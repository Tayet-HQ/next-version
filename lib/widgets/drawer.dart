import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tayet_app_v3/constants/Theme.dart';
import 'package:tayet_app_v3/widgets/drawer_tile.dart';

class Category {
  final String id;
  final String name;

  Category({required this.id, required this.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
    );
  }
}

class MaterialDrawer extends StatelessWidget {
  final String currentPage;

  const MaterialDrawer({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
              DrawerHeader(
        decoration: const BoxDecoration(color: MaterialColors.drawerHeader),
        child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0, top: 16.0),
                  child: Text("Tayet Aleeh",
              style: TextStyle(color: Colors.white, fontSize: 21)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: MaterialColors.label),
                    child: const Text("Pro",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16))),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Text("Seller",
                    style: TextStyle(
                        color: MaterialColors.muted, fontSize: 16)),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text("4.8",
                        style: TextStyle(
                            color: MaterialColors.warning,
                            fontSize: 16)),
                  ),
                  Icon(Icons.star_border,
                      color: MaterialColors.warning, size: 20)
                ],
              )
            ],
          ),
        )
                  ],
                )),
              Expanded(
        child: ListView(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      children: [
        DrawerTile(
            icon: Icons.home,
            onTap: () {
              if (currentPage != "Home") {
                Navigator.pushReplacementNamed(context, '/home');
              }
            },
            iconColor: Colors.black,
            title: "Home",
            isSelected: currentPage == "Home" ? true : false),
            FutureBuilder<List<Category>>(
              future: fetchCategories(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  return Column(
                    children: snapshot.data!.map((category) {
                      return DrawerTile(
                        icon: Icons.category,
                        onTap: () {
                          if (currentPage != category.name) {
                            Navigator.pushReplacementNamed(
                              context,
                              '/category/${category.id}',
                            );
                          }
                        },
                        iconColor: Colors.black,
                        title: category.name,
                        isSelected: currentPage == category.name ? true : false,
                      );
                    }).toList(),
                  );
                } else {
                  return const Text('No categories found');
                }
              },
            ),

        DrawerTile(
                icon: Icons.favorite,
            onTap: () {
                  if (currentPage != "Favorites") {
                    Navigator.pushReplacementNamed(context, '/favorites');
              }
            },
            iconColor: Colors.black,
                title: "Favorites",
                isSelected: currentPage == "Favorites" ? true : false),
        DrawerTile(
                icon: Icons.person,
            onTap: () {
              if (currentPage != "Profile") {
                Navigator.pushReplacementNamed(context, '/profile');
              }
            },
            iconColor: Colors.black,
            title: "Profile",
            isSelected: currentPage == "Profile" ? true : false),
        DrawerTile(
            icon: Icons.settings,
            onTap: () {
              if (currentPage != "Settings") {
                Navigator.pushReplacementNamed(context, '/settings');
              }
            },
            iconColor: Colors.black,
            title: "Settings",
            isSelected: currentPage == "Settings" ? true : false),
        DrawerTile(
            icon: Icons.exit_to_app,
            onTap: () {
              if (currentPage != "Sign In") {
                Navigator.pushReplacementNamed(context, '/signin');
              }
            },
            iconColor: Colors.black,
            title: "Sign In",
            isSelected: currentPage == "Sign In" ? true : false),
        DrawerTile(
            icon: Icons.open_in_browser,
            onTap: () {
              if (currentPage != "Sign Up") {
                Navigator.pushReplacementNamed(context, '/signup');
              }
            },
            iconColor: Colors.black,
            title: "Sign Up",
            isSelected: currentPage == "Sign Up" ? true : false),
      ],
              ))
            ]),
    );
  }

  Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse('https://api.example.com/categories'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((category) => Category.fromJson(category)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
