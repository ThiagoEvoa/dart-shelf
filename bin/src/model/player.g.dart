// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      battlePass:
          BattlePass.fromJson(json['battlePass'] as Map<String, dynamic>),
      stats: Stats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'account': instance.account,
      'battlePass': instance.battlePass,
      'stats': instance.stats,
    };
