import 'package:json_annotation/json_annotation.dart';

import 'overall.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  Data({
    required this.overall,
  });

  final Overall overall;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
