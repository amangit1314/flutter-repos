import 'dart:convert';

class Review {
  final String id;
  final String name;
  final String review;
  final String date;
  final String rating;

  Review({
    required this.id,
    required this.name,
    required this.review,
    required this.date,
    required this.rating,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'review': review,
      'date': date,
      'rating': rating,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      review: map['review'] ?? '',
      date: map['date'] ?? '',
      rating: map['rating'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source));
}
