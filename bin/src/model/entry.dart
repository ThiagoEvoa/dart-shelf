import 'package:json_annotation/json_annotation.dart';

import 'bundle.dart';
import 'item.dart';

part 'entry.g.dart';

@JsonSerializable()
class Entry {
  final int regularPrice;
  final int finalPrice;
  final Bundle? bundle;
  final List<Item> items;

  Entry({
    required this.regularPrice,
    required this.finalPrice,
    required this.items,
    this.bundle,
  });

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  Map<String, dynamic> toJson() => _$EntryToJson(this);
}
