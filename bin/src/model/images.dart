class Images {
  Images({
    this.smallIcon,
    this.icon,
    this.featured,
  });

  final String? smallIcon;
  final String? icon;
  final String? featured;

  factory Images.fromJson(Map<String, dynamic> json) {
    final smallIcon = json['smallIcon'];
    final featured = json['featured'];
    final icon = json['icon'];

    return Images(
      smallIcon: smallIcon == null ? null : smallIcon as String,
      icon: icon == null ? null : icon as String,
      featured: featured == null ? null : featured as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'smallIcon': smallIcon,
      'featured': featured,
      'icon': icon,
    };
  }
}
