import 'shop_section.dart';

class Shop {
  final ShopSection featured;
  final ShopSection daily;
  final ShopSection specialFeatured;

  Shop({
    required this.featured,
    required this.daily,
    required this.specialFeatured,
  });

  factory Shop.fromJson(Map<String, dynamic> json) {
    final data = json['data'];

    return Shop(
      featured: ShopSection.fromJson(data['featured']),
      daily: ShopSection.fromJson(data['daily']),
      specialFeatured: ShopSection.fromJson(data['specialFeatured']),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'featured': featured,
      'daily': daily,
      'specialFeatured': specialFeatured,
    };
  }
}
