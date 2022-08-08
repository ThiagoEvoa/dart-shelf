import 'package:json_annotation/json_annotation.dart';

part 'bundle.g.dart';

@JsonSerializable()
class Bundle {
  Bundle({
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);

  Map<String, dynamic> toJson() => _$BundleToJson(this);
}
