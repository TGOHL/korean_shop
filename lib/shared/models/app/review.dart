// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ReviewModel {
  final String id;
  final String userId;
  final String productId;
  final DateTime date;
  final List<String> commments;
  final String pro;
  final String con;
  final int rate;
  final List<String> imagesUrls;
  ReviewModel({
    required this.id,
    required this.userId,
    required this.productId,
    required this.date,
    required this.commments,
    required this.pro,
    required this.con,
    required this.rate,
    required this.imagesUrls,
  });

  ReviewModel copyWith({
    String? id,
    String? userId,
    String? productId,
    DateTime? date,
    List<String>? commments,
    String? pro,
    String? con,
    int? rate,
    List<String>? imagesUrls,
  }) {
    return ReviewModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      productId: productId ?? this.productId,
      date: date ?? this.date,
      commments: commments ?? this.commments,
      pro: pro ?? this.pro,
      con: con ?? this.con,
      rate: rate ?? this.rate,
      imagesUrls: imagesUrls ?? this.imagesUrls,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'productId': productId,
      'date': date.millisecondsSinceEpoch,
      'commments': commments,
      'pro': pro,
      'con': con,
      'rate': rate,
      'imagesUrls': imagesUrls,
    };
  }

  factory ReviewModel.fromMap(Map<String, dynamic> map) {
    return ReviewModel(
      id: map['id'] as String,
      userId: map['userId'] as String,
      productId: map['productId'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      commments: List<String>.from((map['commments'] as List<String>)),
      pro: map['pro'] as String,
      con: map['con'] as String,
      rate: map['rate'] as int,
      imagesUrls: List<String>.from((map['imagesUrls'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory ReviewModel.fromJson(String source) => ReviewModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReviewModel(id: $id, userId: $userId, productId: $productId, date: $date, commments: $commments, pro: $pro, con: $con, rate: $rate, imagesUrls: $imagesUrls)';
  }

  @override
  bool operator ==(covariant ReviewModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.userId == userId &&
        other.productId == productId &&
        other.date == date &&
        listEquals(other.commments, commments) &&
        other.pro == pro &&
        other.con == con &&
        other.rate == rate &&
        listEquals(other.imagesUrls, imagesUrls);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        productId.hashCode ^
        date.hashCode ^
        commments.hashCode ^
        pro.hashCode ^
        con.hashCode ^
        rate.hashCode ^
        imagesUrls.hashCode;
  }
}
