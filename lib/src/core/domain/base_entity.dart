// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BaseEntity {
  String id;
  BaseEntity({
    required this.id,
  });

  BaseEntity copyWith({
    String? id,
  }) {
    return BaseEntity(
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory BaseEntity.fromMap(Map<String, dynamic> map) {
    return BaseEntity(
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BaseEntity.fromJson(String source) => BaseEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'BaseEntity(id: $id)';

  @override
  bool operator ==(covariant BaseEntity other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
