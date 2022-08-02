import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'stats.g.dart';

@JsonSerializable()
class Stats {
  Stats({
    required this.data,
  });

  @JsonKey(name: 'all')
  final Data data;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  Map<String, dynamic> toJson() => _$StatsToJson(this);
}
