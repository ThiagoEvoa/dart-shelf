import 'package:json_annotation/json_annotation.dart';

part 'battle_pass.g.dart';

@JsonSerializable()
class BattlePass {
  BattlePass({
    required this.level,
  });

  final int level;

  factory BattlePass.fromJson(Map<String, dynamic> json) =>
      _$BattlePassFromJson(json);

  Map<String, dynamic> toJson() => _$BattlePassToJson(this);
}
