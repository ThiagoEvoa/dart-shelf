// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entry _$EntryFromJson(Map<String, dynamic> json) => Entry(
      regularPrice: json['regularPrice'] as int,
      finalPrice: json['finalPrice'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      bundle: json['bundle'] == null
          ? null
          : Bundle.fromJson(json['bundle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntryToJson(Entry instance) => <String, dynamic>{
      'regularPrice': instance.regularPrice,
      'finalPrice': instance.finalPrice,
      'bundle': instance.bundle,
      'items': instance.items,
    };
