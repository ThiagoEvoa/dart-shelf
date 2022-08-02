import 'package:json_annotation/json_annotation.dart';

part 'overall.g.dart';

@JsonSerializable()
class Overall {
  Overall({
    required this.wins,
    required this.kills,
    required this.kd,
  });

  final int wins;
  final int kills;
  final double kd;

  factory Overall.fromJson(Map<String, dynamic> json) =>
      _$OverallFromJson(json);

  Map<String, dynamic> toJson() => _$OverallToJson(this);
}
