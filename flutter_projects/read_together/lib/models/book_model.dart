import 'dart:convert';

import 'package:book_app/models/review_model.dart';

class Book {
  final String title;
  final String author;
  final String image;
  final String description;
  final List<String> categories;
  final String url;
  final String price;

  final List<Review> reviews;

  Book({
    required this.title,
    required this.author,
    required this.image,
    required this.description,
    required this.categories,
    required this.url,
    required this.price,
   
    required this.reviews,
  });



  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'author': author,
      'image': image,
      'description': description,
      'categories': categories,
      'url': url,
      'price': price,
      'reviews': reviews.map((x) => x.toMap()).toList(),
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      title: map['title'] ?? '',
      author: map['author'] ?? '',
      image: map['image'] ?? '',
      description: map['description'] ?? '',
      categories: List<String>.from(map['categories']),
      url: map['url'] ?? '',
      price: map['price'] ?? '',
      reviews: List<Review>.from(map['reviews']?.map((x) => Review.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));
}
