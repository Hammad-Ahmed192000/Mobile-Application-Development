
import 'dart:convert';

import 'package:flutter/foundation.dart';

class MyRadioList {
  final List<MyRadio> radios;
  MyRadioList({
    required this.radios,
  });

  MyRadioList copyWith({
    List<MyRadio>? radios,
  }) {
    return MyRadioList(
      radios: radios ?? this.radios,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'radios': radios.map((x) => x.toMap()).toList(),
    };
  }

  factory MyRadioList.fromMap(Map<String, dynamic> map) {
    return MyRadioList(
      radios: List<MyRadio>.from(map['radios']?.map((x) => MyRadio.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadioList.fromJson(String source) => MyRadioList.fromMap(json.decode(source));

  @override
  String toString() => 'MyRadioList(radios: $radios)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MyRadioList &&
      listEquals(other.radios, radios);
  }

  @override
  int get hashCode => radios.hashCode;
}

class MyRadio {
  final int id;
  final int order;
  final String name;
  final String color;
  final String tagline;
  final String desc;
  final String url;
  final String category;
  final String icon;
  final String image;

  MyRadio({
    required this.id,
    required this.order,
    required this.name,
    required this.color,
    required this.tagline,
    required this.desc,
    required this.url,
    required this.category,
    required this.icon,
    required this.image,
  });

  MyRadio copyWith({
    int? id,
    int? order,
    String? name,
    String? color,
    String? tagline,
    String? desc,
    String? url,
    String? category,
    String? icon,
    String? image,
  }) {
    return MyRadio(
      id: id ?? this.id,
      order: order ?? this.order,
      name: name ?? this.name,
      color: color ?? this.color,
      tagline: tagline ?? this.tagline,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      category: category ?? this.category,
      icon: icon ?? this.icon,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'order': order,
      'name': name,
      'color': color,
      'tagline': tagline,
      'desc': desc,
      'url': url,
      'category': category,
      'icon': icon,
      'image': image,
    };
  }

  factory MyRadio.fromMap(Map<String, dynamic> map) {
    return MyRadio(
      id: map['id'],
      order: map['order'],
      name: map['name'],
      color: map['color'],
      tagline: map['tagline'],
      desc: map['desc'],
      url: map['url'],
      category: map['category'],
      icon: map['icon'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadio.fromJson(String source) =>
      MyRadio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyRadio(id: $id, order: $order, name: $name, color: $color, tagline: $tagline, desc: $desc, url: $url, category: $category, icon: $icon, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyRadio &&
        other.id == id &&
        other.order == order &&
        other.name == name &&
        other.color == color &&
        other.tagline == tagline &&
        other.desc == desc &&
        other.url == url &&
        other.category == category &&
        other.icon == icon &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        order.hashCode ^
        name.hashCode ^
        color.hashCode ^
        tagline.hashCode ^
        desc.hashCode ^
        url.hashCode ^
        category.hashCode ^
        icon.hashCode ^
        image.hashCode;
  }
}
