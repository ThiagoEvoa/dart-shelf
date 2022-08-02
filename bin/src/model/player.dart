import 'package:json_annotation/json_annotation.dart';

import 'account.dart';
import 'battle_pass.dart';
import 'stats.dart';

part 'player.g.dart';

@JsonSerializable()
class Player {
  Player({
    required this.account,
    required this.battlePass,
    required this.stats,
  });

  final Account account;
  final BattlePass battlePass;
  final Stats stats;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
