// File: lib/models/auction.dart

class Auction {
  final int id;
  final String title;
  final String image;
  final double currentBid;
  final DateTime endTime;

  Auction({
    required this.id,
    required this.title,
    required this.image,
    required this.currentBid,
    required this.endTime,
  });

  factory Auction.fromJson(Map<String, dynamic> json) {
    return Auction(
      id: json['id'],
      title: json['title'] ?? 'Untitled Auction',
      image: json['image'] ?? 'https://via.placeholder.com/300',
      currentBid: json['current_bid']?.toDouble() ?? 0.0,
      endTime: DateTime.parse(json['end_time']),
    );
  }
}
