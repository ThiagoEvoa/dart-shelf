import 'package:json_annotation/json_annotation.dart';

import 'images.dart';

part 'fortnite_map.g.dart';

@JsonSerializable()
// ignore: invalid_annotation_target
@JsonKey(name: 'map')
class FortniteMap {
  FortniteMap({
    required this.images,
  });

  final Images images;

  factory FortniteMap.fromJson(Map<String, dynamic> json) =>
      _$FortniteMapFromJson(json);

  Map<String, dynamic> toJson() => _$FortniteMapToJson(this);
}
