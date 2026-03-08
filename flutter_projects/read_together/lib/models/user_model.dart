import 'dart:convert';

import 'package:book_app/models/book_model.dart';

class User {
  final String id;
  final String? name;
  final String email;
  final String? password;
  final String? phone;
  final String? address;
  final List<Book>? purchases;
  final List<Book>? readList;
  final List<Book>? whishList;

  User({
    required this.id,
    this.name,
    required this.email,
    this.password,
    this.phone,
    this.address,
    this.purchases,
    this.readList,
    this.whishList,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'address': address,
      'purchases': purchases?.toMap(),
      'readList': readList?.toMap(),
      'whishList': whishList?.toMap(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'],
      email: map['email'] ?? '',
      password: map['password'],
      phone: map['phone'],
      address: map['address'],
      purchases: map['purchases'] != null ? List.fromMap(map['purchases']) : null,
      readList: map['readList'] != null ? List.fromMap(map['readList']) : null,
      whishList: map['whishList'] != null ? List.fromMap(map['whishList']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
