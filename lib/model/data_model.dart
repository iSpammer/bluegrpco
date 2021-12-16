import 'package:bluegrpco/model/data.dart';

class DataModel {

  final List<Data>? data;

  DataModel({
    this.data,
  });

  DataModel.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'data' : data?.map((e) => e.toJson()).toList()
  };
}


