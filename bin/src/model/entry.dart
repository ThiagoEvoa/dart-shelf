import 'item.dart';

class Entry {
  Entry({
    required this.regularPrice,
    required this.finalPrice,
    this.items,
    this.bundleName,
    this.bundleInfo,
    this.bundleImage,
  });

  final int regularPrice;
  final int finalPrice;
  final List<Item>? items;
  final String? bundleName;
  final String? bundleInfo;
  final String? bundleImage;

  factory Entry.fromJson(Map<String, dynamic> json) {
    final bundle = json['bundle'];
    final items = json['items'];
    return Entry(
      regularPrice: json['regularPrice'] as int,
      finalPrice: json['finalPrice'] as int,
      items: items == null ? null : Item.toItemList(items),
      bundleName: bundle == null ? null : bundle['name'] as String,
      bundleInfo: bundle == null ? null : bundle['info'] as String,
      bundleImage: bundle == null ? null : bundle['image'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'regularPrice': regularPrice,
      'finalPrice': finalPrice,
      'items': items,
      'bundleName': bundleName,
      'bundleInfo': bundleInfo,
      'bundleImage': bundleImage,
    };
  }

  static List<Entry> toEntryList(List<dynamic> list) {
    return list
        .map((entry) => Entry.fromJson(entry as Map<String, dynamic>))
        .toList();
  }
}
