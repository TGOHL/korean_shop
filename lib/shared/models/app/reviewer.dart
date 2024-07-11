// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ReviewerModel {
  final String id;
  final String name;
  final String imageUrl;
  final String desc;
  ReviewerModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.desc,
  });

  ReviewerModel copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? desc,
  }) {
    return ReviewerModel(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      desc: desc ?? this.desc,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'desc': desc,
    };
  }

  factory ReviewerModel.fromMap(Map<String, dynamic> map) {
    return ReviewerModel(
      id: map['id'] as String,
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
      desc: map['desc'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReviewerModel.fromJson(String source) => ReviewerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReviewerModel(id: $id, name: $name, imageUrl: $imageUrl, desc: $desc)';
  }

  @override
  bool operator ==(covariant ReviewerModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.imageUrl == imageUrl && other.desc == desc;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ imageUrl.hashCode ^ desc.hashCode;
  }
}
