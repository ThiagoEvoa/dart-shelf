// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overall.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Overall _$OverallFromJson(Map<String, dynamic> json) => Overall(
      wins: json['wins'] as int,
      kills: json['kills'] as int,
      kd: (json['kd'] as num).toDouble(),
    );

Map<String, dynamic> _$OverallToJson(Overall instance) => <String, dynamic>{
      'wins': instance.wins,
      'kills': instance.kills,
      'kd': instance.kd,
    };
