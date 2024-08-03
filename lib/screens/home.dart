// File: lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:tayet_app_v3/constants/Theme.dart';
import 'package:tayet_app_v3/models/auction.dart';
import 'package:tayet_app_v3/services/auction_service.dart';
import 'package:tayet_app_v3/widgets/navbar.dart';
import 'package:tayet_app_v3/widgets/card_horizontal.dart';
import 'package:tayet_app_v3/widgets/card_small.dart';
import 'package:tayet_app_v3/widgets/card_square.dart';
import 'package:tayet_app_v3/widgets/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Auction> auctions = [];
  bool isLoading = false;
  String selectedCategory = 'All';

  @override
  void initState() {
    super.initState();
    fetchAuctions();
  }

  Future<void> fetchAuctions() async {
    setState(() {
      isLoading = true;
    });

    try {
      final fetchedAuctions = await AuctionService.fetchAuctions();
      setState(() {
        auctions = fetchedAuctions;
        isLoading = false;
      });
    } catch (e) {
      print('Error fetching auctions: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        title: "Tayet Auctions",
        searchBar: true,
        categoryOne: "Categories",
        categoryTwo: "Best Deals",
        tags: const [],
        getCurrentPage: () {},
        searchController: TextEditingController(),
        searchOnChanged: (String value) {},
      ),
      backgroundColor: MaterialColors.bgColorScreen,
      drawer: const MaterialDrawer(currentPage: "Home"),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: fetchAuctions,
              child: Container(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (auctions.isNotEmpty) ...[
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: CardHorizontal(
                            cta: "View Auction",
                            title: auctions[0].title,
                            img: auctions[0].image,
                            tap: () {
                              // Navigate to auction details
                            },
                          ),
                        ),
                      ],
                      const SizedBox(height: 8.0),
                      if (auctions.length > 2)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardSmall(
                              cta: "View Auction",
                              title: auctions[1].title,
                              img: auctions[1].image,
                              tap: () {
                                // Navigate to auction details
                              },
                            ),
                            CardSmall(
                              cta: "View Auction",
                              title: auctions[2].title,
                              img: auctions[2].image,
                              tap: () {
                                // Navigate to auction details
                              },
                            ),
                          ],
                        ),
                      const SizedBox(height: 8.0),
                      if (auctions.length > 3)
                        CardHorizontal(
                          cta: "View Auction",
                          title: auctions[3].title,
                          img: auctions[3].image,
                          tap: () {
                            // Navigate to auction details
                          },
                        ),
                      const SizedBox(height: 8.0),
                      if (auctions.length > 4)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 32.0),
                          child: CardSquare(
                            cta: "View Auction",
                            title: auctions[4].title,
                            img: auctions[4].image,
                            tap: () {
                              // Navigate to auction details
                            },
                          ),
                        ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount:
                            auctions.length > 5 ? auctions.length - 5 : 0,
                        itemBuilder: (context, index) {
                          final auction = auctions[index + 5];
                          return ListTile(
                            leading: Image.network(
                              auction.image,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            title: Text(auction.title),
                            subtitle: Text(
                                'Current Bid: \$${auction.currentBid.toStringAsFixed(2)}'),
                            trailing: Text(
                                'Ends: ${_formatEndTime(auction.endTime)}'),
                            onTap: () {
                              // Navigate to auction details
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  String _formatEndTime(DateTime endTime) {
    final now = DateTime.now();
    final difference = endTime.difference(now);

    if (difference.inDays > 0) {
      return '${difference.inDays}d';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m';
    } else {
      return '${difference.inSeconds}s';
    }
  }
}
