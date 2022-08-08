import 'package:json_annotation/json_annotation.dart';

import 'entry.dart';

part 'section.g.dart';

@JsonSerializable()
class Section {
  final List<Entry> entries;

  Section({
    required this.entries,
  });

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);

  Map<String, dynamic> toJson() => _$SectionToJson(this);
}
