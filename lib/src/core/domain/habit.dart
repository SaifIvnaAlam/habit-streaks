import 'dart:convert';

import 'package:habitstreaks/src/core/domain/base_entity.dart';

class Habit extends BaseEntity {
  String name;
  String target;
  String notificationTime;
  Habit({
    required this.name,
    required this.target,
    required this.notificationTime,
    required super.id,
  });

  @override
  Habit copyWith({
    String? id,
    String? name,
    String? target,
    String? notificationTime,
  }) {
    return Habit(
      id: id ?? super.id,
      name: name ?? this.name,
      target: target ?? this.target,
      notificationTime: notificationTime ?? this.notificationTime,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'target': target,
      'notificationTime': notificationTime,
    };
  }

  factory Habit.fromMap(Map<String, dynamic> map) {
    return Habit(
      id: map['id'] as String,
      name: map['name'] as String,
      target: map['target'] as String,
      notificationTime: map['notificationTime'] as String,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory Habit.fromJson(String source) => Habit.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Habit(name: $name, target: $target, notificationTime: $notificationTime)';

  @override
  bool operator ==(covariant Habit other) {
    if (identical(this, other)) return true;

    return other.name == name && other.target == target && other.notificationTime == notificationTime;
  }

  @override
  int get hashCode => name.hashCode ^ target.hashCode ^ notificationTime.hashCode;
}
