class FortniteMap {
  FortniteMap({required this.map});

  final String map;

  factory FortniteMap.fromJson(Map<String, dynamic> json) {
    return FortniteMap(
      map: json['images']['pois'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'map': map,
    };
  }
}
