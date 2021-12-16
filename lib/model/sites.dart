import 'package:bluegrpco/model/location.dart';
class Sites {
  final int? id;
  final String? name;
  final String? cover;
  final Location? location;
  final int? maxDepth;
  final String? siteEntry;
  final String? siteType;
  final String? visibility;
  // final double? rate;

  Sites({
    this.id,
    this.name,
    this.cover,
    this.location,
    this.maxDepth,
    this.siteEntry,
    this.siteType,
    this.visibility,
    // this.rate,
  });

  Sites.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        cover = json['cover'] as String?,
        location = (json['location'] as Map<String,dynamic>?) != null ? Location.fromJson(json['location'] as Map<String,dynamic>) : null,
        maxDepth = json['max_depth'] as int?,
        siteEntry = json['site_entry'] as String?,
        siteType = json['site_type'] as String?,
        visibility = json['visibility'] as String?
  // rate = json['rate'] as double?;
      ;
  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'cover' : cover,
    'location' : location?.toJson(),
    'max_depth' : maxDepth,
    'site_entry' : siteEntry,
    'site_type' : siteType,
    'visibility' : visibility,
    // 'rate' : rate
  };
}

