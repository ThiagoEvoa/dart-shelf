import 'images.dart';

class Item {
  Item({
    required this.name,
    required this.description,
    required this.type,
    required this.rarity,
    required this.images,
    required this.added,
    this.introduction,
    this.set,
  });

  final String name;
  final String description;
  final String type;
  final String rarity;
  final Images images;
  final String added;
  final String? introduction;
  final String? set;

  factory Item.fromJson(Map<String, dynamic> json) {
    final set = json['set'];
    final introduction = json['introduction'];

    return Item(
      name: json['name'] as String,
      description: json['description'] as String,
      type: json['type']['displayValue'] as String,
      rarity: json['rarity']['displayValue'] as String,
      images: Images.fromJson(json['images']),
      added: json['added'] as String,
      introduction:
          introduction == null ? null : introduction['text'] as String,
      set: set == null ? null : set['text'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'type': type,
      'rarity': rarity,
      'introduction': introduction,
      'images': images,
      'added': added,
      'set': set,
    };
  }

  static List<Item> toItemList(List<dynamic> list) {
    return list.map((e) => Item.fromJson(e as Map<String, dynamic>)).toList();
  }
}
