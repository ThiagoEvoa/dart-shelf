import 'package:json_annotation/json_annotation.dart';

import 'section.dart';

part 'shop_items.g.dart';

@JsonSerializable()
class ShopItems {
  final Section featured;
  final Section daily;
  final Section specialFeatured;

  ShopItems({
    required this.featured,
    required this.daily,
    required this.specialFeatured,
  });

  factory ShopItems.fromJson(Map<String, dynamic> json) =>
      _$ShopItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ShopItemsToJson(this);
}
