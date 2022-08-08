import 'package:json_annotation/json_annotation.dart';

part 'item_type.g.dart';

@JsonSerializable()
class ItemType {
  final String displayValue;

  ItemType({
    required this.displayValue,
  });

  factory ItemType.fromJson(Map<String, dynamic> json) =>
      _$ItemTypeFromJson(json);

  Map<String, dynamic> toJson() => _$ItemTypeToJson(this);
}
