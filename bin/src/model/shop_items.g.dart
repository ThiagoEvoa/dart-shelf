// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopItems _$ShopItemsFromJson(Map<String, dynamic> json) => ShopItems(
      featured: Section.fromJson(json['featured'] as Map<String, dynamic>),
      daily: Section.fromJson(json['daily'] as Map<String, dynamic>),
      specialFeatured:
          Section.fromJson(json['specialFeatured'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShopItemsToJson(ShopItems instance) => <String, dynamic>{
      'featured': instance.featured,
      'daily': instance.daily,
      'specialFeatured': instance.specialFeatured,
    };
