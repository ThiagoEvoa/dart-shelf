import 'package:json_annotation/json_annotation.dart';

import 'images.dart';
import 'item_type.dart';
import 'rarity.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  Item({
    required this.name,
    required this.description,
    required this.itemType,
    required this.rarity,
    required this.images,
  });

  final String name;
  final String description;
  @JsonKey(name: 'type')
  final ItemType itemType;
  final Rarity rarity;
  final Images images;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
