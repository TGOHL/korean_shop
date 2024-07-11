// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ProductModel {
  final String id;
  final String title;
  final List<String> features;
  final int ratesCount;
  final double rateRatio;
  final List<String> tags;
  final String imageUrl;
  ProductModel({
    required this.id,
    required this.title,
    required this.features,
    required this.ratesCount,
    required this.rateRatio,
    required this.tags,
    required this.imageUrl,
  });

  ProductModel copyWith({
    String? id,
    String? title,
    List<String>? features,
    int? ratesCount,
    double? rateRatio,
    List<String>? tags,
    String? imageUrl,
  }) {
    return ProductModel(
      id: id ?? this.id,
      title: title ?? this.title,
      features: features ?? this.features,
      ratesCount: ratesCount ?? this.ratesCount,
      rateRatio: rateRatio ?? this.rateRatio,
      tags: tags ?? this.tags,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'features': features,
      'ratesCount': ratesCount,
      'rateRatio': rateRatio,
      'tags': tags,
      'imageUrl': imageUrl,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as String,
      title: map['title'] as String,
      features: List<String>.from((map['features'] as List<String>)),
      ratesCount: map['ratesCount'] as int,
      rateRatio: map['rateRatio'] as double,
      tags: List<String>.from((map['tags'] as List<String>)),
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, title: $title, features: $features, ratesCount: $ratesCount, rateRatio: $rateRatio, tags: $tags, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        listEquals(other.features, features) &&
        other.ratesCount == ratesCount &&
        other.rateRatio == rateRatio &&
        listEquals(other.tags, tags) &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ features.hashCode ^ ratesCount.hashCode ^ rateRatio.hashCode ^ tags.hashCode ^ imageUrl.hashCode;
  }
}
