import 'entry.dart';

class ShopSection {
  ShopSection({
    required this.entries,
    this.name,
  });
  final List<Entry> entries;
  final String? name;

  factory ShopSection.fromJson(Map<String, dynamic> json) {
    final name = json['name'];

    return ShopSection(
      entries: Entry.toEntryList(json['entries']),
      name: name == null ? null : name as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'entries': entries,
      'name': name,
    };
  }
}
