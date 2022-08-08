// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      name: json['name'] as String,
      description: json['description'] as String,
      itemType: ItemType.fromJson(json['type'] as Map<String, dynamic>),
      rarity: Rarity.fromJson(json['rarity'] as Map<String, dynamic>),
      images: Images.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'type': instance.itemType,
      'rarity': instance.rarity,
      'images': instance.images,
    };
