import 'package:bluegrpco/model/location.dart';
import 'package:bluegrpco/model/sites.dart';

class Data {
  final int? id;
  final String? name;
  // final double? rate;
  final int? diveSites;
  final Location? location;
  final List<Sites>? sites;

  Data({
    this.id,
    this.name,
    // this.rate,
    this.diveSites,
    this.location,
    this.sites,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
  // rate = json['rate'].toString() as double?,
        diveSites = json['dive_sites'] as int?,
        location = (json['location'] as Map<String,dynamic>?) != null ? Location.fromJson(json['location'] as Map<String,dynamic>) : null,
        sites = (json['sites'] as List?)?.map((dynamic e) => Sites.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    // 'rate' : rate,
    'dive_sites' : diveSites,
    'location' : location?.toJson(),
    'sites' : sites?.map((e) => e.toJson()).toList()
  };
}
