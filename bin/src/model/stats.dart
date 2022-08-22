class Stats {
  Stats({
    required this.wins,
    required this.deaths,
    required this.kills,
    required this.kd,
  });

  final int wins;
  final int deaths;
  final int kills;
  final double kd;

  factory Stats.fromJson(Map<String, dynamic> json) {
    final overallStats = json['data']['stats']['all']['overall'];

    return Stats(
      wins: overallStats['wins'] as int,
      deaths: overallStats['deaths'] as int,
      kills: overallStats['kills'] as int,
      kd: overallStats['kd'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'wins': wins,
      'deaths': deaths,
      'kills': kills,
      'kd': kd,
    };
  }
}
