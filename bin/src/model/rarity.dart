import 'package:json_annotation/json_annotation.dart';

part 'rarity.g.dart';

@JsonSerializable()
class Rarity {
  Rarity({
    required this.displayValue,
  });

  final String displayValue;

  factory Rarity.fromJson(Map<String, dynamic> json) => _$RarityFromJson(json);

  Map<String, dynamic> toJson() => _$RarityToJson(this);
}
