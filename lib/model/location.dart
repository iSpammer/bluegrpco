class Location {
  final String? lat;
  final String? long;

  Location({
    this.lat,
    this.long,
  });

  Location.fromJson(Map<String, dynamic> json)
      : lat = json['lat'] as String?,
        long = json['long'] as String?;

  Map<String, dynamic> toJson() => {
    'lat' : lat,
    'long' : long
  };
}
