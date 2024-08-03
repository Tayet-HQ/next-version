// File: lib/services/auction_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tayet_app_v3/models/auction.dart';

class AuctionService {
  static const String baseUrl = 'https://api.tayet3.com';

  static Future<List<Auction>> fetchAuctions() async {
    final response = await http.get(Uri.parse('$baseUrl/auctions'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> auctionsJson = data['auctions'];
      return auctionsJson.map((json) => Auction.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load auctions');
    }
  }

  static Future<bool> placeBid(
      String auctionId, int userId, double amount) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auctions/$auctionId/bid'),
      body: {
        'user_id': userId.toString(),
        'amount': amount.toString(),
      },
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Failed to place bid');
    }
  }
}
